#include "defs.h"
#include "memory.h"
#include "slub.h"

// 将链接器中的_end符号声明为一个数组名(视为一个标签，不会被分配空间)比声明为变量(不直观不准确)再取地址或直接声明为指针(可能会引发解析问题)更好
// 数组名在C中会被解释为地址，不需要额外的取地址操作，而指针声明可能需要指针变量本身存储在某个地址，这可能与链接脚本中的符号定义不符。
extern char _end[];  // 内核代码结束处

// 定义匿名结构体直接声明全局变量kmem，牺牲了结构体的可重用性
struct {
  struct page *freelist;
} kmem;

extern struct kmem_cache *cache_chain;

static uint64 total;

void memoryinit() {
  uint64 total_memory = 0;
  // 解析loader传递的内存信息
  struct e820_entry *p = (struct e820_entry *)MEMINFO;
  while (p->type > 0 && p->type < 5) {
      // printf("Memory: %lx\t - %lx\t, type = %d\n", p->addr, p->addr + p->size, p->type);
      if (p->type == 1) {
          total_memory += p->size;
          void* start = (void*)_end > (void*)P2V(p->addr) ? (void*)_end : (void*)P2V(p->addr);
          void* end = (void*)P2V((p->addr + p->size)) < (void*)KERNELSTOP ? (void*)P2V((p->addr + p->size)) : (void*)KERNELSTOP;
          if (start < end) {
            // 初始化空闲页链表
            freerange(start, end);
          }
      }
      p++;
  }
  printf("Total memory: %dMB\n", total_memory / 1024 / 1024);
  // 初始化slab缓冲区
  kmem_cache_init(FACTOR, MIN_SIZE, MAX_SIZE);
  // 清除PML4中的低地址一致性映射(0 -> 0)
  uint64* CR3 = get_cr3();
  *((uint64*)P2V(CR3)) = 0UL;
  flush_tlb();
}

// 通过对start和end之间的线性地址的每一页调用kfree进行初始化
void freerange(void *start, void *end)
{
  // p为指向一个字符————即字节地址的指针，64位
  char *p;
  // 起始地址4KB对齐
  p = (char*)PGROUNDUP((uint64)start);
  printf("Free memory range: %lx - %lx\n", p, end);
  // 初始化内核空间
  for(; p + PGSIZE <= (char*)end; p += PGSIZE)
    kfree(p);
}

// Free the page of linear memory pointed at by va,
// which normally should have been returned by a
// call to kalloc().  (The exception is when
// initializing the allocator; see kinit above.)
void
kfree(void *va)
{
  struct page *r;
  // 如果指针pa指向的地址没有4096对齐或不在空闲物理内存区内，报错
  if(((uint64)va % PGSIZE) != 0 || (char*)va < _end)
    panic("kfree");
  // Fill with junk to catch dangling refs.
  memset(va, 1, PGSIZE);
  // 以页面首地址实例化一个run结构指针，即在此处开头实例化一个run结构
  // 则r指向每个空闲页面的首地址
  r = (struct page*)va;

  // acquire(&kmem.lock);
  // 将页面加入空闲页链表
  r->next = kmem.freelist;
  kmem.freelist = r;
  // release(&kmem.lock);
}

// Allocate one 4096-byte page of physical memory.
// Returns a pointer that the kernel can use.
// Returns 0 if the memory cannot be allocated.
void *
kalloc(void)
{
  struct page *r;

  // acquire(&kmem.lock);
  // 返回指向run结构的指针，该指针指向页面首地址，在首地址处存在一个run结构
  r = kmem.freelist;
  if(r)
    kmem.freelist = r->next;
  // release(&kmem.lock);

  if(r)
    memset((char*)r, 0, PGSIZE); // clear page
  return (void*)r;
}

// 动态内存分配/回收（空闲页/空闲堆/slub）
void
mfree(void *p, int size)
{
  if(size > 1024)
  {
    kfree(p);
    return;
  }
  else
  {
    struct kmem_cache *cc = cache_chain;
    while(cc != 0)
    {
      if(cc->size < size && cc->next->size >= size)
      {
        memset(p, 0, size);
        kmem_cache_free(cc->next, p);
        break;
      }
      else
        cc = cc->next;
    }
  }
}

// 分配成功返回块首地址，失败返回0
void* malloc(int size)
{
  // 如果大于1024，则直接分配整页
  if(size > 1024)
  {
    void* addr = kalloc();
    return addr;
  }
  // 否则小块从slab中分配
  else
  {
    struct kmem_cache *cc = cache_chain;
    while(cc != 0)
    {
      if(cc->size < size && cc->next->size >= size)
      {
        void *addr = kmem_cache_alloc(cc->next);
        memset(addr, 0, cc->next->size);
        return addr;
      }
      else
        cc = cc->next;
    }
    // 如果分配失败
    return (void*)0;
  }
}

// // 以空闲堆链表的形式管理分配内存

// // 用来将释放的空闲块插入空闲链表
// void hfree(void *ap)
// {
//   // 如果指针pa指向的地址没有4096对齐或不在空闲物理内存区内，报错
//   if((uint64)ap < HEAPADDR || (uint64)ap >= PHYSTOP)
//     panic("mfree");
//   Header *bp, *p;
//   // ap为该块有效载荷的首地址，减一则是该块真正的首地址(header的地址)
//   bp = (Header*)ap - 1;
//   memset(ap, 1, (bp->s.size - sizeof(Header)));
//   // acquire(&hmem.lock);
//   // 在空闲块的循环链表中找到bp按地址大小顺序应放入的位置
//   for(p = free; !(bp > p && bp < p->s.next); p = p->s.next)
//   {
//     if(p->s.next == p)
//       break;
//     // 当遍历到了链表末尾与开头交界处，如果发现bp应该是放在链表最开头或最末尾，则退出遍历
//     // 只按照for循环中的终止条件是无法发现这种情况的
//     if(p >= p->s.next && (bp > p || bp < p->s.next))
//       break;
//   }
//   // if(total != 0)
//   // {
//   //   printf("The new free memory begin at: %p, size: \n", ap);
//   //   printf("The total usable heap size: %d\n", total+bp->s.size);
//   // }
//   total += bp->s.size;
//   // 若bp和下一个空闲块连续，则合并
//   if((char*)bp + bp->s.size == (char*)p->s.next)
//   {
//     bp->s.size += p->s.next->s.size;
//     bp->s.next = p->s.next->s.next;
//   } 
//   else
//     bp->s.next = p->s.next;

//   // 若bp和上一个空闲块连续，则合并
//   if((char*)p + p->s.size == (char*)bp)
//   {
//     p->s.size += bp->s.size;
//     p->s.next = bp->s.next;
//   } 
//   else
//     p->s.next = bp;
  
//   // 令freep指向刚合并的块(的上一个)
//   free = p;
//   // release(&hmem.lock);
// }

// // 返回一个所需大小的空闲块的有效载荷部分(Header之后)首地址
// void* halloc(uint64 nbytes)
// {
//   Header *p, *prevp;
//   uint64 n;

//   // acquire(&hmem.lock);
//   n = nbytes + sizeof(Header);
//   // 每次遍历链表前的赋值：从free开始
//   if((prevp = free) == 0)
//   {
//     // heap的next指针指向自身
//     hmem.heap->s.next = prevp;
//   }
//   // 遍历空闲块链表
//   for(p = prevp->s.next; ; prevp = p, p = p->s.next)
//   {
//     // 如果存在可分配大小
//     if(p->s.size >= n)
//     {
//       // 如果大小刚好
//       if(p->s.size == n)
//         prevp->s.next = p->s.next;
//       else 
//       {
//         // 否则直接拆分，直接从后面取出一小块并创建头部
//         p->s.size -= n;
//         char *temp = (char*)p;
//         temp += p->s.size;
//         p = (Header*)temp;
//         p->s.size = n;
//       }
//       total -= n;
//       p += 1;
//       // printf("The new alloc memory begin at: %p\n", p);
//       // printf("The block size: %d\n", nbytes);
//       // 下次从freep开始遍历
//       free = prevp;
//       // release(&hmem.lock);

//       if(p)
//         memset((char*)p, 5, nbytes); // fill with junk
//       // p指向的是内存块的头部，所以返回 (p + 1) 指向的是内存块的有效载荷部分
//       return (void*)p;
//     }
//     // 遍历一圈(还未找到)
//     if(p == free)
//     {
//       // release(&hmem.lock);
//       panic("heap!");
//       return 0;
//     }
//   }
// }
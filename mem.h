#ifndef __MEM_H_
#define __MEM_H_

#define PAGE_SHIFT      (12)
#define PAGE_SIZE       (1 << PAGE_SHIFT)
#define STACK_BASE      (8*1024*1024)

#ifndef __ASSEMBLER__
void memzero(void* start, void* end);
#endif

#endif /* __MEM_H_*/

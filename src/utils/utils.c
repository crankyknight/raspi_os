#include "utils.h"
#include "printf.h"

void delay(uint32 cycles){
    asm volatile("loop : subs %0, %0, #1\n\t"
                  "bne loop"
                  : "=r"(cycles)
                  :
                  : "cc");
}

int get_core_id(){
    int core_id;
    asm volatile("mrs %0, mpidr_el1\n\t"
                 "and %0, %0, #0xFF\n\t"
                  :"=r"(core_id));
    return core_id;
}

int get_el(){
    int el;
    asm volatile("mrs %0, CurrentEL\n\t"
                 "lsr %0, %0, #2\n\t"
                  :"=r"(el));
    return el;
}

inline void mmio_write(uint32 reg, uint32 data)
{
    *(volatile uint32*) reg = data;
}
 
inline uint32 mmio_read(uint32 reg)
{
    return *(volatile uint32*) reg;
}

void dump_regs()
{
    int i;
    uint64 regs[40];
    asm("mov %0, x0" : "=r"(regs[0]));
    asm("mov %0, x1" : "=r"(regs[1]));
    asm("mov %0, x2" : "=r"(regs[2]));
    asm("mov %0, x3" : "=r"(regs[3]));
    asm("mov %0, x4" : "=r"(regs[4]));
    asm("mov %0, x5" : "=r"(regs[5]));
    asm("mov %0, x6" : "=r"(regs[6]));
    asm("mov %0, x7" : "=r"(regs[7]));
    asm("mov %0, x8" : "=r"(regs[8]));
    asm("mov %0, x9" : "=r"(regs[9]));
    asm("mov %0, x10" : "=r"(regs[10]));
    asm("mov %0, x11" : "=r"(regs[11]));
    asm("mov %0, x12" : "=r"(regs[12]));
    asm("mov %0, x13" : "=r"(regs[13]));
    asm("mov %0, x14" : "=r"(regs[14]));
    asm("mov %0, x15" : "=r"(regs[15]));
    asm("mov %0, x16" : "=r"(regs[16]));
    asm("mov %0, x17" : "=r"(regs[17]));
    asm("mov %0, x18" : "=r"(regs[18]));
    asm("mov %0, x19" : "=r"(regs[19]));
    asm("mov %0, x20" : "=r"(regs[20]));
    asm("mov %0, x21" : "=r"(regs[21]));
    asm("mov %0, x22" : "=r"(regs[22]));
    asm("mov %0, x23" : "=r"(regs[23]));
    asm("mov %0, x24" : "=r"(regs[24]));
    asm("mov %0, x25" : "=r"(regs[25]));
    asm("mov %0, x26" : "=r"(regs[26]));
    asm("mov %0, x27" : "=r"(regs[27]));
    asm("mov %0, x28" : "=r"(regs[28]));
    asm("mov %0, x29" : "=r"(regs[29]));
    asm("mov %0, x30" : "=r"(regs[30]));
    asm("mov %0, sp" : "=r"(regs[31]));
    asm("mrs %0, esr_el1" : "=r"(regs[32]));
    asm("mrs %0, elr_el1" : "=r"(regs[33]));
    asm("mrs %0, far_el1" : "=r"(regs[34]));
    printf("Hit exception! Dumping regs...\n");
    for(i=0; i<35;){
        printf("x%d: 0x%016x    ", i, regs[i]);
        i++;
        if(i%4 == 0) printf("\n");
    }

    return;
}

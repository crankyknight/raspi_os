#include "utils.h"

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

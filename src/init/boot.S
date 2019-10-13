#include "mem.h"
.section ".text.boot"
.extern el1_setup

.globl _boot_entry
_boot_entry:
    mrs x0, mpidr_el1
    and x0, x0, #0xFF
    cbnz x0, halt_proc

    /*Zero out bss section */
    adr x0, __bss_start
    adr x1, __bss_end
    sub x1, x1, x0
    bl   memzero

    bl el1_setup
    b   kernel_main

halt_proc:
    wfe
    b halt_proc




build/raspios.elf:     file format elf64-littleaarch64

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  0 .text         000008ec  0000000000000000  0000000000000000  00010000  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .rodata.str1.8 000000b8  00000000000008f0  00000000000008f0  000108f0  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  2 .data         00000018  00000000000009a8  00000000000009a8  000109a8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
  3 .got          00000028  00000000000009c0  00000000000009c0  000109c0  2**3
                  CONTENTS, ALLOC, LOAD, DATA
  4 .got.plt      00000018  00000000000009e8  00000000000009e8  000109e8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
  5 .bss          00000010  0000000000000a00  0000000000000a00  00010a00  2**3
                  ALLOC
  6 .debug_info   0000115a  0000000000000000  0000000000000000  00010a00  2**0
                  CONTENTS, READONLY, DEBUGGING
  7 .debug_abbrev 0000069b  0000000000000000  0000000000000000  00011b5a  2**0
                  CONTENTS, READONLY, DEBUGGING
  8 .debug_aranges 00000180  0000000000000000  0000000000000000  00012200  2**4
                  CONTENTS, READONLY, DEBUGGING
  9 .debug_macro  00000a54  0000000000000000  0000000000000000  00012380  2**0
                  CONTENTS, READONLY, DEBUGGING
 10 .debug_line   000009f9  0000000000000000  0000000000000000  00012dd4  2**0
                  CONTENTS, READONLY, DEBUGGING
 11 .debug_str    00003049  0000000000000000  0000000000000000  000137cd  2**0
                  CONTENTS, READONLY, DEBUGGING
 12 .comment      00000055  0000000000000000  0000000000000000  00016816  2**0
                  CONTENTS, READONLY
 13 .debug_frame  00000368  0000000000000000  0000000000000000  00016870  2**3
                  CONTENTS, READONLY, DEBUGGING
 14 .debug_loc    000013ad  0000000000000000  0000000000000000  00016bd8  2**0
                  CONTENTS, READONLY, DEBUGGING
 15 .debug_ranges 00000170  0000000000000000  0000000000000000  00017f85  2**0
                  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

0000000000000000 <_boot_entry>:
.section ".text.boot"
.extern el1_setup

.globl _boot_entry
_boot_entry:
    mrs x0, mpidr_el1
   0:	d53800a0 	mrs	x0, mpidr_el1
    and x0, x0, #0xFF
   4:	92401c00 	and	x0, x0, #0xff
    cbnz x0, halt_proc
   8:	b50000e0 	cbnz	x0, 24 <halt_proc>

    /*Zero out bss section */
    adr x0, __bss_start
   c:	10004fa0 	adr	x0, a00 <__bss_start>
    adr x1, __bss_end
  10:	10005001 	adr	x1, a10 <__bss_end>
    sub x1, x1, x0
  14:	cb000021 	sub	x1, x1, x0
    bl   memzero
  18:	94000064 	bl	1a8 <memzero>

    bl el1_setup
  1c:	94000017 	bl	78 <el1_setup>
    b   kernel_main
  20:	14000004 	b	30 <kernel_main>

0000000000000024 <halt_proc>:

halt_proc:
    wfe
  24:	d503205f 	wfe
    b halt_proc
  28:	17ffffff 	b	24 <halt_proc>
  2c:	00000000 	.inst	0x00000000 ; undefined

0000000000000030 <kernel_main>:
#include "uart.h"
#include "printf.h"
#include "utils.h"

void kernel_main()
{
  30:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  34:	910003fd 	mov	x29, sp
  38:	f9000bf3 	str	x19, [sp, #16]
    uart_init();
  3c:	94000061 	bl	1c0 <uart_init>
    init_printf(0, putc);
  40:	90000001 	adrp	x1, 0 <_boot_entry>
  44:	d2800000 	mov	x0, #0x0                   	// #0
  48:	f944ec21 	ldr	x1, [x1, #2520]
  4c:	940001dd 	bl	7c0 <init_printf>
    printf("Core %d up at Exception level %d\n", get_core_id(), get_el());
  50:	94000220 	bl	8d0 <get_core_id>
  54:	2a0003f3 	mov	w19, w0
  58:	94000222 	bl	8e0 <get_el>
  5c:	2a0003e2 	mov	w2, w0
  60:	90000003 	adrp	x3, 0 <_boot_entry>
  64:	2a1303e1 	mov	w1, w19
  68:	9123c060 	add	x0, x3, #0x8f0
  6c:	940001dd 	bl	7e0 <tfp_printf>
    while(1){
        //if(uart_read_available()){
        //    uart_write('\n');
        //    uart_write(uart_read());
        //}
    }
  70:	14000000 	b	70 <kernel_main+0x40>
  74:	00000000 	.inst	0x00000000 ; undefined

0000000000000078 <el1_setup>:
#include <mem.h>
.section ".text"
.global el1_setup

el1_setup :
    ldr x0, =(SCTLR_EL1_EE_LITTLE | SCTLR_EL1_E0E_LITTLE |\
  78:	58000180 	ldr	x0, a8 <el1_setup+0x30>
           SCTLR_EL1_MMU_DIS | SCTLR_EL1_DCACHE_DIS | SCTLR_EL1_ICACHE_DIS |\
           SCTLR_EL1_STACK_ALIGN_CHK_EN | SCTLR_EL1_ALIGN_CHK_EN)
    msr SCTLR_EL1, x0
  7c:	d5181000 	msr	sctlr_el1, x0

    ldr x0, =(SCR_EL3_RW_AARCH64 | SCR_EL3_NS)
  80:	58000180 	ldr	x0, b0 <el1_setup+0x38>
    msr SCR_EL3, x0
  84:	d51e1100 	msr	scr_el3, x0

    ldr x0, =(HCR_EL2_RW_AARCH64)
  88:	58000180 	ldr	x0, b8 <el1_setup+0x40>
    msr HCR_EL2, x0 
  8c:	d51c1100 	msr	hcr_el2, x0

    /* Copy Link register to elr */
    msr ELR_EL3, lr
  90:	d51e403e 	msr	elr_el3, x30

   /* Setup EL1 status word */ 
    ldr x0, =(SPSR_MODE_EL1h | SPSR_MASK_EXCEPTIONS)
  94:	58000160 	ldr	x0, c0 <el1_setup+0x48>
    msr SPSR_EL3, x0
  98:	d51e4000 	msr	spsr_el3, x0

    /*As of now, we do not return to EL3. Overwrite stack of EL3 */
    ldr x0, =STACK_BASE
  9c:	58000160 	ldr	x0, c8 <el1_setup+0x50>
    msr SP_EL1, x0
  a0:	d51c4100 	msr	sp_el1, x0

    /* Go to EL1. Stack already uses EL1 SP */
    eret
  a4:	d69f03e0 	eret
  a8:	00000016 	.word	0x00000016
  ac:	00000000 	.word	0x00000000
  b0:	00000401 	.word	0x00000401
  b4:	00000000 	.word	0x00000000
  b8:	80000000 	.word	0x80000000
  bc:	00000000 	.word	0x00000000
  c0:	000001c5 	.word	0x000001c5
  c4:	00000000 	.word	0x00000000
  c8:	00800000 	.word	0x00800000
  cc:	00000000 	.word	0x00000000

00000000000000d0 <irq_handler>:
#include "printf.h"
void irq_handler(void) {
  d0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    printf("IRQ HANDLER\n");
  d4:	90000000 	adrp	x0, 0 <_boot_entry>
  d8:	91246000 	add	x0, x0, #0x918
void irq_handler(void) {
  dc:	910003fd 	mov	x29, sp
    printf("IRQ HANDLER\n");
  e0:	940001c0 	bl	7e0 <tfp_printf>
    while(1);
  e4:	14000000 	b	e4 <irq_handler+0x14>
  e8:	d503201f 	nop
  ec:	d503201f 	nop

00000000000000f0 <reset_handler>:
}

void __attribute__ ((interrupt ("ABORT"))) reset_handler(void) {
  f0:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    printf("RESET HANDLER\n");
  f4:	90000000 	adrp	x0, 0 <_boot_entry>
  f8:	9124a000 	add	x0, x0, #0x928
void __attribute__ ((interrupt ("ABORT"))) reset_handler(void) {
  fc:	910003fd 	mov	x29, sp
    printf("RESET HANDLER\n");
 100:	940001b8 	bl	7e0 <tfp_printf>
    while(1);
 104:	14000000 	b	104 <reset_handler+0x14>
 108:	d503201f 	nop
 10c:	d503201f 	nop

0000000000000110 <prefetch_abort_handler>:
}
void __attribute__ ((interrupt ("ABORT"))) prefetch_abort_handler(void) {
 110:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    printf("PREFETCH ABORT HANDLER\n");
 114:	90000000 	adrp	x0, 0 <_boot_entry>
 118:	9124e000 	add	x0, x0, #0x938
void __attribute__ ((interrupt ("ABORT"))) prefetch_abort_handler(void) {
 11c:	910003fd 	mov	x29, sp
    printf("PREFETCH ABORT HANDLER\n");
 120:	940001b0 	bl	7e0 <tfp_printf>
    while(1);
 124:	14000000 	b	124 <prefetch_abort_handler+0x14>
 128:	d503201f 	nop
 12c:	d503201f 	nop

0000000000000130 <data_abort_handler>:
}
void __attribute__ ((interrupt ("ABORT"))) data_abort_handler(void) {
 130:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    printf("DATA ABORT HANDLER\n");
 134:	90000000 	adrp	x0, 0 <_boot_entry>
 138:	91254000 	add	x0, x0, #0x950
void __attribute__ ((interrupt ("ABORT"))) data_abort_handler(void) {
 13c:	910003fd 	mov	x29, sp
    printf("DATA ABORT HANDLER\n");
 140:	940001a8 	bl	7e0 <tfp_printf>
    while(1);
 144:	14000000 	b	144 <data_abort_handler+0x14>
 148:	d503201f 	nop
 14c:	d503201f 	nop

0000000000000150 <undefined_instruction_handler>:
}
void __attribute__ ((interrupt ("UNDEF"))) undefined_instruction_handler(void) {
 150:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    printf("UNDEFINED INSTRUCTION HANDLER\n");
 154:	90000000 	adrp	x0, 0 <_boot_entry>
 158:	9125a000 	add	x0, x0, #0x968
void __attribute__ ((interrupt ("UNDEF"))) undefined_instruction_handler(void) {
 15c:	910003fd 	mov	x29, sp
    printf("UNDEFINED INSTRUCTION HANDLER\n");
 160:	940001a0 	bl	7e0 <tfp_printf>
    while(1);
 164:	14000000 	b	164 <undefined_instruction_handler+0x14>
 168:	d503201f 	nop
 16c:	d503201f 	nop

0000000000000170 <software_interrupt_handler>:
}
void __attribute__ ((interrupt ("SWI"))) software_interrupt_handler(void) {
 170:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    printf("SWI HANDLER\n");
 174:	90000000 	adrp	x0, 0 <_boot_entry>
 178:	91262000 	add	x0, x0, #0x988
void __attribute__ ((interrupt ("SWI"))) software_interrupt_handler(void) {
 17c:	910003fd 	mov	x29, sp
    printf("SWI HANDLER\n");
 180:	94000198 	bl	7e0 <tfp_printf>
    while(1);
 184:	14000000 	b	184 <software_interrupt_handler+0x14>
 188:	d503201f 	nop
 18c:	d503201f 	nop

0000000000000190 <fast_irq_handler>:
}
void __attribute__ ((interrupt ("FIQ"))) fast_irq_handler(void) {
 190:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    printf("FIQ HANDLER\n");
 194:	90000000 	adrp	x0, 0 <_boot_entry>
 198:	91266000 	add	x0, x0, #0x998
void __attribute__ ((interrupt ("FIQ"))) fast_irq_handler(void) {
 19c:	910003fd 	mov	x29, sp
    printf("FIQ HANDLER\n");
 1a0:	94000190 	bl	7e0 <tfp_printf>
    while(1);
 1a4:	14000000 	b	1a4 <fast_irq_handler+0x14>

00000000000001a8 <memzero>:
.globl memzero
memzero :
    str  xzr, [x0], #8
 1a8:	f800841f 	str	xzr, [x0], #8
    subs x1, x1, #8
 1ac:	f1002021 	subs	x1, x1, #0x8
    b.gt memzero
 1b0:	54ffffcc 	b.gt	1a8 <memzero>
    ret
 1b4:	d65f03c0 	ret
	...

00000000000001c0 <uart_init>:

reg32* AUX_ENABLES = (reg32*)(AUX_PERI_BASE + 0x4);
aux_mini_uart_regs_t* mini_uart = (aux_mini_uart_regs_t*) MINI_UART_BASE;
gpio_regs_t* gpio = (gpio_regs_t*) GPIO_BASE;

void uart_init(){
 1c0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    /*Disable mini uart */
    *AUX_ENABLES = 0;
    /*Enable GPIO alternative fn as mini uart with no PD/PU*/
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1c4:	52a00122 	mov	w2, #0x90000               	// #589824
    gpio->GPPUD = 0;
    delay(150);
 1c8:	528012c0 	mov	w0, #0x96                  	// #150
void uart_init(){
 1cc:	910003fd 	mov	x29, sp
 1d0:	a90153f3 	stp	x19, x20, [sp, #16]
    *AUX_ENABLES = 0;
 1d4:	90000014 	adrp	x20, 0 <_boot_entry>
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1d8:	90000013 	adrp	x19, 0 <_boot_entry>
    *AUX_ENABLES = 0;
 1dc:	f944e694 	ldr	x20, [x20, #2504]
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1e0:	f944f273 	ldr	x19, [x19, #2528]
    *AUX_ENABLES = 0;
 1e4:	f9400283 	ldr	x3, [x20]
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1e8:	f9400261 	ldr	x1, [x19]
    *AUX_ENABLES = 0;
 1ec:	b900007f 	str	wzr, [x3]
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1f0:	b9000422 	str	w2, [x1, #4]
    gpio->GPPUD = 0;
 1f4:	b900903f 	str	wzr, [x1, #144]
    delay(150);
 1f8:	940001b2 	bl	8c0 <delay>
    gpio->GPPUDCLK0 = (1 << 14) | (1 << 15); 
 1fc:	f9400261 	ldr	x1, [x19]
 200:	52980002 	mov	w2, #0xc000                	// #49152
    delay(150);
 204:	528012c0 	mov	w0, #0x96                  	// #150
    gpio->GPPUDCLK0 = (1 << 14) | (1 << 15); 
 208:	b9009422 	str	w2, [x1, #148]
    delay(150);
 20c:	940001ad 	bl	8c0 <delay>
    gpio->GPPUDCLK0 = 0; 
    /*Counfigure uart */
    /*Disable interrupts */
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
 210:	90000000 	adrp	x0, 0 <_boot_entry>
    /*Clear FIFOs */
    mini_uart->AUX_MU_IIR_REG = 0x3 << 1; 
 214:	528000c5 	mov	w5, #0x6                   	// #6
    gpio->GPPUDCLK0 = 0; 
 218:	f9400261 	ldr	x1, [x19]
    /*Set baud rate to 115200 */
    mini_uart->AUX_MU_BAUD_REG = 271;
 21c:	528021e2 	mov	w2, #0x10f                 	// #271
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
 220:	f944e800 	ldr	x0, [x0, #2512]
    *(reg32*)0x3f215068 = 271;
 224:	d28a0d04 	mov	x4, #0x5068                	// #20584
 228:	f2a7e424 	movk	x4, #0x3f21, lsl #16
    gpio->GPPUDCLK0 = 0; 
 22c:	b900943f 	str	wzr, [x1, #148]
    /*Enable mini uart */
    *AUX_ENABLES = 1;
 230:	52800023 	mov	w3, #0x1                   	// #1
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
 234:	f9400000 	ldr	x0, [x0]
 238:	b9400401 	ldr	w1, [x0, #4]
 23c:	121e7421 	and	w1, w1, #0xfffffffc
 240:	b9000401 	str	w1, [x0, #4]
    mini_uart->AUX_MU_IIR_REG = 0x3 << 1; 
 244:	b9000805 	str	w5, [x0, #8]
    mini_uart->AUX_MU_BAUD_REG = 271;
 248:	b9002802 	str	w2, [x0, #40]
    *AUX_ENABLES = 1;
 24c:	f9400280 	ldr	x0, [x20]
}
 250:	a94153f3 	ldp	x19, x20, [sp, #16]
    *(reg32*)0x3f215068 = 271;
 254:	b9000082 	str	w2, [x4]
    *AUX_ENABLES = 1;
 258:	b9000003 	str	w3, [x0]
}
 25c:	a8c27bfd 	ldp	x29, x30, [sp], #32
 260:	d65f03c0 	ret
 264:	d503201f 	nop
 268:	d503201f 	nop
 26c:	d503201f 	nop

0000000000000270 <uart_read_available>:

uint8 uart_read_available(){
    return mini_uart->AUX_MU_LSR_REG & 0x1;
 270:	90000000 	adrp	x0, 0 <_boot_entry>
 274:	f944e800 	ldr	x0, [x0, #2512]
 278:	f9400000 	ldr	x0, [x0]
 27c:	b9401400 	ldr	w0, [x0, #20]
}
 280:	12000000 	and	w0, w0, #0x1
 284:	d65f03c0 	ret
 288:	d503201f 	nop
 28c:	d503201f 	nop

0000000000000290 <uart_read>:

uint8 uart_read(){
    uint8 data = mini_uart->AUX_MU_IO_REG & 0xFF;
 290:	90000000 	adrp	x0, 0 <_boot_entry>
 294:	f944e800 	ldr	x0, [x0, #2512]
 298:	f9400000 	ldr	x0, [x0]
 29c:	b9400000 	ldr	w0, [x0]
    return data;
}
 2a0:	d65f03c0 	ret
 2a4:	d503201f 	nop
 2a8:	d503201f 	nop
 2ac:	d503201f 	nop

00000000000002b0 <uart_write>:

void uart_write(uint8 data){
    mini_uart->AUX_MU_IO_REG = data;
 2b0:	90000001 	adrp	x1, 0 <_boot_entry>
void uart_write(uint8 data){
 2b4:	12001c00 	and	w0, w0, #0xff
    mini_uart->AUX_MU_IO_REG = data;
 2b8:	f944e821 	ldr	x1, [x1, #2512]
 2bc:	f9400021 	ldr	x1, [x1]
 2c0:	b9000020 	str	w0, [x1]
}
 2c4:	d65f03c0 	ret
 2c8:	d503201f 	nop
 2cc:	d503201f 	nop

00000000000002d0 <putc>:

void putc(char *p, char data){
    uart_write(data);
 2d0:	2a0103e0 	mov	w0, w1
 2d4:	17fffff7 	b	2b0 <uart_write>
	...

00000000000002e0 <ui2a>:

static void ui2a(unsigned int num, unsigned int base, int uc,char * bf)
    {
    int n=0;
    unsigned int d=1;
    while (num/d >= base)
 2e0:	6b01001f 	cmp	w0, w1
 2e4:	54000503 	b.cc	384 <ui2a+0xa4>  // b.lo, b.ul, b.last
    unsigned int d=1;
 2e8:	52800024 	mov	w4, #0x1                   	// #1
 2ec:	d503201f 	nop
        d*=base;
 2f0:	1b017c84 	mul	w4, w4, w1
    while (num/d >= base)
 2f4:	1ac40805 	udiv	w5, w0, w4
 2f8:	6b0100bf 	cmp	w5, w1
 2fc:	54ffffa2 	b.cs	2f0 <ui2a+0x10>  // b.hs, b.nlast
    while (d!=0) {
 300:	340003c4 	cbz	w4, 378 <ui2a+0x98>
        int dgt = num / d;
        num%= d;
        d/=base;
        if (n || dgt>0 || d==0) {
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 304:	52800008 	mov	w8, #0x0                   	// #0
 308:	528006eb 	mov	w11, #0x37                  	// #55
 30c:	52800aea 	mov	w10, #0x57                  	// #87
 310:	14000007 	b	32c <ui2a+0x4c>
        if (n || dgt>0 || d==0) {
 314:	6b04003f 	cmp	w1, w4
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 318:	52800606 	mov	w6, #0x30                  	// #48
        if (n || dgt>0 || d==0) {
 31c:	540001e8 	b.hi	358 <ui2a+0x78>  // b.pmore
 320:	52800008 	mov	w8, #0x0                   	// #0
 324:	1ac90805 	udiv	w5, w0, w9
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 328:	2a0903e4 	mov	w4, w9
        if (n || dgt>0 || d==0) {
 32c:	7100011f 	cmp	w8, #0x0
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 330:	aa0303e7 	mov	x7, x3
        if (n || dgt>0 || d==0) {
 334:	7a4008a0 	ccmp	w5, #0x0, #0x0, eq  // eq = none
        num%= d;
 338:	1b0480a0 	msub	w0, w5, w4, w0
        d/=base;
 33c:	1ac10889 	udiv	w9, w4, w1
        if (n || dgt>0 || d==0) {
 340:	54fffead 	b.le	314 <ui2a+0x34>
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 344:	710024bf 	cmp	w5, #0x9
 348:	52800606 	mov	w6, #0x30                  	// #48
 34c:	5400006d 	b.le	358 <ui2a+0x78>
 350:	7100005f 	cmp	w2, #0x0
 354:	1a8a1166 	csel	w6, w11, w10, ne  // ne = any
 358:	0b0500c5 	add	w5, w6, w5
 35c:	380014e5 	strb	w5, [x7], #1
            ++n;
 360:	11000508 	add	w8, w8, #0x1
    while (d!=0) {
 364:	6b04003f 	cmp	w1, w4
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 368:	aa0703e3 	mov	x3, x7
    while (d!=0) {
 36c:	54fffdc9 	b.ls	324 <ui2a+0x44>  // b.plast
            }
        }
    *bf=0;
 370:	390000ff 	strb	wzr, [x7]
    }
 374:	d65f03c0 	ret
    while (d!=0) {
 378:	aa0303e7 	mov	x7, x3
    *bf=0;
 37c:	390000ff 	strb	wzr, [x7]
    }
 380:	d65f03c0 	ret
 384:	2a0003e5 	mov	w5, w0
    unsigned int d=1;
 388:	52800024 	mov	w4, #0x1                   	// #1
 38c:	17ffffde 	b	304 <ui2a+0x24>

0000000000000390 <putcp>:
    va_end(va);
    }

static void putcp(void* p,char c)
    {
    *(*((char**)p))++ = c;
 390:	f9400002 	ldr	x2, [x0]
 394:	91000443 	add	x3, x2, #0x1
 398:	f9000003 	str	x3, [x0]
 39c:	39000041 	strb	w1, [x2]
    }
 3a0:	d65f03c0 	ret
 3a4:	d503201f 	nop
 3a8:	d503201f 	nop
 3ac:	d503201f 	nop

00000000000003b0 <putchw>:
    {
 3b0:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
    char fc=z? '0' : ' ';
 3b4:	72001c7f 	tst	w3, #0xff
    {
 3b8:	910003fd 	mov	x29, sp
 3bc:	a90153f3 	stp	x19, x20, [sp, #16]
    while (*p++ && n > 0)
 3c0:	aa0403f4 	mov	x20, x4
    {
 3c4:	a9025bf5 	stp	x21, x22, [sp, #32]
 3c8:	aa0103f6 	mov	x22, x1
 3cc:	aa0003f5 	mov	x21, x0
 3d0:	a90363f7 	stp	x23, x24, [sp, #48]
    char fc=z? '0' : ' ';
 3d4:	52800400 	mov	w0, #0x20                  	// #32
 3d8:	52800617 	mov	w23, #0x30                  	// #48
    while (*p++ && n > 0)
 3dc:	38401681 	ldrb	w1, [x20], #1
    char fc=z? '0' : ' ';
 3e0:	1a8012f7 	csel	w23, w23, w0, ne  // ne = any
    {
 3e4:	aa0403f8 	mov	x24, x4
    while (*p++ && n > 0)
 3e8:	7100005f 	cmp	w2, #0x0
 3ec:	34000401 	cbz	w1, 46c <putchw+0xbc>
 3f0:	540002cd 	b.le	448 <putchw+0x98>
 3f4:	aa1403e0 	mov	x0, x20
 3f8:	14000003 	b	404 <putchw+0x54>
 3fc:	2a0403e2 	mov	w2, w4
 400:	34000244 	cbz	w4, 448 <putchw+0x98>
 404:	39400003 	ldrb	w3, [x0]
        n--;
 408:	51000444 	sub	w4, w2, #0x1
 40c:	91000400 	add	x0, x0, #0x1
    while (*p++ && n > 0)
 410:	35ffff63 	cbnz	w3, 3fc <putchw+0x4c>
    while (n-- > 0)
 414:	51000853 	sub	w19, w2, #0x2
 418:	34000184 	cbz	w4, 448 <putchw+0x98>
 41c:	d503201f 	nop
        putf(putp,fc);
 420:	aa1503e0 	mov	x0, x21
 424:	2a1703e1 	mov	w1, w23
 428:	d63f02c0 	blr	x22
    while (n-- > 0)
 42c:	51000660 	sub	w0, w19, #0x1
 430:	7100027f 	cmp	w19, #0x0
 434:	2a0003f3 	mov	w19, w0
 438:	54ffff4c 	b.gt	420 <putchw+0x70>
    while ((ch= *bf++))
 43c:	39400301 	ldrb	w1, [x24]
 440:	340000c1 	cbz	w1, 458 <putchw+0xa8>
 444:	d503201f 	nop
        putf(putp,ch);
 448:	aa1503e0 	mov	x0, x21
 44c:	d63f02c0 	blr	x22
    while ((ch= *bf++))
 450:	38401681 	ldrb	w1, [x20], #1
 454:	35ffffa1 	cbnz	w1, 448 <putchw+0x98>
    }
 458:	a94153f3 	ldp	x19, x20, [sp, #16]
 45c:	a9425bf5 	ldp	x21, x22, [sp, #32]
 460:	a94363f7 	ldp	x23, x24, [sp, #48]
 464:	a8c47bfd 	ldp	x29, x30, [sp], #64
 468:	d65f03c0 	ret
    while (n-- > 0)
 46c:	51000453 	sub	w19, w2, #0x1
 470:	54fffd8c 	b.gt	420 <putchw+0x70>
 474:	17fffff9 	b	458 <putchw+0xa8>
 478:	d503201f 	nop
 47c:	d503201f 	nop

0000000000000480 <tfp_format>:
    {
 480:	a9b97bfd 	stp	x29, x30, [sp, #-112]!
 484:	910003fd 	mov	x29, sp
 488:	a90363f7 	stp	x23, x24, [sp, #48]
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
 48c:	910183f8 	add	x24, sp, #0x60
 490:	b9401877 	ldr	w23, [x3, #24]
    {
 494:	a90153f3 	stp	x19, x20, [sp, #16]
 498:	aa0103f4 	mov	x20, x1
                    ui2a(va_arg(va, unsigned int),10,0,bf);
 49c:	52800153 	mov	w19, #0xa                   	// #10
    {
 4a0:	a9025bf5 	stp	x21, x22, [sp, #32]
 4a4:	aa0003f5 	mov	x21, x0
 4a8:	a9046bf9 	stp	x25, x26, [sp, #64]
        *bf++ = '-';
 4ac:	9100071a 	add	x26, x24, #0x1
 4b0:	a9406476 	ldp	x22, x25, [x3]
    {
 4b4:	f9002bfb 	str	x27, [sp, #80]
 4b8:	aa0203fb 	mov	x27, x2
 4bc:	d503201f 	nop
    while ((ch=*(fmt++))) {
 4c0:	39400361 	ldrb	w1, [x27]
 4c4:	34000101 	cbz	w1, 4e4 <tfp_format+0x64>
        if (ch!='%')
 4c8:	7100943f 	cmp	w1, #0x25
 4cc:	540001a0 	b.eq	500 <tfp_format+0x80>  // b.none
    while ((ch=*(fmt++))) {
 4d0:	9100077b 	add	x27, x27, #0x1
            putf(putp,ch);
 4d4:	aa1503e0 	mov	x0, x21
 4d8:	d63f0280 	blr	x20
    while ((ch=*(fmt++))) {
 4dc:	39400361 	ldrb	w1, [x27]
 4e0:	35ffff41 	cbnz	w1, 4c8 <tfp_format+0x48>
    }
 4e4:	a94153f3 	ldp	x19, x20, [sp, #16]
 4e8:	a9425bf5 	ldp	x21, x22, [sp, #32]
 4ec:	a94363f7 	ldp	x23, x24, [sp, #48]
 4f0:	a9446bf9 	ldp	x25, x26, [sp, #64]
 4f4:	f9402bfb 	ldr	x27, [sp, #80]
 4f8:	a8c77bfd 	ldp	x29, x30, [sp], #112
 4fc:	d65f03c0 	ret
            ch=*(fmt++);
 500:	39400761 	ldrb	w1, [x27, #1]
            if (ch=='0') {
 504:	7100c03f 	cmp	w1, #0x30
 508:	54000b60 	b.eq	674 <tfp_format+0x1f4>  // b.none
            ch=*(fmt++);
 50c:	91000b7b 	add	x27, x27, #0x2
            char lz=0;
 510:	5280000d 	mov	w13, #0x0                   	// #0
            if (ch>='0' && ch<='9') {
 514:	5100c025 	sub	w5, w1, #0x30
    int num=0;
 518:	5280000c 	mov	w12, #0x0                   	// #0
            if (ch>='0' && ch<='9') {
 51c:	12001ca0 	and	w0, w5, #0xff
 520:	7100241f 	cmp	w0, #0x9
 524:	54000369 	b.ls	590 <tfp_format+0x110>  // b.plast
            switch (ch) {
 528:	71018c3f 	cmp	w1, #0x63
 52c:	54000c20 	b.eq	6b0 <tfp_format+0x230>  // b.none
 530:	54000869 	b.ls	63c <tfp_format+0x1bc>  // b.plast
 534:	7101cc3f 	cmp	w1, #0x73
 538:	54000a60 	b.eq	684 <tfp_format+0x204>  // b.none
 53c:	54000649 	b.ls	604 <tfp_format+0x184>  // b.plast
 540:	7101d43f 	cmp	w1, #0x75
 544:	540003a1 	b.ne	5b8 <tfp_format+0x138>  // b.any
                    ui2a(va_arg(va, unsigned int),10,0,bf);
 548:	37f80cb7 	tbnz	w23, #31, 6dc <tfp_format+0x25c>
 54c:	91002ec1 	add	x1, x22, #0xb
 550:	aa1603e0 	mov	x0, x22
 554:	927df036 	and	x22, x1, #0xfffffffffffffff8
 558:	b9400000 	ldr	w0, [x0]
 55c:	aa1803e3 	mov	x3, x24
    ui2a(num,10,0,bf);
 560:	52800002 	mov	w2, #0x0                   	// #0
 564:	52800141 	mov	w1, #0xa                   	// #10
 568:	1400001f 	b	5e4 <tfp_format+0x164>
    else if (ch>='a' && ch<='f')
 56c:	7100141f 	cmp	w0, #0x5
 570:	540007e9 	b.ls	66c <tfp_format+0x1ec>  // b.plast
    else if (ch>='A' && ch<='F')
 574:	7100145f 	cmp	w2, #0x5
 578:	54fffd88 	b.hi	528 <tfp_format+0xa8>  // b.pmore
        if (digit>base) break;
 57c:	7100289f 	cmp	w4, #0xa
 580:	54fffd41 	b.ne	528 <tfp_format+0xa8>  // b.any
        ch=*p++;
 584:	38401761 	ldrb	w1, [x27], #1
        num=num*base+digit;
 588:	1b13118c 	madd	w12, w12, w19, w4
        ch=*p++;
 58c:	5100c025 	sub	w5, w1, #0x30
    else if (ch>='a' && ch<='f')
 590:	51018420 	sub	w0, w1, #0x61
    else if (ch>='A' && ch<='F')
 594:	51010422 	sub	w2, w1, #0x41
    if (ch>='0' && ch<='9')
 598:	12001ca3 	and	w3, w5, #0xff
        return ch-'A'+10;
 59c:	5100dc24 	sub	w4, w1, #0x37
    else if (ch>='a' && ch<='f')
 5a0:	12001c00 	and	w0, w0, #0xff
    else if (ch>='A' && ch<='F')
 5a4:	12001c42 	and	w2, w2, #0xff
    if (ch>='0' && ch<='9')
 5a8:	7100247f 	cmp	w3, #0x9
 5ac:	54fffe08 	b.hi	56c <tfp_format+0xec>  // b.pmore
        return ch-'0';
 5b0:	2a0503e4 	mov	w4, w5
        if (digit>base) break;
 5b4:	17fffff4 	b	584 <tfp_format+0x104>
            switch (ch) {
 5b8:	7101e03f 	cmp	w1, #0x78
 5bc:	54fff821 	b.ne	4c0 <tfp_format+0x40>  // b.any
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
 5c0:	37f80bf7 	tbnz	w23, #31, 73c <tfp_format+0x2bc>
 5c4:	91002ec2 	add	x2, x22, #0xb
 5c8:	aa1603e0 	mov	x0, x22
 5cc:	927df056 	and	x22, x2, #0xfffffffffffffff8
 5d0:	7101603f 	cmp	w1, #0x58
 5d4:	b9400000 	ldr	w0, [x0]
 5d8:	1a9f17e2 	cset	w2, eq  // eq = none
 5dc:	aa1803e3 	mov	x3, x24
 5e0:	52800201 	mov	w1, #0x10                  	// #16
 5e4:	97ffff3f 	bl	2e0 <ui2a>
                    putchw(putp,putf,w,lz,bf);
 5e8:	2a0d03e3 	mov	w3, w13
 5ec:	aa1803e4 	mov	x4, x24
 5f0:	2a0c03e2 	mov	w2, w12
 5f4:	aa1403e1 	mov	x1, x20
 5f8:	aa1503e0 	mov	x0, x21
 5fc:	97ffff6d 	bl	3b0 <putchw>
                    break;
 600:	17ffffb0 	b	4c0 <tfp_format+0x40>
            switch (ch) {
 604:	7101903f 	cmp	w1, #0x64
 608:	54fff5c1 	b.ne	4c0 <tfp_format+0x40>  // b.any
                    i2a(va_arg(va, int),bf);
 60c:	37f80797 	tbnz	w23, #31, 6fc <tfp_format+0x27c>
 610:	91002ec1 	add	x1, x22, #0xb
 614:	aa1603e0 	mov	x0, x22
 618:	927df036 	and	x22, x1, #0xfffffffffffffff8
 61c:	b9400000 	ldr	w0, [x0]
    if (num<0) {
 620:	aa1803e3 	mov	x3, x24
 624:	36fff9e0 	tbz	w0, #31, 560 <tfp_format+0xe0>
        *bf++ = '-';
 628:	528005a1 	mov	w1, #0x2d                  	// #45
        num=-num;
 62c:	4b0003e0 	neg	w0, w0
        *bf++ = '-';
 630:	aa1a03e3 	mov	x3, x26
 634:	390183e1 	strb	w1, [sp, #96]
 638:	17ffffca 	b	560 <tfp_format+0xe0>
            switch (ch) {
 63c:	7100943f 	cmp	w1, #0x25
 640:	54000480 	b.eq	6d0 <tfp_format+0x250>  // b.none
 644:	7101603f 	cmp	w1, #0x58
 648:	54fffbc0 	b.eq	5c0 <tfp_format+0x140>  // b.none
 64c:	35fff3a1 	cbnz	w1, 4c0 <tfp_format+0x40>
    }
 650:	a94153f3 	ldp	x19, x20, [sp, #16]
 654:	a9425bf5 	ldp	x21, x22, [sp, #32]
 658:	a94363f7 	ldp	x23, x24, [sp, #48]
 65c:	a9446bf9 	ldp	x25, x26, [sp, #64]
 660:	f9402bfb 	ldr	x27, [sp, #80]
 664:	a8c77bfd 	ldp	x29, x30, [sp], #112
 668:	d65f03c0 	ret
        return ch-'a'+10;
 66c:	51015c24 	sub	w4, w1, #0x57
 670:	17ffffc3 	b	57c <tfp_format+0xfc>
                ch=*(fmt++);
 674:	39400b61 	ldrb	w1, [x27, #2]
                lz=1;
 678:	5280002d 	mov	w13, #0x1                   	// #1
                ch=*(fmt++);
 67c:	91000f7b 	add	x27, x27, #0x3
 680:	17ffffa5 	b	514 <tfp_format+0x94>
                    putchw(putp,putf,w,0,va_arg(va, char*));
 684:	37f806d7 	tbnz	w23, #31, 75c <tfp_format+0x2dc>
 688:	91003ec1 	add	x1, x22, #0xf
 68c:	aa1603e0 	mov	x0, x22
 690:	927df036 	and	x22, x1, #0xfffffffffffffff8
 694:	f9400004 	ldr	x4, [x0]
 698:	2a0c03e2 	mov	w2, w12
 69c:	52800003 	mov	w3, #0x0                   	// #0
 6a0:	aa1403e1 	mov	x1, x20
 6a4:	aa1503e0 	mov	x0, x21
 6a8:	97ffff42 	bl	3b0 <putchw>
                    break;
 6ac:	17ffff85 	b	4c0 <tfp_format+0x40>
                    putf(putp,(char)(va_arg(va, int)));
 6b0:	37f80377 	tbnz	w23, #31, 71c <tfp_format+0x29c>
 6b4:	91002ec1 	add	x1, x22, #0xb
 6b8:	aa1603e0 	mov	x0, x22
 6bc:	927df036 	and	x22, x1, #0xfffffffffffffff8
 6c0:	39400001 	ldrb	w1, [x0]
 6c4:	aa1503e0 	mov	x0, x21
 6c8:	d63f0280 	blr	x20
                    break;
 6cc:	17ffff7d 	b	4c0 <tfp_format+0x40>
                    putf(putp,ch);
 6d0:	aa1503e0 	mov	x0, x21
 6d4:	d63f0280 	blr	x20
 6d8:	17ffff7a 	b	4c0 <tfp_format+0x40>
                    ui2a(va_arg(va, unsigned int),10,0,bf);
 6dc:	110022e1 	add	w1, w23, #0x8
 6e0:	7100003f 	cmp	w1, #0x0
 6e4:	540004cd 	b.le	77c <tfp_format+0x2fc>
 6e8:	91002ec2 	add	x2, x22, #0xb
 6ec:	aa1603e0 	mov	x0, x22
 6f0:	2a0103f7 	mov	w23, w1
 6f4:	927df056 	and	x22, x2, #0xfffffffffffffff8
 6f8:	17ffff98 	b	558 <tfp_format+0xd8>
                    i2a(va_arg(va, int),bf);
 6fc:	110022e1 	add	w1, w23, #0x8
 700:	7100003f 	cmp	w1, #0x0
 704:	5400042d 	b.le	788 <tfp_format+0x308>
 708:	91002ec2 	add	x2, x22, #0xb
 70c:	aa1603e0 	mov	x0, x22
 710:	2a0103f7 	mov	w23, w1
 714:	927df056 	and	x22, x2, #0xfffffffffffffff8
 718:	17ffffc1 	b	61c <tfp_format+0x19c>
                    putf(putp,(char)(va_arg(va, int)));
 71c:	110022e1 	add	w1, w23, #0x8
 720:	7100003f 	cmp	w1, #0x0
 724:	540003ed 	b.le	7a0 <tfp_format+0x320>
 728:	91002ec2 	add	x2, x22, #0xb
 72c:	aa1603e0 	mov	x0, x22
 730:	2a0103f7 	mov	w23, w1
 734:	927df056 	and	x22, x2, #0xfffffffffffffff8
 738:	17ffffe2 	b	6c0 <tfp_format+0x240>
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
 73c:	110022e2 	add	w2, w23, #0x8
 740:	7100005f 	cmp	w2, #0x0
 744:	5400028d 	b.le	794 <tfp_format+0x314>
 748:	91002ec3 	add	x3, x22, #0xb
 74c:	aa1603e0 	mov	x0, x22
 750:	2a0203f7 	mov	w23, w2
 754:	927df076 	and	x22, x3, #0xfffffffffffffff8
 758:	17ffff9e 	b	5d0 <tfp_format+0x150>
                    putchw(putp,putf,w,0,va_arg(va, char*));
 75c:	110022e1 	add	w1, w23, #0x8
 760:	7100003f 	cmp	w1, #0x0
 764:	5400024d 	b.le	7ac <tfp_format+0x32c>
 768:	91003ec2 	add	x2, x22, #0xf
 76c:	aa1603e0 	mov	x0, x22
 770:	2a0103f7 	mov	w23, w1
 774:	927df056 	and	x22, x2, #0xfffffffffffffff8
 778:	17ffffc7 	b	694 <tfp_format+0x214>
                    ui2a(va_arg(va, unsigned int),10,0,bf);
 77c:	8b37c320 	add	x0, x25, w23, sxtw
 780:	2a0103f7 	mov	w23, w1
 784:	17ffff75 	b	558 <tfp_format+0xd8>
                    i2a(va_arg(va, int),bf);
 788:	8b37c320 	add	x0, x25, w23, sxtw
 78c:	2a0103f7 	mov	w23, w1
 790:	17ffffa3 	b	61c <tfp_format+0x19c>
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
 794:	8b37c320 	add	x0, x25, w23, sxtw
 798:	2a0203f7 	mov	w23, w2
 79c:	17ffff8d 	b	5d0 <tfp_format+0x150>
                    putf(putp,(char)(va_arg(va, int)));
 7a0:	8b37c320 	add	x0, x25, w23, sxtw
 7a4:	2a0103f7 	mov	w23, w1
 7a8:	17ffffc6 	b	6c0 <tfp_format+0x240>
                    putchw(putp,putf,w,0,va_arg(va, char*));
 7ac:	8b37c320 	add	x0, x25, w23, sxtw
 7b0:	2a0103f7 	mov	w23, w1
 7b4:	17ffffb8 	b	694 <tfp_format+0x214>
 7b8:	d503201f 	nop
 7bc:	d503201f 	nop

00000000000007c0 <init_printf>:
    stdout_putf=putf;
 7c0:	90000002 	adrp	x2, 0 <_boot_entry>
 7c4:	91280043 	add	x3, x2, #0xa00
 7c8:	f9050041 	str	x1, [x2, #2560]
    stdout_putp=putp;
 7cc:	f9000460 	str	x0, [x3, #8]
    }
 7d0:	d65f03c0 	ret
 7d4:	d503201f 	nop
 7d8:	d503201f 	nop
 7dc:	d503201f 	nop

00000000000007e0 <tfp_printf>:
    {
 7e0:	a9b77bfd 	stp	x29, x30, [sp, #-144]!
    tfp_format(stdout_putp,stdout_putf,fmt,va);
 7e4:	90000008 	adrp	x8, 0 <_boot_entry>
 7e8:	9128010a 	add	x10, x8, #0xa00
    {
 7ec:	910003fd 	mov	x29, sp
 7f0:	a9058be1 	stp	x1, x2, [sp, #88]
    tfp_format(stdout_putp,stdout_putf,fmt,va);
 7f4:	aa0003e2 	mov	x2, x0
    va_start(va,fmt);
 7f8:	910143e9 	add	x9, sp, #0x50
    tfp_format(stdout_putp,stdout_putf,fmt,va);
 7fc:	f9400540 	ldr	x0, [x10, #8]
    va_start(va,fmt);
 800:	910243ea 	add	x10, sp, #0x90
 804:	a9032bea 	stp	x10, x10, [sp, #48]
    tfp_format(stdout_putp,stdout_putf,fmt,va);
 808:	f9450101 	ldr	x1, [x8, #2560]
    va_start(va,fmt);
 80c:	128006e8 	mov	w8, #0xffffffc8            	// #-56
 810:	f90023e9 	str	x9, [sp, #64]
 814:	b9004be8 	str	w8, [sp, #72]
 818:	b9004fff 	str	wzr, [sp, #76]
    tfp_format(stdout_putp,stdout_putf,fmt,va);
 81c:	a94327e8 	ldp	x8, x9, [sp, #48]
 820:	a90127e8 	stp	x8, x9, [sp, #16]
 824:	a94427e8 	ldp	x8, x9, [sp, #64]
 828:	a90227e8 	stp	x8, x9, [sp, #32]
    {
 82c:	a90693e3 	stp	x3, x4, [sp, #104]
    tfp_format(stdout_putp,stdout_putf,fmt,va);
 830:	910043e3 	add	x3, sp, #0x10
    {
 834:	a9079be5 	stp	x5, x6, [sp, #120]
 838:	f90047e7 	str	x7, [sp, #136]
    tfp_format(stdout_putp,stdout_putf,fmt,va);
 83c:	97ffff11 	bl	480 <tfp_format>
    }
 840:	a8c97bfd 	ldp	x29, x30, [sp], #144
 844:	d65f03c0 	ret
 848:	d503201f 	nop
 84c:	d503201f 	nop

0000000000000850 <tfp_sprintf>:



void tfp_sprintf(char* s,char *fmt, ...)
    {
 850:	a9b77bfd 	stp	x29, x30, [sp, #-144]!
    va_list va;
    va_start(va,fmt);
 854:	128005e9 	mov	w9, #0xffffffd0            	// #-48
    {
 858:	910003fd 	mov	x29, sp
    va_start(va,fmt);
 85c:	910183ea 	add	x10, sp, #0x60
 860:	910243e8 	add	x8, sp, #0x90
 864:	910243eb 	add	x11, sp, #0x90
 868:	a903a3e0 	stp	x0, x8, [sp, #56]
    tfp_format(&s,putcp,fmt,va);
 86c:	90000008 	adrp	x8, 0 <_boot_entry>
    va_start(va,fmt);
 870:	a904abeb 	stp	x11, x10, [sp, #72]
    tfp_format(&s,putcp,fmt,va);
 874:	9100e3e0 	add	x0, sp, #0x38
    va_start(va,fmt);
 878:	290b7fe9 	stp	w9, wzr, [sp, #88]
    tfp_format(&s,putcp,fmt,va);
 87c:	a9442fea 	ldp	x10, x11, [sp, #64]
 880:	a9012fea 	stp	x10, x11, [sp, #16]
 884:	a9452fea 	ldp	x10, x11, [sp, #80]
 888:	a9022fea 	stp	x10, x11, [sp, #32]
    {
 88c:	a9060fe2 	stp	x2, x3, [sp, #96]
    tfp_format(&s,putcp,fmt,va);
 890:	aa0103e2 	mov	x2, x1
 894:	910043e3 	add	x3, sp, #0x10
 898:	910e4101 	add	x1, x8, #0x390
    {
 89c:	a90717e4 	stp	x4, x5, [sp, #112]
 8a0:	a9081fe6 	stp	x6, x7, [sp, #128]
    tfp_format(&s,putcp,fmt,va);
 8a4:	97fffef7 	bl	480 <tfp_format>
    *(*((char**)p))++ = c;
 8a8:	f9401fe0 	ldr	x0, [sp, #56]
 8ac:	3900001f 	strb	wzr, [x0]
    putcp(&s,0);
    va_end(va);
    }
 8b0:	a8c97bfd 	ldp	x29, x30, [sp], #144
 8b4:	d65f03c0 	ret
	...

00000000000008c0 <delay>:
#include "utils.h"

void delay(uint32 cycles){
    asm volatile("loop : subs %0, %0, #1\n\t"
 8c0:	f1000400 	subs	x0, x0, #0x1
 8c4:	54ffffe1 	b.ne	8c0 <delay>  // b.any
                  "bne loop"
                  : "=r"(cycles)
                  :
                  : "cc");
}
 8c8:	d65f03c0 	ret
 8cc:	d503201f 	nop

00000000000008d0 <get_core_id>:

int get_core_id(){
    int core_id;
    asm volatile("mrs %0, mpidr_el1\n\t"
 8d0:	d53800a0 	mrs	x0, mpidr_el1
 8d4:	92401c00 	and	x0, x0, #0xff
                 "and %0, %0, #0xFF\n\t"
                  :"=r"(core_id));
    return core_id;
}
 8d8:	d65f03c0 	ret
 8dc:	d503201f 	nop

00000000000008e0 <get_el>:

int get_el(){
    int el;
    asm volatile("mrs %0, CurrentEL\n\t"
 8e0:	d5384240 	mrs	x0, currentel
 8e4:	d342fc00 	lsr	x0, x0, #2
                 "lsr %0, %0, #2\n\t"
                  :"=r"(el));
    return el;
}
 8e8:	d65f03c0 	ret

Disassembly of section .rodata.str1.8:

00000000000008f0 <.rodata.str1.8>:
 8f0:	65726f43 	.word	0x65726f43
 8f4:	20642520 	.word	0x20642520
 8f8:	61207075 	.word	0x61207075
 8fc:	78452074 	.word	0x78452074
 900:	74706563 	.word	0x74706563
 904:	206e6f69 	.word	0x206e6f69
 908:	6576656c 	.word	0x6576656c
 90c:	6425206c 	.word	0x6425206c
 910:	0000000a 	.word	0x0000000a
 914:	00000000 	.word	0x00000000
 918:	20515249 	.word	0x20515249
 91c:	444e4148 	.word	0x444e4148
 920:	0a52454c 	.word	0x0a52454c
 924:	00000000 	.word	0x00000000
 928:	45534552 	.word	0x45534552
 92c:	41482054 	.word	0x41482054
 930:	454c444e 	.word	0x454c444e
 934:	00000a52 	.word	0x00000a52
 938:	46455250 	.word	0x46455250
 93c:	48435445 	.word	0x48435445
 940:	4f424120 	.word	0x4f424120
 944:	48205452 	.word	0x48205452
 948:	4c444e41 	.word	0x4c444e41
 94c:	000a5245 	.word	0x000a5245
 950:	41544144 	.word	0x41544144
 954:	4f424120 	.word	0x4f424120
 958:	48205452 	.word	0x48205452
 95c:	4c444e41 	.word	0x4c444e41
 960:	000a5245 	.word	0x000a5245
 964:	00000000 	.word	0x00000000
 968:	45444e55 	.word	0x45444e55
 96c:	454e4946 	.word	0x454e4946
 970:	4e492044 	.word	0x4e492044
 974:	55525453 	.word	0x55525453
 978:	4f495443 	.word	0x4f495443
 97c:	4148204e 	.word	0x4148204e
 980:	454c444e 	.word	0x454c444e
 984:	00000a52 	.word	0x00000a52
 988:	20495753 	.word	0x20495753
 98c:	444e4148 	.word	0x444e4148
 990:	0a52454c 	.word	0x0a52454c
 994:	00000000 	.word	0x00000000
 998:	20514946 	.word	0x20514946
 99c:	444e4148 	.word	0x444e4148
 9a0:	0a52454c 	.word	0x0a52454c
 9a4:	00000000 	.word	0x00000000

Disassembly of section .data:

00000000000009a8 <gpio>:
 9a8:	3f200000 	.word	0x3f200000
 9ac:	00000000 	.word	0x00000000

00000000000009b0 <mini_uart>:
 9b0:	3f215040 	.word	0x3f215040
 9b4:	00000000 	.word	0x00000000

00000000000009b8 <AUX_ENABLES>:
 9b8:	3f215004 	.word	0x3f215004
 9bc:	00000000 	.word	0x00000000

Disassembly of section .got:

00000000000009c0 <_GLOBAL_OFFSET_TABLE_>:
	...
 9c8:	000009b8 	.inst	0x000009b8 ; undefined
 9cc:	00000000 	.inst	0x00000000 ; undefined
 9d0:	000009b0 	.inst	0x000009b0 ; undefined
 9d4:	00000000 	.inst	0x00000000 ; undefined
 9d8:	000002d0 	.inst	0x000002d0 ; undefined
 9dc:	00000000 	.inst	0x00000000 ; undefined
 9e0:	000009a8 	.inst	0x000009a8 ; undefined
 9e4:	00000000 	.inst	0x00000000 ; undefined

Disassembly of section .got.plt:

00000000000009e8 <.got.plt>:
	...

Disassembly of section .bss:

0000000000000a00 <__bss_start>:
	...

0000000000000a08 <stdout_putp>:
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
    mrs x0, mpidr_el1
       0:	000001fe 	.inst	0x000001fe ; undefined
    and x0, x0, #0xFF
       4:	00000004 	.inst	0x00000004 ; undefined
    cbnz x0, halt_proc
       8:	01080000 	.inst	0x01080000 ; undefined
    adr x0, __bss_start
       c:	000008cc 	.inst	0x000008cc ; undefined
    adr x1, __bss_end
      10:	000a390c 	.inst	0x000a390c ; undefined
    sub x1, x1, x0
      14:	0029e100 	.inst	0x0029e100 ; NYI
    bl   memzero
      18:	00003000 	.inst	0x00003000 ; undefined
    bl el1_setup
      1c:	00000000 	.inst	0x00000000 ; undefined
    b   kernel_main
      20:	00004400 	.inst	0x00004400 ; undefined
	...
{
      30:	08010200 	stxrb	w1, w0, [x16]
      34:	0000228a 	.inst	0x0000228a ; undefined
      38:	30070202 	adr	x2, e079 <__bss_end+0xd669>
    uart_init();
      3c:	02000004 	.inst	0x02000004 ; undefined
    init_printf(0, putc);
      40:	204d0704 	.inst	0x204d0704 ; undefined
      44:	3f030000 	.inst	0x3f030000 ; undefined
      48:	02000000 	.inst	0x02000000 ; undefined
      4c:	0b630708 	.inst	0x0b630708 ; undefined
    printf("Core %d up at Exception level %d\n", get_core_id(), get_el());
      50:	01020000 	.inst	0x01020000 ; undefined
      54:	00211606 	.inst	0x00211606 ; NYI
      58:	05020200 	orr	z0.d, z0.d, #0x1ffff
      5c:	000005a9 	.inst	0x000005a9 ; undefined
      60:	69050404 	stgp	x4, x1, [x0, #160]
      64:	0200746e 	.inst	0x0200746e ; undefined
      68:	175f0508 	b	fffffffffd7c1488 <__bss_end+0xfffffffffd7c0a78>
      6c:	b4050000 	cbz	x0, a06c <__bss_end+0x965c>
    }
      70:	0300001d 	.inst	0x0300001d ; undefined
      74:	00461f0d 	.inst	0x00461f0d ; undefined
    ldr x0, =(SCTLR_EL1_EE_LITTLE | SCTLR_EL1_E0E_LITTLE |\
      78:	4c060000 	.inst	0x4c060000 ; undefined
    msr SCTLR_EL1, x0
      7c:	2c000023 	stnp	s3, s0, [x1]
    ldr x0, =(SCR_EL3_RW_AARCH64 | SCR_EL3_NS)
      80:	17100702 	b	fffffffffc401c88 <__bss_end+0xfffffffffc401278>
    msr SCR_EL3, x0
      84:	07000001 	.inst	0x07000001 ; undefined
    ldr x0, =(HCR_EL2_RW_AARCH64)
      88:	00000a4b 	.inst	0x00000a4b ; undefined
    msr HCR_EL2, x0 
      8c:	6e0b0802 	ext	v2.16b, v0.16b, v11.16b, #1
    msr ELR_EL3, lr
      90:	00000000 	.inst	0x00000000 ; undefined
    ldr x0, =(SPSR_MODE_EL1h | SPSR_MASK_EXCEPTIONS)
      94:	001d6b07 	.inst	0x001d6b07 ; undefined
    msr SPSR_EL3, x0
      98:	0b090200 	add	w0, w16, w9
    ldr x0, =STACK_BASE
      9c:	0000006e 	.inst	0x0000006e ; undefined
    msr SP_EL1, x0
      a0:	2b8b0704 	adds	w4, w24, w11, asr #1
    eret
      a4:	0a020000 	and	w0, w0, w2
      a8:	00006e0b 	.inst	0x00006e0b ; undefined
      ac:	5b070800 	.inst	0x5b070800 ; undefined
      b0:	02000002 	.inst	0x02000002 ; undefined
      b4:	006e0b0b 	.inst	0x006e0b0b ; undefined
      b8:	070c0000 	.inst	0x070c0000 ; undefined
      bc:	00001c75 	.inst	0x00001c75 ; undefined
      c0:	6e0b0c02 	mov	v2.b[5], v0.b[1]
      c4:	10000000 	adr	x0, c4 <el1_setup+0x4c>
      c8:	0021bc07 	.inst	0x0021bc07 ; NYI
      cc:	0b0d0200 	add	w0, w16, w13
void irq_handler(void) {
      d0:	0000006e 	.inst	0x0000006e ; undefined
    printf("IRQ HANDLER\n");
      d4:	0e270714 	shadd	v20.8b, v24.8b, v7.8b
      d8:	0e020000 	tbl	v0.8b, {v0.16b}, v2.8b
void irq_handler(void) {
      dc:	00006e0b 	.inst	0x00006e0b ; undefined
    printf("IRQ HANDLER\n");
      e0:	45071800 	.inst	0x45071800 ; undefined
    while(1);
      e4:	02000010 	.inst	0x02000010 ; undefined
      e8:	006e0b0f 	.inst	0x006e0b0f ; undefined
      ec:	071c0000 	.inst	0x071c0000 ; undefined
void __attribute__ ((interrupt ("ABORT"))) reset_handler(void) {
      f0:	000020bc 	.inst	0x000020bc ; undefined
    printf("RESET HANDLER\n");
      f4:	6e0b1002 	ext	v2.16b, v0.16b, v11.16b, #2
      f8:	20000000 	.inst	0x20000000 ; undefined
void __attribute__ ((interrupt ("ABORT"))) reset_handler(void) {
      fc:	0015ec07 	.inst	0x0015ec07 ; undefined
    printf("RESET HANDLER\n");
     100:	0b110200 	add	w0, w16, w17
    while(1);
     104:	0000006e 	.inst	0x0000006e ; undefined
     108:	12f10724 	.inst	0x12f10724 ; undefined
     10c:	12020000 	and	w0, w0, #0x40000000
void __attribute__ ((interrupt ("ABORT"))) prefetch_abort_handler(void) {
     110:	00006e0b 	.inst	0x00006e0b ; undefined
    printf("PREFETCH ABORT HANDLER\n");
     114:	05002800 	orr	z0.s, z0.s, #0x8000000
     118:	0000234c 	.inst	0x0000234c ; undefined
void __attribute__ ((interrupt ("ABORT"))) prefetch_abort_handler(void) {
     11c:	7a021302 	.inst	0x7a021302 ; undefined
    printf("PREFETCH ABORT HANDLER\n");
     120:	08000000 	stxrb	w0, w0, [x0]
    while(1);
     124:	0000138c 	.inst	0x0000138c ; undefined
     128:	2f0f1602 	usra	v2.8b, v16.8b, #1
     12c:	09000001 	.inst	0x09000001 ; undefined
void __attribute__ ((interrupt ("ABORT"))) data_abort_handler(void) {
     130:	00006e08 	.inst	0x00006e08 ; undefined
    printf("DATA ABORT HANDLER\n");
     134:	23f90800 	.inst	0x23f90800 ; undefined
     138:	17020000 	b	fffffffffc080138 <__bss_end+0xfffffffffc07f728>
void __attribute__ ((interrupt ("ABORT"))) data_abort_handler(void) {
     13c:	0001411e 	.inst	0x0001411e ; undefined
    printf("DATA ABORT HANDLER\n");
     140:	17080900 	b	fffffffffc202540 <__bss_end+0xfffffffffc201b30>
    while(1);
     144:	0a000001 	and	w1, w0, w0
     148:	00002588 	.inst	0x00002588 ; undefined
     14c:	30060501 	adr	x1, c1ed <__bss_end+0xb7dd>
void __attribute__ ((interrupt ("UNDEF"))) undefined_instruction_handler(void) {
     150:	00000000 	.inst	0x00000000 ; undefined
    printf("UNDEFINED INSTRUCTION HANDLER\n");
     154:	44000000 	.inst	0x44000000 ; undefined
     158:	00000000 	.inst	0x00000000 ; undefined
void __attribute__ ((interrupt ("UNDEF"))) undefined_instruction_handler(void) {
     15c:	01000000 	.inst	0x01000000 ; undefined
    printf("UNDEFINED INSTRUCTION HANDLER\n");
     160:	0001c59c 	.inst	0x0001c59c ; undefined
    while(1);
     164:	00400b00 	.inst	0x00400b00 ; undefined
     168:	00000000 	.inst	0x00000000 ; undefined
     16c:	01c50000 	.inst	0x01c50000 ; undefined
void __attribute__ ((interrupt ("SWI"))) software_interrupt_handler(void) {
     170:	500c0000 	adr	x0, 18172 <__bss_end+0x17762>
    printf("SWI HANDLER\n");
     174:	00000000 	.inst	0x00000000 ; undefined
     178:	d1000000 	sub	x0, x0, #0x0
void __attribute__ ((interrupt ("SWI"))) software_interrupt_handler(void) {
     17c:	89000001 	.inst	0x89000001 ; undefined
    printf("SWI HANDLER\n");
     180:	0d000001 	st1	{v1.b}[0], [x0]
    while(1);
     184:	30015001 	adr	x1, 2b85 <__bss_end+0x2175>
     188:	00540b00 	.inst	0x00540b00 ; undefined
     18c:	00000000 	.inst	0x00000000 ; undefined
void __attribute__ ((interrupt ("FIQ"))) fast_irq_handler(void) {
     190:	01dd0000 	.inst	0x01dd0000 ; undefined
    printf("FIQ HANDLER\n");
     194:	5c0b0000 	ldr	d0, 16194 <__bss_end+0x15784>
     198:	00000000 	.inst	0x00000000 ; undefined
void __attribute__ ((interrupt ("FIQ"))) fast_irq_handler(void) {
     19c:	e9000000 	.inst	0xe9000000 ; undefined
    printf("FIQ HANDLER\n");
     1a0:	0e000001 	tbl	v1.8b, {v0.16b}, v0.8b
    while(1);
     1a4:	00000070 	.inst	0x00000070 ; undefined
    str  xzr, [x0], #8
     1a8:	00000000 	.inst	0x00000000 ; undefined
    subs x1, x1, #8
     1ac:	000001f5 	.inst	0x000001f5 ; undefined
    b.gt memzero
     1b0:	0950010d 	.inst	0x0950010d ; undefined
    ret
     1b4:	0008f003 	.inst	0x0008f003 ; undefined
     1b8:	00000000 	.inst	0x00000000 ; undefined
     1bc:	51010d00 	sub	w0, w8, #0x43
void uart_init(){
     1c0:	00008302 	.inst	0x00008302 ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
     1c4:	1fdd0f00 	fmadd	h0, h24, h29, h3
    delay(150);
     1c8:	1fdd0000 	fmadd	h0, h0, h29, h0
void uart_init(){
     1cc:	18020000 	ldr	w0, 41cc <__bss_end+0x37bc>
     1d0:	29d50f0d 	ldp	w13, w3, [x24, #168]!
    *AUX_ENABLES = 0;
     1d4:	29d50000 	ldp	w0, w0, [x0, #168]!
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
     1d8:	60040000 	.inst	0x60040000 ; undefined
    *AUX_ENABLES = 0;
     1dc:	0e6b0f06 	sqadd	v6.4h, v24.4h, v11.4h
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
     1e0:	0e6b0000 	saddl	v0.4s, v0.4h, v11.4h
    *AUX_ENABLES = 0;
     1e4:	06050000 	.inst	0x06050000 ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
     1e8:	01180f0c 	.inst	0x01180f0c ; undefined
    *AUX_ENABLES = 0;
     1ec:	01180000 	.inst	0x01180000 ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
     1f0:	07050000 	.inst	0x07050000 ; undefined
    gpio->GPPUD = 0;
     1f4:	25250f0c 	whilelo	p12.b, w24, w5
    delay(150);
     1f8:	25250000 	.inst	0x25250000 ; undefined
    gpio->GPPUDCLK0 = (1 << 14) | (1 << 15); 
     1fc:	62040000 	.inst	0x62040000 ; undefined
     200:	002a0006 	.inst	0x002a0006 ; NYI
    delay(150);
     204:	00020000 	.inst	0x00020000 ; undefined
    gpio->GPPUDCLK0 = (1 << 14) | (1 << 15); 
     208:	000000dd 	.inst	0x000000dd ; undefined
    delay(150);
     20c:	01080108 	.inst	0x01080108 ; undefined
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
     210:	00780000 	.inst	0x00780000 ; undefined
    mini_uart->AUX_MU_IIR_REG = 0x3 << 1; 
     214:	00000000 	.inst	0x00000000 ; undefined
    gpio->GPPUDCLK0 = 0; 
     218:	00d00000 	.inst	0x00d00000 ; undefined
    mini_uart->AUX_MU_BAUD_REG = 271;
     21c:	00000000 	.inst	0x00000000 ; undefined
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
     220:	2d540000 	ldp	s0, s0, [x0, #160]
    *(reg32*)0x3f215068 = 271;
     224:	29e10000 	ldp	w0, w0, [x0, #-248]!
     228:	2d700000 	ldp	s0, s0, [x0, #-128]
    gpio->GPPUDCLK0 = 0; 
     22c:	80010000 	.inst	0x80010000 ; undefined
    *AUX_ENABLES = 1;
     230:	000001d7 	.inst	0x000001d7 ; undefined
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
     234:	00f10004 	.inst	0x00f10004 ; undefined
     238:	01080000 	.inst	0x01080000 ; undefined
     23c:	000008cc 	.inst	0x000008cc ; undefined
     240:	002dcb0c 	.inst	0x002dcb0c ; NYI
    mini_uart->AUX_MU_IIR_REG = 0x3 << 1; 
     244:	0029e100 	.inst	0x0029e100 ; NYI
    mini_uart->AUX_MU_BAUD_REG = 271;
     248:	0000d000 	.inst	0x0000d000 ; undefined
    *AUX_ENABLES = 1;
     24c:	00000000 	.inst	0x00000000 ; undefined
}
     250:	0000d800 	.inst	0x0000d800 ; undefined
    *(reg32*)0x3f215068 = 271;
     254:	00000000 	.inst	0x00000000 ; undefined
    *AUX_ENABLES = 1;
     258:	00016000 	.inst	0x00016000 ; undefined
}
     25c:	0009a700 	.inst	0x0009a700 ; undefined
     260:	05040200 	.inst	0x05040200 ; undefined
     264:	00746e69 	.inst	0x00746e69 ; undefined
     268:	002dac03 	.inst	0x002dac03 ; NYI
     26c:	2a1b0100 	orr	w0, w8, w27
    return mini_uart->AUX_MU_LSR_REG & 0x1;
     270:	00000190 	.inst	0x00000190 ; undefined
     274:	00000000 	.inst	0x00000000 ; undefined
     278:	00000018 	.inst	0x00000018 ; undefined
     27c:	00000000 	.inst	0x00000000 ; undefined
}
     280:	00729c01 	.inst	0x00729c01 ; undefined
     284:	a4040000 	ld1rqb	{z0.b}, p0/z, [x0, x4]
     288:	00000001 	.inst	0x00000001 ; undefined
     28c:	ce000000 	eor3	v0.16b, v0.16b, v0.16b, v0.16b
    uint8 data = mini_uart->AUX_MU_IO_REG & 0xFF;
     290:	05000001 	orr	z1.s, z1.s, #0x1
     294:	03095001 	.inst	0x03095001 ; undefined
     298:	00000998 	.inst	0x00000998 ; undefined
     29c:	00000000 	.inst	0x00000000 ; undefined
}
     2a0:	7e030000 	.inst	0x7e030000 ; undefined
     2a4:	0100002d 	.inst	0x0100002d ; undefined
     2a8:	01702a17 	.inst	0x01702a17 ; undefined
     2ac:	00000000 	.inst	0x00000000 ; undefined
    mini_uart->AUX_MU_IO_REG = data;
     2b0:	00180000 	.inst	0x00180000 ; undefined
void uart_write(uint8 data){
     2b4:	00000000 	.inst	0x00000000 ; undefined
    mini_uart->AUX_MU_IO_REG = data;
     2b8:	9c010000 	ldr	q0, 22b8 <__bss_end+0x18a8>
     2bc:	000000ac 	.inst	0x000000ac ; undefined
     2c0:	00018404 	.inst	0x00018404 ; undefined
}
     2c4:	00000000 	.inst	0x00000000 ; undefined
     2c8:	0001ce00 	.inst	0x0001ce00 ; undefined
     2cc:	50010500 	adr	x0, 236e <__bss_end+0x195e>
    uart_write(data);
     2d0:	09880309 	.inst	0x09880309 ; undefined
	...
     2dc:	002df803 	.inst	0x002df803 ; NYI
    while (num/d >= base)
     2e0:	2c130100 	stnp	s0, s0, [x8, #152]
     2e4:	00000150 	.inst	0x00000150 ; undefined
    unsigned int d=1;
     2e8:	00000000 	.inst	0x00000000 ; undefined
     2ec:	00000018 	.inst	0x00000018 ; undefined
        d*=base;
     2f0:	00000000 	.inst	0x00000000 ; undefined
    while (num/d >= base)
     2f4:	00e69c01 	.inst	0x00e69c01 ; undefined
     2f8:	64040000 	.inst	0x64040000 ; undefined
     2fc:	00000001 	.inst	0x00000001 ; undefined
    while (d!=0) {
     300:	ce000000 	eor3	v0.16b, v0.16b, v0.16b, v0.16b
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
     304:	05000001 	orr	z1.s, z1.s, #0x1
     308:	03095001 	.inst	0x03095001 ; undefined
     30c:	00000968 	.inst	0x00000968 ; undefined
     310:	00000000 	.inst	0x00000000 ; undefined
        if (n || dgt>0 || d==0) {
     314:	99030000 	stlur	w0, [x0, #48]
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
     318:	0100002d 	.inst	0x0100002d ; undefined
        if (n || dgt>0 || d==0) {
     31c:	01302c0f 	.inst	0x01302c0f ; undefined
     320:	00000000 	.inst	0x00000000 ; undefined
     324:	00180000 	.inst	0x00180000 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
     328:	00000000 	.inst	0x00000000 ; undefined
        if (n || dgt>0 || d==0) {
     32c:	9c010000 	ldr	q0, 232c <__bss_end+0x191c>
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
     330:	00000120 	.inst	0x00000120 ; undefined
        if (n || dgt>0 || d==0) {
     334:	00014404 	.inst	0x00014404 ; undefined
        num%= d;
     338:	00000000 	.inst	0x00000000 ; undefined
        d/=base;
     33c:	0001ce00 	.inst	0x0001ce00 ; undefined
        if (n || dgt>0 || d==0) {
     340:	50010500 	adr	x0, 23e2 <__bss_end+0x19d2>
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
     344:	09500309 	.inst	0x09500309 ; undefined
	...
     350:	002de103 	.inst	0x002de103 ; NYI
     354:	2c0b0100 	stnp	s0, s0, [x8, #88]
     358:	00000110 	.inst	0x00000110 ; undefined
     35c:	00000000 	.inst	0x00000000 ; undefined
            ++n;
     360:	00000018 	.inst	0x00000018 ; undefined
    while (d!=0) {
     364:	00000000 	.inst	0x00000000 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
     368:	015a9c01 	.inst	0x015a9c01 ; undefined
    while (d!=0) {
     36c:	24040000 	cmphs	p0.b, p0/z, z0.b, z4.b
    *bf=0;
     370:	00000001 	.inst	0x00000001 ; undefined
    }
     374:	ce000000 	eor3	v0.16b, v0.16b, v0.16b, v0.16b
    while (d!=0) {
     378:	05000001 	orr	z1.s, z1.s, #0x1
    *bf=0;
     37c:	03095001 	.inst	0x03095001 ; undefined
    }
     380:	00000938 	.inst	0x00000938 ; undefined
     384:	00000000 	.inst	0x00000000 ; undefined
    unsigned int d=1;
     388:	bd030000 	str	s0, [x0, #768]
     38c:	0100002d 	.inst	0x0100002d ; undefined
    *(*((char**)p))++ = c;
     390:	00f02c07 	.inst	0x00f02c07 ; undefined
     394:	00000000 	.inst	0x00000000 ; undefined
     398:	00180000 	.inst	0x00180000 ; undefined
     39c:	00000000 	.inst	0x00000000 ; undefined
    }
     3a0:	9c010000 	ldr	q0, 23a0 <__bss_end+0x1990>
     3a4:	00000194 	.inst	0x00000194 ; undefined
     3a8:	00010404 	.inst	0x00010404 ; undefined
     3ac:	00000000 	.inst	0x00000000 ; undefined
    {
     3b0:	0001ce00 	.inst	0x0001ce00 ; undefined
    char fc=z? '0' : ' ';
     3b4:	50010500 	adr	x0, 2456 <__bss_end+0x1a46>
    {
     3b8:	09280309 	.inst	0x09280309 ; undefined
	...
     3c4:	002db103 	.inst	0x002db103 ; NYI
     3c8:	06020100 	.inst	0x06020100 ; undefined
     3cc:	000000d0 	.inst	0x000000d0 ; undefined
     3d0:	00000000 	.inst	0x00000000 ; undefined
    char fc=z? '0' : ' ';
     3d4:	00000018 	.inst	0x00000018 ; undefined
     3d8:	00000000 	.inst	0x00000000 ; undefined
    while (*p++ && n > 0)
     3dc:	01ce9c01 	.inst	0x01ce9c01 ; undefined
    char fc=z? '0' : ' ';
     3e0:	e4040000 	.inst	0xe4040000 ; undefined
    {
     3e4:	00000000 	.inst	0x00000000 ; undefined
    while (*p++ && n > 0)
     3e8:	ce000000 	eor3	v0.16b, v0.16b, v0.16b, v0.16b
     3ec:	05000001 	orr	z1.s, z1.s, #0x1
     3f0:	03095001 	.inst	0x03095001 ; undefined
     3f4:	00000918 	.inst	0x00000918 ; undefined
     3f8:	00000000 	.inst	0x00000000 ; undefined
     3fc:	25060000 	cmpge	p0.b, p0/z, z0.b, #6
     400:	25000025 	cmpge	p5.b, p0/z, z1.b, #0
     404:	02000025 	.inst	0x02000025 ; undefined
        n--;
     408:	2a000662 	orr	w2, w19, w0, lsl #1
     40c:	02000000 	.inst	0x02000000 ; undefined
    while (*p++ && n > 0)
     410:	00015900 	.inst	0x00015900 ; undefined
    while (n-- > 0)
     414:	6a010800 	ands	w0, w0, w1, lsl #2
     418:	00000003 	.inst	0x00000003 ; undefined
     41c:	00000000 	.inst	0x00000000 ; undefined
        putf(putp,fc);
     420:	2c000000 	stnp	s0, s0, [x0]
     424:	00000000 	.inst	0x00000000 ; undefined
     428:	16000000 	b	fffffffff8000428 <__bss_end+0xfffffffff7fffa18>
    while (n-- > 0)
     42c:	e100002e 	.inst	0xe100002e ; undefined
     430:	70000029 	adr	x9, 437 <putchw+0x87>
     434:	0100002d 	.inst	0x0100002d ; undefined
     438:	00002a80 	.inst	0x00002a80 ; undefined
    while ((ch= *bf++))
     43c:	6d000200 	stp	d0, d0, [x16]
     440:	08000001 	stxrb	w0, w1, [x0]
     444:	0003b501 	.inst	0x0003b501 ; undefined
        putf(putp,ch);
     448:	0001a800 	.inst	0x0001a800 ; undefined
     44c:	00000000 	.inst	0x00000000 ; undefined
    while ((ch= *bf++))
     450:	0001b800 	.inst	0x0001b800 ; undefined
     454:	00000000 	.inst	0x00000000 ; undefined
    }
     458:	002e2600 	.inst	0x002e2600 ; NYI
     45c:	0029e100 	.inst	0x0029e100 ; NYI
     460:	002d7000 	.inst	0x002d7000 ; NYI
     464:	6a800100 	ands	w0, w8, w0, asr #0
     468:	04000004 	add	z4.b, p0/m, z4.b, z0.b
    while (n-- > 0)
     46c:	00018100 	.inst	0x00018100 ; undefined
     470:	cc010800 	.inst	0xcc010800 ; undefined
     474:	0c000008 	st4	{v8.8b-v11.8b}, [x0]
     478:	00002e62 	.inst	0x00002e62 ; undefined
     47c:	000029e1 	.inst	0x000029e1 ; undefined
    {
     480:	000001c0 	.inst	0x000001c0 ; undefined
     484:	00000000 	.inst	0x00000000 ; undefined
     488:	00000118 	.inst	0x00000118 ; undefined
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
     48c:	00000000 	.inst	0x00000000 ; undefined
     490:	000003f6 	.inst	0x000003f6 ; undefined
    {
     494:	000009d0 	.inst	0x000009d0 ; undefined
     498:	002f8902 	.inst	0x002f8902 ; NYI
                    ui2a(va_arg(va, unsigned int),10,0,bf);
     49c:	17030200 	b	fffffffffc0c0c9c <__bss_end+0xfffffffffc0c028c>
    {
     4a0:	0000003d 	.inst	0x0000003d ; undefined
     4a4:	8a080103 	and	x3, x8, x8
     4a8:	03000022 	.inst	0x03000022 ; undefined
        *bf++ = '-';
     4ac:	04300702 	sub	z2.b, z24.b, z16.b
     4b0:	d5020000 	msr	s0_2_c0_c0_0, x0
    {
     4b4:	0200002e 	.inst	0x0200002e ; undefined
     4b8:	00571605 	.inst	0x00571605 ; undefined
     4bc:	04030000 	subr	z0.b, p0/m, z0.b, z0.b
    while ((ch=*(fmt++))) {
     4c0:	00204d07 	.inst	0x00204d07 ; NYI
     4c4:	00570400 	.inst	0x00570400 ; undefined
        if (ch!='%')
     4c8:	08030000 	stxrb	w3, w0, [x0]
     4cc:	000b6307 	.inst	0x000b6307 ; undefined
    while ((ch=*(fmt++))) {
     4d0:	06010300 	.inst	0x06010300 ; undefined
            putf(putp,ch);
     4d4:	00002116 	.inst	0x00002116 ; undefined
     4d8:	a9050203 	stp	x3, x0, [x16, #80]
    while ((ch=*(fmt++))) {
     4dc:	05000005 	orr	z5.s, z5.s, #0x1
     4e0:	6e690504 	uhadd	v4.8h, v8.8h, v9.8h
    }
     4e4:	08030074 	stxrb	w3, w20, [x3]
     4e8:	00175f05 	.inst	0x00175f05 ; undefined
     4ec:	1db40200 	.inst	0x1db40200 ; undefined
     4f0:	0d020000 	.inst	0x0d020000 ; undefined
     4f4:	00005e1f 	.inst	0x00005e1f ; undefined
     4f8:	234c0600 	.inst	0x234c0600 ; undefined
     4fc:	032c0000 	.inst	0x032c0000 ; undefined
            ch=*(fmt++);
     500:	012f1007 	.inst	0x012f1007 ; undefined
            if (ch=='0') {
     504:	4b070000 	sub	w0, w0, w7
     508:	0300000a 	.inst	0x0300000a ; undefined
            ch=*(fmt++);
     50c:	00860b08 	.inst	0x00860b08 ; undefined
            char lz=0;
     510:	07000000 	.inst	0x07000000 ; undefined
            if (ch>='0' && ch<='9') {
     514:	00001d6b 	.inst	0x00001d6b ; undefined
    int num=0;
     518:	860b0903 	.inst	0x860b0903 ; undefined
            if (ch>='0' && ch<='9') {
     51c:	04000000 	add	z0.b, p0/m, z0.b, z0.b
     520:	002b8b07 	.inst	0x002b8b07 ; NYI
     524:	0b0a0300 	add	w0, w24, w10
            switch (ch) {
     528:	00000086 	.inst	0x00000086 ; undefined
     52c:	025b0708 	.inst	0x025b0708 ; undefined
     530:	0b030000 	add	w0, w0, w3
     534:	0000860b 	.inst	0x0000860b ; undefined
     538:	75070c00 	.inst	0x75070c00 ; undefined
     53c:	0300001c 	.inst	0x0300001c ; undefined
     540:	00860b0c 	.inst	0x00860b0c ; undefined
     544:	07100000 	.inst	0x07100000 ; undefined
                    ui2a(va_arg(va, unsigned int),10,0,bf);
     548:	000021bc 	.inst	0x000021bc ; undefined
     54c:	860b0d03 	.inst	0x860b0d03 ; undefined
     550:	14000000 	b	550 <tfp_format+0xd0>
     554:	000e2707 	.inst	0x000e2707 ; undefined
     558:	0b0e0300 	add	w0, w24, w14
     55c:	00000086 	.inst	0x00000086 ; undefined
    ui2a(num,10,0,bf);
     560:	10450718 	adr	x24, 8a640 <__bss_end+0x89c30>
     564:	0f030000 	.inst	0x0f030000 ; undefined
     568:	0000860b 	.inst	0x0000860b ; undefined
    else if (ch>='a' && ch<='f')
     56c:	bc071c00 	str	s0, [x0, #113]!
     570:	03000020 	.inst	0x03000020 ; undefined
    else if (ch>='A' && ch<='F')
     574:	00860b10 	.inst	0x00860b10 ; undefined
     578:	07200000 	.inst	0x07200000 ; undefined
        if (digit>base) break;
     57c:	000015ec 	.inst	0x000015ec ; undefined
     580:	860b1103 	.inst	0x860b1103 ; undefined
        ch=*p++;
     584:	24000000 	cmphs	p0.b, p0/z, z0.b, z0.b
        num=num*base+digit;
     588:	0012f107 	.inst	0x0012f107 ; undefined
        ch=*p++;
     58c:	0b120300 	add	w0, w24, w18
    else if (ch>='a' && ch<='f')
     590:	00000086 	.inst	0x00000086 ; undefined
    else if (ch>='A' && ch<='F')
     594:	4c020028 	.inst	0x4c020028 ; undefined
    if (ch>='0' && ch<='9')
     598:	03000023 	.inst	0x03000023 ; undefined
        return ch-'A'+10;
     59c:	00920213 	.inst	0x00920213 ; undefined
    else if (ch>='a' && ch<='f')
     5a0:	8c080000 	.inst	0x8c080000 ; undefined
    else if (ch>='A' && ch<='F')
     5a4:	03000013 	.inst	0x03000013 ; undefined
    if (ch>='0' && ch<='9')
     5a8:	01470f16 	.inst	0x01470f16 ; undefined
     5ac:	08090000 	stxrb	w9, w0, [x0]
        return ch-'0';
     5b0:	00000086 	.inst	0x00000086 ; undefined
        if (digit>base) break;
     5b4:	0023f908 	.inst	0x0023f908 ; NYI
            switch (ch) {
     5b8:	1e170300 	.inst	0x1e170300 ; undefined
     5bc:	00000159 	.inst	0x00000159 ; undefined
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
     5c0:	012f0809 	.inst	0x012f0809 ; undefined
     5c4:	4c060000 	.inst	0x4c060000 ; undefined
     5c8:	a400002e 	ld1rqb	{z14.b}, p0/z, [x1, x0]
     5cc:	d9100504 	.inst	0xd9100504 ; undefined
     5d0:	07000002 	.inst	0x07000002 ; undefined
     5d4:	00002e92 	.inst	0x00002e92 ; undefined
     5d8:	860b0604 	.inst	0x860b0604 ; undefined
     5dc:	00000000 	.inst	0x00000000 ; undefined
     5e0:	002e9a07 	.inst	0x002e9a07 ; NYI
     5e4:	0b070400 	add	w0, w0, w7, lsl #1
                    putchw(putp,putf,w,lz,bf);
     5e8:	00000086 	.inst	0x00000086 ; undefined
     5ec:	2ea20704 	uhadd	v4.2s, v24.2s, v2.2s
     5f0:	08040000 	stxrb	w4, w0, [x0]
     5f4:	0000860b 	.inst	0x0000860b ; undefined
     5f8:	72070800 	ands	w0, w0, #0xe000000
     5fc:	0400002e 	add	z14.b, p0/m, z14.b, z1.b
                    break;
     600:	00860b09 	.inst	0x00860b09 ; undefined
            switch (ch) {
     604:	070c0000 	.inst	0x070c0000 ; undefined
     608:	00002eaa 	.inst	0x00002eaa ; undefined
                    i2a(va_arg(va, int),bf);
     60c:	860b0a04 	.inst	0x860b0a04 ; undefined
     610:	10000000 	adr	x0, 610 <tfp_format+0x190>
     614:	002e8407 	.inst	0x002e8407 ; NYI
     618:	0b0c0400 	add	w0, w0, w12, lsl #1
     61c:	00000086 	.inst	0x00000086 ; undefined
    if (num<0) {
     620:	2e8b0718 	.inst	0x2e8b0718 ; undefined
     624:	0d040000 	.inst	0x0d040000 ; undefined
        *bf++ = '-';
     628:	0000860b 	.inst	0x0000860b ; undefined
        num=-num;
     62c:	6d071c00 	stp	d0, d7, [x0, #112]
        *bf++ = '-';
     630:	0400002f 	add	z15.b, p0/m, z15.b, z1.b
     634:	00860b0f 	.inst	0x00860b0f ; undefined
     638:	07240000 	.inst	0x07240000 ; undefined
            switch (ch) {
     63c:	00002f74 	.inst	0x00002f74 ; undefined
     640:	860b1004 	.inst	0x860b1004 ; undefined
     644:	28000000 	stnp	w0, w0, [x0]
     648:	002ec007 	.inst	0x002ec007 ; NYI
     64c:	0b120400 	add	w0, w0, w18, lsl #1
    }
     650:	00000086 	.inst	0x00000086 ; undefined
     654:	2ec70730 	fminnmp	v16.4h, v25.4h, v7.4h
     658:	13040000 	sbfiz	w0, w0, #28, #1
     65c:	0000860b 	.inst	0x0000860b ; undefined
     660:	7b073400 	.inst	0x7b073400 ; undefined
     664:	0400002f 	add	z15.b, p0/m, z15.b, z1.b
     668:	00860b15 	.inst	0x00860b15 ; undefined
        return ch-'a'+10;
     66c:	073c0000 	.inst	0x073c0000 ; undefined
     670:	00002f82 	.inst	0x00002f82 ; undefined
                ch=*(fmt++);
     674:	860b1604 	.inst	0x860b1604 ; undefined
                lz=1;
     678:	40000000 	.inst	0x40000000 ; undefined
                ch=*(fmt++);
     67c:	002eb207 	.inst	0x002eb207 ; NYI
     680:	0b180400 	add	w0, w0, w24, lsl #1
                    putchw(putp,putf,w,0,va_arg(va, char*));
     684:	00000086 	.inst	0x00000086 ; undefined
     688:	2eb90748 	uhadd	v8.2s, v26.2s, v25.2s
     68c:	19040000 	stlurb	w0, [x0, #64]
     690:	0000860b 	.inst	0x0000860b ; undefined
     694:	ce074c00 	eor3	v0.16b, v0.16b, v7.16b, v19.16b
     698:	0400002e 	add	z14.b, p0/m, z14.b, z1.b
     69c:	00860b1b 	.inst	0x00860b1b ; undefined
     6a0:	07540000 	.inst	0x07540000 ; undefined
     6a4:	00002f56 	.inst	0x00002f56 ; undefined
     6a8:	860b1c04 	.inst	0x860b1c04 ; undefined
                    break;
     6ac:	58000000 	ldr	x0, 6ac <tfp_format+0x22c>
                    putf(putp,(char)(va_arg(va, int)));
     6b0:	002f1e07 	.inst	0x002f1e07 ; NYI
     6b4:	0b1e0400 	add	w0, w0, w30, lsl #1
     6b8:	00000086 	.inst	0x00000086 ; undefined
     6bc:	2f250760 	ushr	v0.2s, v27.2s, #27
     6c0:	1f040000 	fmadd	s0, s0, s4, s0
     6c4:	0000860b 	.inst	0x0000860b ; undefined
     6c8:	33076400 	bfxil	w0, w0, #7, #19
                    break;
     6cc:	0400002e 	add	z14.b, p0/m, z14.b, z1.b
                    putf(putp,ch);
     6d0:	00860b21 	.inst	0x00860b21 ; undefined
     6d4:	076c0000 	.inst	0x076c0000 ; undefined
     6d8:	00002e3a 	.inst	0x00002e3a ; undefined
                    ui2a(va_arg(va, unsigned int),10,0,bf);
     6dc:	860b2204 	.inst	0x860b2204 ; undefined
     6e0:	70000000 	adr	x0, 6e3 <tfp_format+0x263>
     6e4:	002f4607 	.inst	0x002f4607 ; NYI
     6e8:	0b240400 	add	w0, w0, w4, uxtb #1
     6ec:	00000086 	.inst	0x00000086 ; undefined
     6f0:	2f4e0778 	.inst	0x2f4e0778 ; undefined
     6f4:	25040000 	cmpge	p0.b, p0/z, z0.b, #4
     6f8:	0000860b 	.inst	0x0000860b ; undefined
                    i2a(va_arg(va, int),bf);
     6fc:	5d077c00 	.inst	0x5d077c00 ; undefined
     700:	0400002f 	add	z15.b, p0/m, z15.b, z1.b
     704:	00860b27 	.inst	0x00860b27 ; undefined
     708:	07840000 	.inst	0x07840000 ; undefined
     70c:	00002f65 	.inst	0x00002f65 ; undefined
     710:	860b2804 	.inst	0x860b2804 ; undefined
     714:	88000000 	stxr	w0, w0, [x0]
     718:	002f2c07 	.inst	0x002f2c07 ; NYI
                    putf(putp,(char)(va_arg(va, int)));
     71c:	0b2a0400 	add	w0, w0, w10, uxtb #1
     720:	00000086 	.inst	0x00000086 ; undefined
     724:	2edc0790 	fminnmp	v16.4h, v28.4h, v28.4h
     728:	2b040000 	adds	w0, w0, w4
     72c:	0000860b 	.inst	0x0000860b ; undefined
     730:	e6079400 	.inst	0xe6079400 ; undefined
     734:	0400002e 	add	z14.b, p0/m, z14.b, z1.b
     738:	00860b2c 	.inst	0x00860b2c ; undefined
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
     73c:	00980000 	.inst	0x00980000 ; undefined
     740:	002e4c02 	.inst	0x002e4c02 ; NYI
     744:	022f0400 	.inst	0x022f0400 ; undefined
     748:	0000015f 	.inst	0x0000015f ; undefined
     74c:	002e7f08 	.inst	0x002e7f08 ; NYI
     750:	15310400 	b	4c41750 <__bss_end+0x4c40d40>
     754:	000002f1 	.inst	0x000002f1 ; undefined
     758:	02d90809 	.inst	0x02d90809 ; undefined
                    putchw(putp,putf,w,0,va_arg(va, char*));
     75c:	3b0a0000 	.inst	0x3b0a0000 ; undefined
     760:	01000001 	.inst	0x01000001 ; undefined
     764:	03090805 	.inst	0x03090805 ; undefined
     768:	000009b8 	.inst	0x000009b8 ; undefined
     76c:	00000000 	.inst	0x00000000 ; undefined
     770:	00014d0a 	.inst	0x00014d0a ; undefined
     774:	17060100 	b	fffffffffc180b74 <__bss_end+0xfffffffffc180164>
     778:	09b00309 	.inst	0x09b00309 ; undefined
                    ui2a(va_arg(va, unsigned int),10,0,bf);
     77c:	00000000 	.inst	0x00000000 ; undefined
     780:	e50a0000 	.inst	0xe50a0000 ; undefined
     784:	01000002 	.inst	0x01000002 ; undefined
                    i2a(va_arg(va, int),bf);
     788:	03090e07 	.inst	0x03090e07 ; undefined
     78c:	000009a8 	.inst	0x000009a8 ; undefined
     790:	00000000 	.inst	0x00000000 ; undefined
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
     794:	002e7a0b 	.inst	0x002e7a0b ; NYI
     798:	062c0100 	.inst	0x062c0100 ; undefined
     79c:	000002d0 	.inst	0x000002d0 ; undefined
                    putf(putp,(char)(va_arg(va, int)));
     7a0:	00000000 	.inst	0x00000000 ; undefined
     7a4:	00000008 	.inst	0x00000008 ; undefined
     7a8:	00000000 	.inst	0x00000000 ; undefined
                    putchw(putp,putf,w,0,va_arg(va, char*));
     7ac:	03879c01 	.inst	0x03879c01 ; undefined
     7b0:	700c0000 	adr	x0, 187b3 <__bss_end+0x17da3>
     7b4:	112c0100 	add	w0, w8, #0xb00
     7b8:	00000387 	.inst	0x00000387 ; undefined
     7bc:	00000004 	.inst	0x00000004 ; undefined
    stdout_putf=putf;
     7c0:	00000000 	.inst	0x00000000 ; undefined
     7c4:	002ef00d 	.inst	0x002ef00d ; NYI
     7c8:	192c0100 	.inst	0x192c0100 ; undefined
    stdout_putp=putp;
     7cc:	0000038d 	.inst	0x0000038d ; undefined
    }
     7d0:	00000041 	.inst	0x00000041 ; undefined
     7d4:	0000003d 	.inst	0x0000003d ; undefined
     7d8:	0002d80e 	.inst	0x0002d80e ; undefined
     7dc:	00000000 	.inst	0x00000000 ; undefined
    {
     7e0:	00039400 	.inst	0x00039400 ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
     7e4:	50010f00 	adr	x0, 29c6 <__bss_end+0x1fb6>
     7e8:	5101f303 	sub	w3, w24, #0x7c
    {
     7ec:	08090000 	stxrb	w9, w0, [x0]
     7f0:	0000038d 	.inst	0x0000038d ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
     7f4:	1d080103 	.inst	0x1d080103 ; undefined
    va_start(va,fmt);
     7f8:	0b000021 	add	w1, w1, w0
    tfp_format(stdout_putp,stdout_putf,fmt,va);
     7fc:	00002e41 	.inst	0x00002e41 ; undefined
    va_start(va,fmt);
     800:	b0062801 	adrp	x1, c501000 <__bss_end+0xc5005f0>
     804:	00000002 	.inst	0x00000002 ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
     808:	18000000 	ldr	w0, 808 <tfp_printf+0x28>
    va_start(va,fmt);
     80c:	00000000 	.inst	0x00000000 ; undefined
     810:	01000000 	.inst	0x01000000 ; undefined
     814:	0003c19c 	.inst	0x0003c19c ; undefined
     818:	2ef01000 	.inst	0x2ef01000 ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
     81c:	28010000 	stnp	w0, w0, [x0, #8]
     820:	00003117 	.inst	0x00003117 ; undefined
     824:	00500100 	.inst	0x00500100 ; undefined
     828:	002e5811 	.inst	0x002e5811 ; NYI
    {
     82c:	07230100 	.inst	0x07230100 ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
     830:	00000031 	.inst	0x00000031 ; undefined
    {
     834:	00000290 	.inst	0x00000290 ; undefined
     838:	00000000 	.inst	0x00000000 ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
     83c:	00000014 	.inst	0x00000014 ; undefined
    }
     840:	00000000 	.inst	0x00000000 ; undefined
     844:	03f89c01 	.inst	0x03f89c01 ; undefined
     848:	f0120000 	adrp	x0, 24003000 <__bss_end+0x240025f0>
     84c:	0100002e 	.inst	0x0100002e ; undefined
    {
     850:	00310b24 	.inst	0x00310b24 ; NYI
    va_start(va,fmt);
     854:	007c0000 	.inst	0x007c0000 ; undefined
    {
     858:	007a0000 	.inst	0x007a0000 ; undefined
    va_start(va,fmt);
     85c:	13000000 	sbfx	w0, w0, #0, #1
     860:	00002f32 	.inst	0x00002f32 ; undefined
     864:	31071f01 	adds	w1, w24, #0x1c7
     868:	70000000 	adr	x0, 86b <tfp_sprintf+0x1b>
    tfp_format(&s,putcp,fmt,va);
     86c:	00000002 	.inst	0x00000002 ; undefined
    va_start(va,fmt);
     870:	18000000 	ldr	w0, 870 <tfp_sprintf+0x20>
    tfp_format(&s,putcp,fmt,va);
     874:	00000000 	.inst	0x00000000 ; undefined
    va_start(va,fmt);
     878:	01000000 	.inst	0x01000000 ; undefined
    tfp_format(&s,putcp,fmt,va);
     87c:	1fdd149c 	fmadd	h28, h4, h29, h5
     880:	09010000 	.inst	0x09010000 ; undefined
     884:	0001c006 	.inst	0x0001c006 ; undefined
     888:	00000000 	.inst	0x00000000 ; undefined
    {
     88c:	0000a400 	.inst	0x0000a400 ; undefined
    tfp_format(&s,putcp,fmt,va);
     890:	00000000 	.inst	0x00000000 ; undefined
     894:	619c0100 	.inst	0x619c0100 ; undefined
     898:	15000004 	b	40008a8 <__bss_end+0x3fffe98>
    {
     89c:	000001fc 	.inst	0x000001fc ; undefined
     8a0:	00000000 	.inst	0x00000000 ; undefined
    tfp_format(&s,putcp,fmt,va);
     8a4:	00000461 	.inst	0x00000461 ; undefined
    *(*((char**)p))++ = c;
     8a8:	0000044c 	.inst	0x0000044c ; undefined
     8ac:	0250010f 	.inst	0x0250010f ; undefined
    }
     8b0:	16009608 	b	fffffffff80260d0 <__bss_end+0xfffffffff80256c0>
     8b4:	00000210 	.inst	0x00000210 ; undefined
     8b8:	00000000 	.inst	0x00000000 ; undefined
     8bc:	00000461 	.inst	0x00000461 ; undefined
    asm volatile("loop : subs %0, %0, #1\n\t"
     8c0:	0250010f 	.inst	0x0250010f ; undefined
     8c4:	00009608 	.inst	0x00009608 ; undefined
}
     8c8:	002f1817 	.inst	0x002f1817 ; NYI
     8cc:	002f1800 	.inst	0x002f1800 ; NYI
    asm volatile("mrs %0, mpidr_el1\n\t"
     8d0:	0d050500 	.inst	0x0d050500 ; undefined
     8d4:	00077300 	.inst	0x00077300 ; undefined
}
     8d8:	0f000400 	movi	v0.2s, #0x0
     8dc:	08000003 	stxrb	w0, w3, [x0]
    asm volatile("mrs %0, CurrentEL\n\t"
     8e0:	0008cc01 	.inst	0x0008cc01 ; undefined
     8e4:	2ffb0c00 	.inst	0x2ffb0c00 ; undefined
}
     8e8:	29e10000 	ldp	w0, w0, [x0, #-248]!
     8ec:	02e00000 	.inst	0x02e00000 ; undefined
     8f0:	00000000 	.inst	0x00000000 ; undefined
     8f4:	05d80000 	mov	z0.d, p8/z, #0
     8f8:	00000000 	.inst	0x00000000 ; undefined
     8fc:	054d0000 	.inst	0x054d0000 ; undefined
     900:	0a070000 	and	w0, w0, w7
     904:	be020000 	.inst	0xbe020000 ; undefined
     908:	0200002f 	.inst	0x0200002f ; undefined
     90c:	003d1b28 	.inst	0x003d1b28 ; NYI
     910:	4f030000 	.inst	0x4f030000 ; undefined
     914:	20000015 	.inst	0x20000015 ; undefined
     918:	007c0003 	.inst	0x007c0003 ; undefined
     91c:	28040000 	stnp	w0, w0, [x0, #32]
     920:	7c000030 	stur	h16, [x1]
     924:	00000000 	.inst	0x00000000 ; undefined
     928:	002f8f04 	.inst	0x002f8f04 ; NYI
     92c:	00007c00 	.inst	0x00007c00 ; undefined
     930:	1f040800 	fmadd	s0, s0, s4, s2
     934:	7c000030 	stur	h16, [x1]
     938:	10000000 	adr	x0, 938 <__data_start+0x4c>
     93c:	002fd304 	.inst	0x002fd304 ; NYI
     940:	00007e00 	.inst	0x00007e00 ; undefined
     944:	15041800 	b	4106944 <__bss_end+0x4105f34>
     948:	7e000030 	.inst	0x7e000030 ; undefined
     94c:	1c000000 	ldr	s0, 94c <__data_start+0x60>
     950:	06080500 	.inst	0x06080500 ; undefined
     954:	6e690504 	uhadd	v4.8h, v8.8h, v9.8h
     958:	51020074 	sub	w20, w3, #0x80
     95c:	02000015 	.inst	0x02000015 ; undefined
     960:	00311863 	.inst	0x00311863 ; NYI
     964:	98020000 	ldrsw	x0, 4964 <__bss_end+0x3f54>
     968:	0100002f 	.inst	0x0100002f ; undefined
     96c:	009d1018 	.inst	0x009d1018 ; undefined
     970:	08070000 	stxrb	w7, w0, [x0]
     974:	000000a3 	.inst	0x000000a3 ; undefined
     978:	0000b308 	.inst	0x0000b308 ; undefined
     97c:	007c0900 	.inst	0x007c0900 ; undefined
     980:	b3090000 	.inst	0xb3090000 ; undefined
     984:	00000000 	.inst	0x00000000 ; undefined
     988:	1d08010a 	.inst	0x1d08010a ; undefined
     98c:	0b000021 	add	w1, w1, w0
     990:	00002fdd 	.inst	0x00002fdd ; undefined
     994:	910e1901 	add	x1, x8, #0x386
     998:	09000000 	.inst	0x09000000 ; undefined
     99c:	000a0003 	.inst	0x000a0003 ; undefined
     9a0:	00000000 	.inst	0x00000000 ; undefined
     9a4:	2fe90b00 	.inst	0x2fe90b00 ; undefined
     9a8:	1a010000 	adc	w0, w0, w1
     9ac:	00007c0e 	.inst	0x00007c0e ; undefined
     9b0:	08030900 	stxrb	w3, w0, [x8]
     9b4:	0000000a 	.inst	0x0000000a ; undefined
     9b8:	0c000000 	st4	{v0.8b-v3.8b}, [x0]
     9bc:	000009f9 	.inst	0x000009f9 ; undefined
     9c0:	5006e201 	adr	x1, e602 <__bss_end+0xdbf2>
     9c4:	00000008 	.inst	0x00000008 ; undefined
     9c8:	68000000 	.inst	0x68000000 ; undefined
     9cc:	00000000 	.inst	0x00000000 ; undefined
     9d0:	01000000 	.inst	0x01000000 ; undefined
     9d4:	0001ab9c 	.inst	0x0001ab9c ; undefined
     9d8:	00730d00 	.inst	0x00730d00 ; undefined
     9dc:	ab18e201 	adds	x1, x16, x24, lsl #56
     9e0:	a3000001 	.inst	0xa3000001 ; undefined
     9e4:	9f000000 	.inst	0x9f000000 ; undefined
     9e8:	0d000000 	st1	{v0.b}[0], [x0]
     9ec:	00746d66 	.inst	0x00746d66 ; undefined
     9f0:	ab20e201 	adds	x1, x16, x0, sxtx
     9f4:	e0000001 	.inst	0xe0000001 ; undefined
     9f8:	da000000 	sbc	x0, x0, x0
     9fc:	0e000000 	tbl	v0.8b, {v0.16b}, v0.8b
     a00:	0061760f 	.inst	0x0061760f ; undefined
     a04:	850de401 	prfw	pldl1strm, p1, [z0.s, #52]
     a08:	03000000 	.inst	0x03000000 ; undefined
     a0c:	107fb091 	adr	x17, 10001c <__bss_end+0xff60c>
     a10:	000001b1 	.inst	0x000001b1 ; undefined
     a14:	000008a8 	.inst	0x000008a8 ; undefined
     a18:	00000000 	.inst	0x00000000 ; undefined
     a1c:	0008a801 	.inst	0x0008a801 ; undefined
     a20:	00000000 	.inst	0x00000000 ; undefined
     a24:	00000800 	.inst	0x00000800 ; undefined
     a28:	00000000 	.inst	0x00000000 ; undefined
     a2c:	05e70100 	.inst	0x05e70100 ; undefined
     a30:	0000017a 	.inst	0x0000017a ; undefined
     a34:	0001c811 	.inst	0x0001c811 ; undefined
     a38:	00012e00 	.inst	0x00012e00 ; undefined
     a3c:	00012c00 	.inst	0x00012c00 ; undefined
     a40:	01be1100 	.inst	0x01be1100 ; undefined
     a44:	01540000 	.inst	0x01540000 ; undefined
     a48:	01520000 	.inst	0x01520000 ; undefined
     a4c:	12000000 	and	w0, w0, #0x1
     a50:	000008a8 	.inst	0x000008a8 ; undefined
     a54:	00000000 	.inst	0x00000000 ; undefined
     a58:	0000026d 	.inst	0x0000026d ; undefined
     a5c:	03500113 	.inst	0x03500113 ; undefined
     a60:	137fa891 	.inst	0x137fa891 ; undefined
     a64:	03095101 	.inst	0x03095101 ; undefined
     a68:	00000390 	.inst	0x00000390 ; undefined
     a6c:	00000000 	.inst	0x00000000 ; undefined
     a70:	03520113 	.inst	0x03520113 ; undefined
     a74:	135101f3 	.inst	0x135101f3 ; undefined
     a78:	91035301 	add	x1, x24, #0xd4
     a7c:	00007f80 	.inst	0x00007f80 ; undefined
     a80:	00b30807 	.inst	0x00b30807 ; undefined
     a84:	9e140000 	.inst	0x9e140000 ; undefined
     a88:	0100002f 	.inst	0x0100002f ; undefined
     a8c:	d3010ddb 	.inst	0xd3010ddb ; undefined
     a90:	15000001 	b	4000a94 <__bss_end+0x4000084>
     a94:	db010070 	.inst	0xdb010070 ; undefined
     a98:	00007c19 	.inst	0x00007c19 ; undefined
     a9c:	00631500 	.inst	0x00631500 ; undefined
     aa0:	b320db01 	.inst	0xb320db01 ; undefined
     aa4:	00000000 	.inst	0x00000000 ; undefined
     aa8:	0025250c 	.inst	0x0025250c ; NYI
     aac:	06d30100 	.inst	0x06d30100 ; undefined
     ab0:	000007e0 	.inst	0x000007e0 ; undefined
     ab4:	00000000 	.inst	0x00000000 ; undefined
     ab8:	00000068 	.inst	0x00000068 ; undefined
     abc:	00000000 	.inst	0x00000000 ; undefined
     ac0:	02329c01 	.inst	0x02329c01 ; undefined
     ac4:	660d0000 	.inst	0x660d0000 ; undefined
     ac8:	0100746d 	.inst	0x0100746d ; undefined
     acc:	01ab17d3 	.inst	0x01ab17d3 ; undefined
     ad0:	01800000 	.inst	0x01800000 ; undefined
     ad4:	017a0000 	.inst	0x017a0000 ; undefined
     ad8:	0f0e0000 	.inst	0x0f0e0000 ; undefined
     adc:	01006176 	.inst	0x01006176 ; undefined
     ae0:	00850dd5 	.inst	0x00850dd5 ; undefined
     ae4:	91030000 	add	x0, x0, #0xc0
     ae8:	40127fa0 	.inst	0x40127fa0 ; undefined
     aec:	00000008 	.inst	0x00000008 ; undefined
     af0:	6d000000 	stp	d0, d0, [x0]
     af4:	13000002 	sbfx	w2, w0, #0, #1
     af8:	f3035201 	.inst	0xf3035201 ; undefined
     afc:	01135001 	.inst	0x01135001 ; undefined
     b00:	80910353 	.inst	0x80910353 ; undefined
     b04:	0c00007f 	st4	{v31.8b, v0.8b, v1.8b, v2.8b}, [x3]
     b08:	000029d5 	.inst	0x000029d5 ; undefined
     b0c:	c006cd01 	.inst	0xc006cd01 ; undefined
     b10:	00000007 	.inst	0x00000007 ; undefined
     b14:	14000000 	b	b14 <__bss_end+0x104>
     b18:	00000000 	.inst	0x00000000 ; undefined
     b1c:	01000000 	.inst	0x01000000 ; undefined
     b20:	00026d9c 	.inst	0x00026d9c ; undefined
     b24:	2ff01600 	.inst	0x2ff01600 ; undefined
     b28:	cd010000 	.inst	0xcd010000 ; undefined
     b2c:	00007c18 	.inst	0x00007c18 ; undefined
     b30:	16500100 	b	fffffffff9400f30 <__bss_end+0xfffffffff9400520>
     b34:	00002fe4 	.inst	0x00002fe4 ; undefined
     b38:	9d24cd01 	.inst	0x9d24cd01 ; undefined
     b3c:	01000000 	.inst	0x01000000 ; undefined
     b40:	a90c0051 	stp	x17, x0, [x2, #192]
     b44:	0100002f 	.inst	0x0100002f ; undefined
     b48:	0480067e 	add	z30.s, p1/m, z30.s, z19.s
     b4c:	00000000 	.inst	0x00000000 ; undefined
     b50:	03380000 	.inst	0x03380000 ; undefined
     b54:	00000000 	.inst	0x00000000 ; undefined
     b58:	9c010000 	ldr	q0, 2b58 <__bss_end+0x2148>
     b5c:	00000474 	.inst	0x00000474 ; undefined
     b60:	002ff017 	.inst	0x002ff017 ; NYI
     b64:	177e0100 	b	fffffffffdf80f64 <__bss_end+0xfffffffffdf80554>
     b68:	0000007c 	.inst	0x0000007c ; undefined
     b6c:	000001d8 	.inst	0x000001d8 ; undefined
     b70:	000001cc 	.inst	0x000001cc ; undefined
     b74:	002fe417 	.inst	0x002fe417 ; NYI
     b78:	227e0100 	.inst	0x227e0100 ; undefined
     b7c:	00000091 	.inst	0x00000091 ; undefined
     b80:	0000026c 	.inst	0x0000026c ; undefined
     b84:	00000260 	.inst	0x00000260 ; undefined
     b88:	746d660d 	.inst	0x746d660d ; undefined
     b8c:	2d7e0100 	ldp	s0, s0, [x8, #-16]
     b90:	000001ab 	.inst	0x000001ab ; undefined
     b94:	00000306 	.inst	0x00000306 ; undefined
     b98:	000002f4 	.inst	0x000002f4 ; undefined
     b9c:	0061760d 	.inst	0x0061760d ; undefined
     ba0:	853a7e01 	ldff1w	{z1.s}, p7/z, [x16, z26.s, uxtw #2]
     ba4:	19000000 	stlurb	w0, [x0]
     ba8:	cb000004 	sub	x4, x0, x0
     bac:	0f000003 	.inst	0x0f000003 ; undefined
     bb0:	01006662 	.inst	0x01006662 ; undefined
     bb4:	04740a80 	.inst	0x04740a80 ; undefined
     bb8:	91020000 	add	x0, x0, #0x80
     bbc:	68631870 	.inst	0x68631870 ; undefined
     bc0:	0a820100 	and	w0, w8, w2, asr #0
     bc4:	000000b3 	.inst	0x000000b3 ; undefined
     bc8:	0000091f 	.inst	0x0000091f ; undefined
     bcc:	00000905 	.inst	0x00000905 ; undefined
     bd0:	002fcd19 	.inst	0x002fcd19 ; NYI
     bd4:	05c90100 	.inst	0x05c90100 ; undefined
     bd8:	000004e4 	.inst	0x000004e4 ; undefined
     bdc:	00000000 	.inst	0x00000000 ; undefined
     be0:	0000301a 	.inst	0x0000301a ; undefined
     be4:	00046300 	.inst	0x00046300 ; undefined
     be8:	7a6c1800 	.inst	0x7a6c1800 ; undefined
     bec:	12890100 	mov	w0, #0xffffb7f7            	// #-18441
     bf0:	000000b3 	.inst	0x000000b3 ; undefined
     bf4:	00000a38 	.inst	0x00000a38 ; undefined
     bf8:	00000a26 	.inst	0x00000a26 ; undefined
     bfc:	01007718 	.inst	0x01007718 ; undefined
     c00:	007e118d 	.inst	0x007e118d ; undefined
     c04:	0b0a0000 	add	w0, w0, w10
     c08:	0af60000 	bic	w0, w0, w22, ror #0
     c0c:	7c1b0000 	stur	h0, [x0, #-80]
     c10:	20000005 	.inst	0x20000005 ; undefined
     c14:	00000006 	.inst	0x00000006 ; undefined
     c18:	00000000 	.inst	0x00000000 ; undefined
     c1c:	00000090 	.inst	0x00000090 ; undefined
     c20:	6d15af01 	stp	d1, d11, [x24, #344]
     c24:	11000003 	add	w3, w0, #0x0
     c28:	00000595 	.inst	0x00000595 ; undefined
     c2c:	00000be3 	.inst	0x00000be3 ; undefined
     c30:	00000bdb 	.inst	0x00000bdb ; undefined
     c34:	00058911 	.inst	0x00058911 ; undefined
     c38:	000c4500 	.inst	0x000c4500 ; undefined
     c3c:	000c4100 	.inst	0x000c4100 ; undefined
     c40:	f01c0000 	adrp	x0, 38003000 <__bss_end+0x380025f0>
     c44:	d0000004 	adrp	x4, 2000 <__bss_end+0x15f0>
     c48:	01000000 	.inst	0x01000000 ; undefined
     c4c:	03ea1494 	.inst	0x03ea1494 ; undefined
     c50:	241d0000 	cmphs	p0.b, p0/z, z0.b, z29.b
     c54:	1d000005 	.inst	0x1d000005 ; undefined
     c58:	00000518 	.inst	0x00000518 ; undefined
     c5c:	00050c1d 	.inst	0x00050c1d ; undefined
     c60:	05011100 	orr	z0.s, z0.s, #0xc000007f
     c64:	0c810000 	st4	{v0.8b-v3.8b}, [x0], x1
     c68:	0c7b0000 	.inst	0x0c7b0000 ; undefined
     c6c:	d01e0000 	adrp	x0, 3c002000 <__bss_end+0x3c0015f0>
     c70:	1f000000 	fmadd	s0, s0, s0, s0
     c74:	00000530 	.inst	0x00000530 ; undefined
     c78:	00000cd2 	.inst	0x00000cd2 ; undefined
     c7c:	00000cca 	.inst	0x00000cca ; undefined
     c80:	00053a1f 	.inst	0x00053a1f ; undefined
     c84:	000d3400 	.inst	0x000d3400 ; undefined
     c88:	000d3000 	.inst	0x000d3000 ; undefined
     c8c:	05461f00 	.inst	0x05461f00 ; undefined
     c90:	0d6e0000 	.inst	0x0d6e0000 ; undefined
     c94:	0d6a0000 	.inst	0x0d6a0000 ; undefined
     c98:	5f200000 	.inst	0x5f200000 ; undefined
     c9c:	90000005 	adrp	x5, 0 <_boot_entry>
     ca0:	00000005 	.inst	0x00000005 ; undefined
     ca4:	00000000 	.inst	0x00000000 ; undefined
     ca8:	00000110 	.inst	0x00000110 ; undefined
     cac:	11136701 	add	w1, w24, #0x4d9
     cb0:	00000570 	.inst	0x00000570 ; undefined
     cb4:	00000dac 	.inst	0x00000dac ; undefined
     cb8:	00000da6 	.inst	0x00000da6 ; undefined
     cbc:	21000000 	.inst	0x21000000 ; undefined
     cc0:	000005e8 	.inst	0x000005e8 ; undefined
     cc4:	00000000 	.inst	0x00000000 ; undefined
     cc8:	000005a1 	.inst	0x000005a1 ; undefined
     ccc:	00060022 	.inst	0x00060022 ; undefined
     cd0:	00000000 	.inst	0x00000000 ; undefined
     cd4:	00048b00 	.inst	0x00048b00 ; undefined
     cd8:	00041b00 	.inst	0x00041b00 ; undefined
     cdc:	50011300 	adr	x0, 2f3e <__bss_end+0x252e>
     ce0:	13008502 	.inst	0x13008502 ; undefined
     ce4:	84025101 	ld1b	{z1.s}, p4/z, [x8, z2.s, uxtw]
     ce8:	54011300 	b.eq	2f48 <__bss_end+0x2538>  // b.none
     cec:	00008802 	.inst	0x00008802 ; undefined
     cf0:	0006ac22 	.inst	0x0006ac22 ; undefined
     cf4:	00000000 	.inst	0x00000000 ; undefined
     cf8:	00048b00 	.inst	0x00048b00 ; undefined
     cfc:	00043e00 	.inst	0x00043e00 ; undefined
     d00:	50011300 	adr	x0, 2f62 <__bss_end+0x2552>
     d04:	13008502 	.inst	0x13008502 ; undefined
     d08:	84025101 	ld1b	{z1.s}, p4/z, [x8, z2.s, uxtw]
     d0c:	53011300 	ubfx	w0, w24, #1, #4
     d10:	23003001 	.inst	0x23003001 ; undefined
     d14:	000006cc 	.inst	0x000006cc ; undefined
     d18:	00000000 	.inst	0x00000000 ; undefined
     d1c:	00000452 	.inst	0x00000452 ; undefined
     d20:	02500113 	.inst	0x02500113 ; undefined
     d24:	24000085 	cmphs	p5.b, p0/z, z4.b, z0.b
     d28:	000006d8 	.inst	0x000006d8 ; undefined
     d2c:	00000000 	.inst	0x00000000 ; undefined
     d30:	02500113 	.inst	0x02500113 ; undefined
     d34:	00000085 	.inst	0x00000085 ; undefined
     d38:	0004dc24 	.inst	0x0004dc24 ; undefined
     d3c:	00000000 	.inst	0x00000000 ; undefined
     d40:	50011300 	adr	x0, 2fa2 <__bss_end+0x2592>
     d44:	00008502 	.inst	0x00008502 ; undefined
     d48:	00b32500 	.inst	0x00b32500 ; undefined
     d4c:	04840000 	.inst	0x04840000 ; undefined
     d50:	84260000 	prfb	pldl1keep, p0, [x0, z6.s, uxtw]
     d54:	0b000004 	add	w4, w0, w0
     d58:	07080a00 	.inst	0x07080a00 ; undefined
     d5c:	0000064d 	.inst	0x0000064d ; undefined
     d60:	00300e14 	.inst	0x00300e14 ; NYI
     d64:	0d710100 	.inst	0x0d710100 ; undefined
     d68:	0004f001 	.inst	0x0004f001 ; undefined
     d6c:	2ff02700 	.inst	0x2ff02700 ; undefined
     d70:	71010000 	subs	w0, w0, #0x40
     d74:	00007c1a 	.inst	0x00007c1a ; undefined
     d78:	2fe42700 	.inst	0x2fe42700 ; undefined
     d7c:	71010000 	subs	w0, w0, #0x40
     d80:	00009125 	.inst	0x00009125 ; undefined
     d84:	006e1500 	.inst	0x006e1500 ; undefined
     d88:	7e2e7101 	.inst	0x7e2e7101 ; undefined
     d8c:	15000000 	b	4000d8c <__bss_end+0x400037c>
     d90:	7101007a 	subs	w26, w3, #0x40
     d94:	0000b336 	.inst	0x0000b336 ; undefined
     d98:	66621500 	.inst	0x66621500 ; undefined
     d9c:	3f710100 	.inst	0x3f710100 ; undefined
     da0:	000001ab 	.inst	0x000001ab ; undefined
     da4:	00636628 	.inst	0x00636628 ; undefined
     da8:	b30a7301 	.inst	0xb30a7301 ; undefined
     dac:	28000000 	stnp	w0, w0, [x0]
     db0:	01006863 	.inst	0x01006863 ; undefined
     db4:	00b30a74 	.inst	0x00b30a74 ; undefined
     db8:	70280000 	adr	x0, 50dbb <__bss_end+0x503ab>
     dbc:	0b750100 	.inst	0x0b750100 ; undefined
     dc0:	000001ab 	.inst	0x000001ab ; undefined
     dc4:	32612900 	.inst	0x32612900 ; undefined
     dc8:	62010069 	.inst	0x62010069 ; undefined
     dcc:	0000b30d 	.inst	0x0000b30d ; undefined
     dd0:	05530100 	mov	z0.h, p3/z, #8
     dd4:	63150000 	.inst	0x63150000 ; undefined
     dd8:	62010068 	.inst	0x62010068 ; undefined
     ddc:	0000b316 	.inst	0x0000b316 ; undefined
     de0:	72731500 	.inst	0x72731500 ; undefined
     de4:	62010063 	.inst	0x62010063 ; undefined
     de8:	00055321 	.inst	0x00055321 ; undefined
     dec:	2fb92700 	.inst	0x2fb92700 ; undefined
     df0:	62010000 	.inst	0x62010000 ; undefined
     df4:	00007e29 	.inst	0x00007e29 ; undefined
     df8:	2fa42700 	.inst	0x2fa42700 ; undefined
     dfc:	62010000 	.inst	0x62010000 ; undefined
     e00:	00055933 	.inst	0x00055933 ; undefined
     e04:	00702800 	.inst	0x00702800 ; undefined
     e08:	ab0b6401 	adds	x1, x0, x11, lsl #25
     e0c:	28000001 	stnp	w1, w0, [x0]
     e10:	006d756e 	.inst	0x006d756e ; undefined
     e14:	7e096501 	.inst	0x7e096501 ; undefined
     e18:	2a000000 	orr	w0, w0, w0
     e1c:	00002ff5 	.inst	0x00002ff5 ; undefined
     e20:	7e096601 	.inst	0x7e096601 ; undefined
     e24:	00000000 	.inst	0x00000000 ; undefined
     e28:	01ab0807 	.inst	0x01ab0807 ; undefined
     e2c:	08070000 	stxrb	w7, w0, [x0]
     e30:	0000007e 	.inst	0x0000007e ; undefined
     e34:	64326129 	.inst	0x64326129 ; undefined
     e38:	0c570100 	.inst	0x0c570100 ; undefined
     e3c:	0000007e 	.inst	0x0000007e ; undefined
     e40:	00057c01 	.inst	0x00057c01 ; undefined
     e44:	68631500 	.inst	0x68631500 ; undefined
     e48:	15570100 	b	55c1248 <__bss_end+0x55c0838>
     e4c:	000000b3 	.inst	0x000000b3 ; undefined
     e50:	32692b00 	.inst	0x32692b00 ; undefined
     e54:	4e010061 	tbl	v1.16b, {v3.16b}, v1.16b
     e58:	05a1010d 	.inst	0x05a1010d ; undefined
     e5c:	6e150000 	ext	v0.16b, v0.16b, v21.16b, #0
     e60:	01006d75 	.inst	0x01006d75 ; undefined
     e64:	007e164e 	.inst	0x007e164e ; undefined
     e68:	62150000 	.inst	0x62150000 ; undefined
     e6c:	4e010066 	tbl	v6.16b, {v3.16b}, v1.16b
     e70:	0001ab22 	.inst	0x0001ab22 ; undefined
     e74:	b42c0000 	cbz	x0, 58e74 <__bss_end+0x58464>
     e78:	0100002f 	.inst	0x0100002f ; undefined
     e7c:	02e00d3c 	.inst	0x02e00d3c ; undefined
     e80:	00000000 	.inst	0x00000000 ; undefined
     e84:	00b00000 	.inst	0x00b00000 ; undefined
     e88:	00000000 	.inst	0x00000000 ; undefined
     e8c:	9c010000 	ldr	q0, 2e8c <__bss_end+0x247c>
     e90:	00000640 	.inst	0x00000640 ; undefined
     e94:	6d756e0d 	ldp	d13, d27, [x16, #-176]
     e98:	1f3c0100 	fnmadd	s0, s8, s28, s0
     e9c:	00000640 	.inst	0x00000640 ; undefined
     ea0:	00000df9 	.inst	0x00000df9 ; undefined
     ea4:	00000df5 	.inst	0x00000df5 ; undefined
     ea8:	002fb916 	.inst	0x002fb916 ; NYI
     eac:	313c0100 	adds	w0, w8, #0xf00
     eb0:	00000640 	.inst	0x00000640 ; undefined
     eb4:	752d5101 	.inst	0x752d5101 ; undefined
     eb8:	3c010063 	stur	b3, [x3, #16]
     ebc:	00007e3b 	.inst	0x00007e3b ; undefined
     ec0:	0d520100 	.inst	0x0d520100 ; undefined
     ec4:	01006662 	.inst	0x01006662 ; undefined
     ec8:	01ab453c 	.inst	0x01ab453c ; undefined
     ecc:	0e350000 	saddl	v0.8h, v0.8b, v21.8b
     ed0:	0e2f0000 	saddl	v0.8h, v0.8b, v15.8b
     ed4:	6e180000 	ext	v0.16b, v0.16b, v24.16b, #0
     ed8:	093e0100 	.inst	0x093e0100 ; undefined
     edc:	0000007e 	.inst	0x0000007e ; undefined
     ee0:	00000e86 	.inst	0x00000e86 ; undefined
     ee4:	00000e7e 	.inst	0x00000e7e ; undefined
     ee8:	01006418 	.inst	0x01006418 ; undefined
     eec:	0640123f 	.inst	0x0640123f ; undefined
     ef0:	0ef20000 	.inst	0x0ef20000 ; undefined
     ef4:	0ee40000 	.inst	0x0ee40000 ; undefined
     ef8:	001e0000 	.inst	0x001e0000 ; undefined
     efc:	18000000 	ldr	w0, efc <__bss_end+0x4ec>
     f00:	00746764 	.inst	0x00746764 ; undefined
     f04:	7e0d4301 	.inst	0x7e0d4301 ; undefined
     f08:	8d000000 	.inst	0x8d000000 ; undefined
     f0c:	8900000f 	.inst	0x8900000f ; undefined
     f10:	0000000f 	.inst	0x0000000f ; undefined
     f14:	07040a00 	.inst	0x07040a00 ; undefined
     f18:	0000204d 	.inst	0x0000204d ; undefined
     f1c:	0001b12e 	.inst	0x0001b12e ; undefined
     f20:	00039000 	.inst	0x00039000 ; undefined
     f24:	00000000 	.inst	0x00000000 ; undefined
     f28:	00001400 	.inst	0x00001400 ; undefined
     f2c:	00000000 	.inst	0x00000000 ; undefined
     f30:	719c0100 	.inst	0x719c0100 ; undefined
     f34:	2f000006 	.inst	0x2f000006 ; undefined
     f38:	000001be 	.inst	0x000001be ; undefined
     f3c:	c82f5001 	stxp	w15, x1, x20, [x0]
     f40:	01000001 	.inst	0x01000001 ; undefined
     f44:	8b300051 	add	x17, x2, w16, uxtb
     f48:	b0000004 	adrp	x4, 1000 <__bss_end+0x5f0>
     f4c:	00000003 	.inst	0x00000003 ; undefined
     f50:	c8000000 	stxr	w0, x0, [x0]
     f54:	00000000 	.inst	0x00000000 ; undefined
     f58:	01000000 	.inst	0x01000000 ; undefined
     f5c:	0498119c 	orr	z28.s, p4/m, z28.s, z12.s
     f60:	0fcb0000 	.inst	0x0fcb0000 ; undefined
     f64:	0fc30000 	.inst	0x0fc30000 ; undefined
     f68:	a4110000 	ld1rqb	{z0.b}, p0/z, [x0, x17]
     f6c:	32000004 	orr	w4, w0, #0x1
     f70:	2a000010 	orr	w16, w0, w0
     f74:	11000010 	add	w16, w0, #0x0
     f78:	000004b0 	.inst	0x000004b0 ; undefined
     f7c:	000010a1 	.inst	0x000010a1 ; undefined
     f80:	00001091 	.inst	0x00001091 ; undefined
     f84:	0004ba11 	.inst	0x0004ba11 ; undefined
     f88:	00114f00 	.inst	0x00114f00 ; undefined
     f8c:	00114900 	.inst	0x00114900 ; undefined
     f90:	04c41100 	.inst	0x04c41100 ; undefined
     f94:	11a30000 	.inst	0x11a30000 ; undefined
     f98:	119b0000 	.inst	0x119b0000 ; undefined
     f9c:	cf1f0000 	.inst	0xcf1f0000 ; undefined
     fa0:	08000004 	stxrb	w0, w4, [x0]
     fa4:	02000012 	.inst	0x02000012 ; undefined
     fa8:	31000012 	adds	w18, w0, #0x0
     fac:	000004da 	.inst	0x000004da ; undefined
     fb0:	0004e51f 	.inst	0x0004e51f ; undefined
     fb4:	00126a00 	.inst	0x00126a00 ; undefined
     fb8:	00126200 	.inst	0x00126200 ; undefined
     fbc:	048b3200 	uminv	s0, p4, z16.s
     fc0:	043c0000 	add	z0.b, z0.b, z28.b
     fc4:	00000000 	.inst	0x00000000 ; undefined
     fc8:	001c0000 	.inst	0x001c0000 ; undefined
     fcc:	00000000 	.inst	0x00000000 ; undefined
     fd0:	71010000 	subs	w0, w0, #0x40
     fd4:	00075f0d 	.inst	0x00075f0d ; undefined
     fd8:	04b01d00 	uqsub	z0.s, z8.s, z16.s
     fdc:	ba1d0000 	adcs	x0, x0, x29
     fe0:	11000004 	add	w4, w0, #0x0
     fe4:	000004c4 	.inst	0x000004c4 ; undefined
     fe8:	000012cc 	.inst	0x000012cc ; undefined
     fec:	000012c8 	.inst	0x000012c8 ; undefined
     ff0:	0004a41d 	.inst	0x0004a41d ; undefined
     ff4:	04981d00 	orr	z0.s, p7/m, z0.s, z8.s
     ff8:	3c330000 	.inst	0x3c330000 ; undefined
     ffc:	00000004 	.inst	0x00000004 ; undefined
    1000:	1c000000 	ldr	s0, 1000 <__bss_end+0x5f0>
    1004:	00000000 	.inst	0x00000000 ; undefined
    1008:	31000000 	adds	w0, w0, #0x0
    100c:	000004cf 	.inst	0x000004cf ; undefined
    1010:	0004da1f 	.inst	0x0004da1f ; undefined
    1014:	00130800 	.inst	0x00130800 ; undefined
    1018:	00130400 	.inst	0x00130400 ; undefined
    101c:	04e53100 	bic	z0.d, z8.d, z5.d
    1020:	50240000 	adr	x0, 49022 <__bss_end+0x48612>
    1024:	00000004 	.inst	0x00000004 ; undefined
    1028:	13000000 	sbfx	w0, w0, #0, #1
    102c:	85025001 	ld1w	{z1.s}, p4/z, [x0, z2.s, uxtw]
    1030:	00000000 	.inst	0x00000000 ; undefined
    1034:	00042c24 	.inst	0x00042c24 ; undefined
    1038:	00000000 	.inst	0x00000000 ; undefined
    103c:	50011300 	adr	x0, 329e <__bss_end+0x288e>
    1040:	13008502 	.inst	0x13008502 ; undefined
    1044:	87025101 	.inst	0x87025101 ; undefined
    1048:	00000000 	.inst	0x00000000 ; undefined
    104c:	0000010a 	.inst	0x0000010a ; undefined
    1050:	05ed0004 	.inst	0x05ed0004 ; undefined
    1054:	01080000 	.inst	0x01080000 ; undefined
    1058:	000008cc 	.inst	0x000008cc ; undefined
    105c:	0030300c 	.inst	0x0030300c ; NYI
    1060:	0029e100 	.inst	0x0029e100 ; NYI
    1064:	00015000 	.inst	0x00015000 ; undefined
	...
    1070:	00097500 	.inst	0x00097500 ; undefined
    1074:	000a3000 	.inst	0x000a3000 ; undefined
    1078:	08010200 	stxrb	w1, w0, [x16]
    107c:	0000228a 	.inst	0x0000228a ; undefined
    1080:	30070202 	adr	x2, f0c1 <__bss_end+0xe6b1>
    1084:	03000004 	.inst	0x03000004 ; undefined
    1088:	00002ed5 	.inst	0x00002ed5 ; undefined
    108c:	47160502 	.inst	0x47160502 ; undefined
    1090:	02000000 	.inst	0x02000000 ; undefined
    1094:	204d0704 	.inst	0x204d0704 ; undefined
    1098:	08020000 	stxrb	w2, w0, [x0]
    109c:	000b6307 	.inst	0x000b6307 ; undefined
    10a0:	06010200 	.inst	0x06010200 ; undefined
    10a4:	00002116 	.inst	0x00002116 ; undefined
    10a8:	a9050202 	stp	x2, x0, [x16, #80]
    10ac:	04000005 	add	z5.b, p0/m, z5.b, z0.b
    10b0:	6e690504 	uhadd	v4.8h, v8.8h, v9.8h
    10b4:	08020074 	stxrb	w2, w20, [x3]
    10b8:	00175f05 	.inst	0x00175f05 ; undefined
    10bc:	01180500 	.inst	0x01180500 ; undefined
    10c0:	13010000 	sbfiz	w0, w0, #31, #1
    10c4:	00006305 	.inst	0x00006305 ; undefined
    10c8:	0008e000 	.inst	0x0008e000 ; undefined
    10cc:	00000000 	.inst	0x00000000 ; undefined
    10d0:	00000c00 	.inst	0x00000c00 ; undefined
    10d4:	00000000 	.inst	0x00000000 ; undefined
    10d8:	a79c0100 	.inst	0xa79c0100 ; undefined
    10dc:	06000000 	.inst	0x06000000 ; undefined
    10e0:	01006c65 	.inst	0x01006c65 ; undefined
    10e4:	00630914 	.inst	0x00630914 ; undefined
    10e8:	13400000 	.inst	0x13400000 ; undefined
    10ec:	133e0000 	.inst	0x133e0000 ; undefined
    10f0:	05000000 	orr	z0.s, z0.s, #0x1
    10f4:	00000e6b 	.inst	0x00000e6b ; undefined
    10f8:	63050b01 	.inst	0x63050b01 ; undefined
    10fc:	d0000000 	adrp	x0, 3000 <__bss_end+0x25f0>
    1100:	00000008 	.inst	0x00000008 ; undefined
    1104:	0c000000 	st4	{v0.8b-v3.8b}, [x0]
    1108:	00000000 	.inst	0x00000000 ; undefined
    110c:	01000000 	.inst	0x01000000 ; undefined
    1110:	0000de9c 	.inst	0x0000de9c ; undefined
    1114:	0e6f0700 	shadd	v0.4h, v24.4h, v15.4h
    1118:	0c010000 	.inst	0x0c010000 ; undefined
    111c:	00006309 	.inst	0x00006309 ; undefined
    1120:	00136500 	.inst	0x00136500 ; undefined
    1124:	00136300 	.inst	0x00136300 ; undefined
    1128:	18080000 	ldr	w0, 11128 <__bss_end+0x10718>
    112c:	0100002f 	.inst	0x0100002f ; undefined
    1130:	08c00603 	ldlarb	w3, [x16]
    1134:	00000000 	.inst	0x00000000 ; undefined
    1138:	000c0000 	.inst	0x000c0000 ; undefined
    113c:	00000000 	.inst	0x00000000 ; undefined
    1140:	9c010000 	ldr	q0, 3140 <__bss_end+0x2730>
    1144:	00304209 	.inst	0x00304209 ; NYI
    1148:	13030100 	sbfiz	w0, w8, #29, #1
    114c:	0000003b 	.inst	0x0000003b ; undefined
    1150:	0000138a 	.inst	0x0000138a ; undefined
    1154:	00001388 	.inst	0x00001388 ; undefined
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
    mrs x0, mpidr_el1
   0:	25011101 	cmpge	p1.b, p4/z, z8.b, #1
    and x0, x0, #0xFF
   4:	030b130e 	.inst	0x030b130e ; undefined
    cbnz x0, halt_proc
   8:	110e1b0e 	add	w14, w24, #0x386
    adr x0, __bss_start
   c:	10071201 	adr	x1, e24c <__bss_end+0xd83c>
    adr x1, __bss_end
  10:	17429917 	b	fffffffffd0a646c <__bss_end+0xfffffffffd0a5a5c>
    sub x1, x1, x0
  14:	24020000 	cmphs	p0.b, p0/z, z0.b, z2.b
    bl   memzero
  18:	3e0b0b00 	.inst	0x3e0b0b00 ; undefined
    bl el1_setup
  1c:	000e030b 	.inst	0x000e030b ; undefined
    b   kernel_main
  20:	00350300 	.inst	0x00350300 ; NYI
    wfe
  24:	00001349 	.inst	0x00001349 ; undefined
    b halt_proc
  28:	0b002404 	add	w4, w0, w0, lsl #9
  2c:	030b3e0b 	.inst	0x030b3e0b ; undefined
{
  30:	05000008 	orr	z8.s, z8.s, #0x1
  34:	0e030016 	tbl	v22.8b, {v0.16b}, v3.8b
  38:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
    uart_init();
  3c:	13490b39 	.inst	0x13490b39 ; undefined
    init_printf(0, putc);
  40:	13060000 	sbfiz	w0, w0, #26, #1
  44:	0b0e0301 	add	w1, w24, w14
  48:	3b0b3a0b 	.inst	0x3b0b3a0b ; undefined
  4c:	010b390b 	.inst	0x010b390b ; undefined
    printf("Core %d up at Exception level %d\n", get_core_id(), get_el());
  50:	07000013 	.inst	0x07000013 ; undefined
  54:	0e03000d 	tbl	v13.8b, {v0.16b}, v3.8b
  58:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
  5c:	13490b39 	.inst	0x13490b39 ; undefined
  60:	00000b38 	.inst	0x00000b38 ; undefined
  64:	03003408 	.inst	0x03003408 ; undefined
  68:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
  6c:	490b390b 	.inst	0x490b390b ; undefined
    }
  70:	3c193f13 	str	b19, [x24, #-109]!
  74:	09000019 	.inst	0x09000019 ; undefined
    ldr x0, =(SCTLR_EL1_EE_LITTLE | SCTLR_EL1_E0E_LITTLE |\
  78:	0b0b000f 	add	w15, w0, w11
    msr SCTLR_EL1, x0
  7c:	00001349 	.inst	0x00001349 ; undefined
    ldr x0, =(SCR_EL3_RW_AARCH64 | SCR_EL3_NS)
  80:	3f012e0a 	.inst	0x3f012e0a ; undefined
    msr SCR_EL3, x0
  84:	3a0e0319 	adcs	w25, w24, w14
    ldr x0, =(HCR_EL2_RW_AARCH64)
  88:	390b3b0b 	strb	w11, [x24, #718]
    msr HCR_EL2, x0 
  8c:	1201110b 	and	w11, w8, #0x8000000f
    msr ELR_EL3, lr
  90:	97184007 	bl	fffffffffc6100ac <__bss_end+0xfffffffffc60f69c>
    ldr x0, =(SPSR_MODE_EL1h | SPSR_MASK_EXCEPTIONS)
  94:	13011942 	sbfx	w2, w10, #1, #6
    msr SPSR_EL3, x0
  98:	890b0000 	.inst	0x890b0000 ; undefined
    ldr x0, =STACK_BASE
  9c:	11000182 	add	w2, w12, #0x0
    msr SP_EL1, x0
  a0:	00133101 	.inst	0x00133101 ; undefined
    eret
  a4:	82890c00 	.inst	0x82890c00 ; undefined
  a8:	01110101 	.inst	0x01110101 ; undefined
  ac:	13011331 	sbfx	w17, w25, #1, #4
  b0:	8a0d0000 	and	x0, x0, x13
  b4:	02000182 	.inst	0x02000182 ; undefined
  b8:	18429118 	ldr	w24, 852d8 <__bss_end+0x848c8>
  bc:	890e0000 	.inst	0x890e0000 ; undefined
  c0:	11010182 	add	w2, w12, #0x40
  c4:	00133101 	.inst	0x00133101 ; undefined
  c8:	002e0f00 	.inst	0x002e0f00 ; NYI
  cc:	193c193f 	.inst	0x193c193f ; undefined
void irq_handler(void) {
  d0:	0e030e6e 	dup	v14.8b, w19
    printf("IRQ HANDLER\n");
  d4:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
  d8:	00000b39 	.inst	0x00000b39 ; undefined
void irq_handler(void) {
  dc:	00110100 	.inst	0x00110100 ; undefined
    printf("IRQ HANDLER\n");
  e0:	01110610 	.inst	0x01110610 ; undefined
    while(1);
  e4:	0e030112 	tbl	v18.8b, {v8.16b}, v3.8b
  e8:	0e250e1b 	sqadd	v27.8b, v16.8b, v5.8b
  ec:	00000513 	.inst	0x00000513 ; undefined
void __attribute__ ((interrupt ("ABORT"))) reset_handler(void) {
  f0:	01110100 	.inst	0x01110100 ; undefined
    printf("RESET HANDLER\n");
  f4:	0b130e25 	add	w5, w17, w19, lsl #3
  f8:	0e1b0e03 	dup	v3.8b, w16
void __attribute__ ((interrupt ("ABORT"))) reset_handler(void) {
  fc:	07120111 	.inst	0x07120111 ; undefined
    printf("RESET HANDLER\n");
 100:	42991710 	.inst	0x42991710 ; undefined
    while(1);
 104:	02000017 	.inst	0x02000017 ; undefined
 108:	0b0b0024 	add	w4, w1, w11
 10c:	08030b3e 	stxrb	w3, w30, [x25]
void __attribute__ ((interrupt ("ABORT"))) prefetch_abort_handler(void) {
 110:	2e030000 	ext	v0.8b, v0.8b, v3.8b, #0
    printf("PREFETCH ABORT HANDLER\n");
 114:	03193f01 	.inst	0x03193f01 ; undefined
 118:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
void __attribute__ ((interrupt ("ABORT"))) prefetch_abort_handler(void) {
 11c:	270b390b 	.inst	0x270b390b ; undefined
    printf("PREFETCH ABORT HANDLER\n");
 120:	12011119 	and	w25, w8, #0x8000000f
    while(1);
 124:	97184007 	bl	fffffffffc610140 <__bss_end+0xfffffffffc60f730>
 128:	13011942 	sbfx	w2, w10, #1, #6
 12c:	89040000 	.inst	0x89040000 ; undefined
void __attribute__ ((interrupt ("ABORT"))) data_abort_handler(void) {
 130:	11010182 	add	w2, w12, #0x40
    printf("DATA ABORT HANDLER\n");
 134:	00133101 	.inst	0x00133101 ; undefined
 138:	828a0500 	.inst	0x828a0500 ; undefined
void __attribute__ ((interrupt ("ABORT"))) data_abort_handler(void) {
 13c:	18020001 	ldr	w1, 413c <__bss_end+0x372c>
    printf("DATA ABORT HANDLER\n");
 140:	00184291 	.inst	0x00184291 ; undefined
    while(1);
 144:	002e0600 	.inst	0x002e0600 ; NYI
 148:	193c193f 	.inst	0x193c193f ; undefined
 14c:	0e030e6e 	dup	v14.8b, w19
void __attribute__ ((interrupt ("UNDEF"))) undefined_instruction_handler(void) {
 150:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
    printf("UNDEFINED INSTRUCTION HANDLER\n");
 154:	00000b39 	.inst	0x00000b39 ; undefined
 158:	00110100 	.inst	0x00110100 ; undefined
void __attribute__ ((interrupt ("UNDEF"))) undefined_instruction_handler(void) {
 15c:	01110610 	.inst	0x01110610 ; undefined
    printf("UNDEFINED INSTRUCTION HANDLER\n");
 160:	0e030112 	tbl	v18.8b, {v8.16b}, v3.8b
    while(1);
 164:	0e250e1b 	sqadd	v27.8b, v16.8b, v5.8b
 168:	00000513 	.inst	0x00000513 ; undefined
 16c:	00110100 	.inst	0x00110100 ; undefined
void __attribute__ ((interrupt ("SWI"))) software_interrupt_handler(void) {
 170:	01110610 	.inst	0x01110610 ; undefined
    printf("SWI HANDLER\n");
 174:	0e030112 	tbl	v18.8b, {v8.16b}, v3.8b
 178:	0e250e1b 	sqadd	v27.8b, v16.8b, v5.8b
void __attribute__ ((interrupt ("SWI"))) software_interrupt_handler(void) {
 17c:	00000513 	.inst	0x00000513 ; undefined
    printf("SWI HANDLER\n");
 180:	01110100 	.inst	0x01110100 ; undefined
    while(1);
 184:	0b130e25 	add	w5, w17, w19, lsl #3
 188:	0e1b0e03 	dup	v3.8b, w16
 18c:	07120111 	.inst	0x07120111 ; undefined
void __attribute__ ((interrupt ("FIQ"))) fast_irq_handler(void) {
 190:	42991710 	.inst	0x42991710 ; undefined
    printf("FIQ HANDLER\n");
 194:	02000017 	.inst	0x02000017 ; undefined
 198:	0e030016 	tbl	v22.8b, {v0.16b}, v3.8b
void __attribute__ ((interrupt ("FIQ"))) fast_irq_handler(void) {
 19c:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
    printf("FIQ HANDLER\n");
 1a0:	13490b39 	.inst	0x13490b39 ; undefined
    while(1);
 1a4:	24030000 	cmphs	p0.b, p0/z, z0.b, z3.b
    str  xzr, [x0], #8
 1a8:	3e0b0b00 	.inst	0x3e0b0b00 ; undefined
    subs x1, x1, #8
 1ac:	000e030b 	.inst	0x000e030b ; undefined
    b.gt memzero
 1b0:	00350400 	.inst	0x00350400 ; NYI
    ret
 1b4:	00001349 	.inst	0x00001349 ; undefined
 1b8:	0b002405 	add	w5, w0, w0, lsl #9
 1bc:	030b3e0b 	.inst	0x030b3e0b ; undefined
void uart_init(){
 1c0:	06000008 	.inst	0x06000008 ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1c4:	0e030113 	tbl	v19.8b, {v8.16b}, v3.8b
    delay(150);
 1c8:	0b3a0b0b 	add	w11, w24, w26, uxtb #2
void uart_init(){
 1cc:	0b390b3b 	add	w27, w25, w25, uxtb #2
 1d0:	00001301 	.inst	0x00001301 ; undefined
    *AUX_ENABLES = 0;
 1d4:	03000d07 	.inst	0x03000d07 ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1d8:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
    *AUX_ENABLES = 0;
 1dc:	490b390b 	.inst	0x490b390b ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1e0:	000b3813 	.inst	0x000b3813 ; undefined
    *AUX_ENABLES = 0;
 1e4:	00340800 	.inst	0x00340800 ; NYI
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1e8:	0b3a0e03 	add	w3, w16, w26, uxtb #3
    *AUX_ENABLES = 0;
 1ec:	0b390b3b 	add	w27, w25, w25, uxtb #2
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1f0:	193f1349 	.inst	0x193f1349 ; undefined
    gpio->GPPUD = 0;
 1f4:	0000193c 	.inst	0x0000193c ; undefined
    delay(150);
 1f8:	0b000f09 	add	w9, w24, w0, lsl #3
    gpio->GPPUDCLK0 = (1 << 14) | (1 << 15); 
 1fc:	0013490b 	.inst	0x0013490b ; undefined
 200:	00340a00 	.inst	0x00340a00 ; NYI
    delay(150);
 204:	0b3a1347 	add	w7, w26, w26, uxtb #4
    gpio->GPPUDCLK0 = (1 << 14) | (1 << 15); 
 208:	0b390b3b 	add	w27, w25, w25, uxtb #2
    delay(150);
 20c:	00001802 	.inst	0x00001802 ; undefined
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
 210:	3f012e0b 	.inst	0x3f012e0b ; undefined
    mini_uart->AUX_MU_IIR_REG = 0x3 << 1; 
 214:	3a0e0319 	adcs	w25, w24, w14
    gpio->GPPUDCLK0 = 0; 
 218:	390b3b0b 	strb	w11, [x24, #718]
    mini_uart->AUX_MU_BAUD_REG = 271;
 21c:	1119270b 	add	w11, w24, #0x649
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
 220:	40071201 	.inst	0x40071201 ; undefined
    *(reg32*)0x3f215068 = 271;
 224:	19429718 	.inst	0x19429718 ; undefined
 228:	00001301 	.inst	0x00001301 ; undefined
    gpio->GPPUDCLK0 = 0; 
 22c:	0300050c 	.inst	0x0300050c ; undefined
    *AUX_ENABLES = 1;
 230:	3b0b3a08 	.inst	0x3b0b3a08 ; undefined
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
 234:	490b390b 	.inst	0x490b390b ; undefined
 238:	b7170213 	tbnz	x19, #34, ffffffffffffe278 <__bss_end+0xffffffffffffd868>
 23c:	00001742 	.inst	0x00001742 ; undefined
 240:	0300050d 	.inst	0x0300050d ; undefined
    mini_uart->AUX_MU_IIR_REG = 0x3 << 1; 
 244:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
    mini_uart->AUX_MU_BAUD_REG = 271;
 248:	490b390b 	.inst	0x490b390b ; undefined
    *AUX_ENABLES = 1;
 24c:	b7170213 	tbnz	x19, #34, ffffffffffffe28c <__bss_end+0xffffffffffffd87c>
}
 250:	00001742 	.inst	0x00001742 ; undefined
    *(reg32*)0x3f215068 = 271;
 254:	0182890e 	.inst	0x0182890e ; undefined
    *AUX_ENABLES = 1;
 258:	95011101 	bl	404465c <__bss_end+0x4043c4c>
}
 25c:	13311942 	.inst	0x13311942 ; undefined
 260:	8a0f0000 	and	x0, x0, x15
 264:	02000182 	.inst	0x02000182 ; undefined
 268:	18429118 	ldr	w24, 85488 <__bss_end+0x84a78>
 26c:	05100000 	mov	z0.b, p0/z, #0
    return mini_uart->AUX_MU_LSR_REG & 0x1;
 270:	3a0e0300 	adcs	w0, w24, w14
 274:	390b3b0b 	strb	w11, [x24, #718]
 278:	0213490b 	.inst	0x0213490b ; undefined
 27c:	11000018 	add	w24, w0, #0x0
}
 280:	193f012e 	.inst	0x193f012e ; undefined
 284:	0b3a0e03 	add	w3, w16, w26, uxtb #3
 288:	0b390b3b 	add	w27, w25, w25, uxtb #2
 28c:	01111349 	.inst	0x01111349 ; undefined
    uint8 data = mini_uart->AUX_MU_IO_REG & 0xFF;
 290:	18400712 	ldr	w18, 80370 <__bss_end+0x7f960>
 294:	01194297 	.inst	0x01194297 ; undefined
 298:	12000013 	and	w19, w0, #0x1
 29c:	0e030034 	tbl	v20.8b, {v1.16b}, v3.8b
}
 2a0:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 2a4:	13490b39 	.inst	0x13490b39 ; undefined
 2a8:	42b71702 	.inst	0x42b71702 ; undefined
 2ac:	13000017 	sbfx	w23, w0, #0, #1
    mini_uart->AUX_MU_IO_REG = data;
 2b0:	193f002e 	.inst	0x193f002e ; undefined
void uart_write(uint8 data){
 2b4:	0b3a0e03 	add	w3, w16, w26, uxtb #3
    mini_uart->AUX_MU_IO_REG = data;
 2b8:	0b390b3b 	add	w27, w25, w25, uxtb #2
 2bc:	01111349 	.inst	0x01111349 ; undefined
 2c0:	18400712 	ldr	w18, 803a0 <__bss_end+0x7f990>
}
 2c4:	00194297 	.inst	0x00194297 ; undefined
 2c8:	012e1400 	.inst	0x012e1400 ; undefined
 2cc:	0e03193f 	uzp1	v31.8b, v9.8b, v3.8b
    uart_write(data);
 2d0:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 2d4:	01110b39 	.inst	0x01110b39 ; undefined
 2d8:	18400712 	ldr	w18, 803b8 <__bss_end+0x7f9a8>
 2dc:	01194297 	.inst	0x01194297 ; undefined
    while (num/d >= base)
 2e0:	15000013 	b	400032c <__bss_end+0x3fff91c>
 2e4:	01018289 	.inst	0x01018289 ; undefined
    unsigned int d=1;
 2e8:	13310111 	.inst	0x13310111 ; undefined
 2ec:	00001301 	.inst	0x00001301 ; undefined
        d*=base;
 2f0:	01828916 	.inst	0x01828916 ; undefined
    while (num/d >= base)
 2f4:	31011101 	adds	w1, w8, #0x44
 2f8:	17000013 	b	fffffffffc000344 <__bss_end+0xfffffffffbfff934>
 2fc:	193f002e 	.inst	0x193f002e ; undefined
    while (d!=0) {
 300:	0e6e193c 	.inst	0x0e6e193c ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 304:	0b3a0e03 	add	w3, w16, w26, uxtb #3
 308:	0b390b3b 	add	w27, w25, w25, uxtb #2
 30c:	01000000 	.inst	0x01000000 ; undefined
 310:	0e250111 	saddl	v17.8h, v8.8b, v5.8b
        if (n || dgt>0 || d==0) {
 314:	0e030b13 	.inst	0x0e030b13 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 318:	01110e1b 	.inst	0x01110e1b ; undefined
        if (n || dgt>0 || d==0) {
 31c:	17100712 	b	fffffffffc401f64 <__bss_end+0xfffffffffc401554>
 320:	00174299 	.inst	0x00174299 ; undefined
 324:	00160200 	.inst	0x00160200 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 328:	0b3a0e03 	add	w3, w16, w26, uxtb #3
        if (n || dgt>0 || d==0) {
 32c:	0b390b3b 	add	w27, w25, w25, uxtb #2
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 330:	00001349 	.inst	0x00001349 ; undefined
        if (n || dgt>0 || d==0) {
 334:	03011303 	.inst	0x03011303 ; undefined
        num%= d;
 338:	3a0b0b0e 	.inst	0x3a0b0b0e ; undefined
        d/=base;
 33c:	010b3b0b 	.inst	0x010b3b0b ; undefined
        if (n || dgt>0 || d==0) {
 340:	04000013 	add	z19.b, p0/m, z19.b, z0.b
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 344:	0e03000d 	tbl	v13.8b, {v0.16b}, v3.8b
 348:	0b381349 	add	w9, w26, w24, uxtb #4
 34c:	00001934 	.inst	0x00001934 ; undefined
 350:	0b000f05 	add	w5, w24, w0, lsl #3
 354:	0600000b 	.inst	0x0600000b ; undefined
 358:	0b0b0024 	add	w4, w1, w11
 35c:	08030b3e 	stxrb	w3, w30, [x25]
            ++n;
 360:	0f070000 	.inst	0x0f070000 ; undefined
    while (d!=0) {
 364:	490b0b00 	.inst	0x490b0b00 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 368:	08000013 	stxrb	w0, w19, [x0]
    while (d!=0) {
 36c:	19270115 	.inst	0x19270115 ; undefined
    *bf=0;
 370:	00001301 	.inst	0x00001301 ; undefined
    }
 374:	49000509 	.inst	0x49000509 ; undefined
    while (d!=0) {
 378:	0a000013 	and	w19, w0, w0
    *bf=0;
 37c:	0b0b0024 	add	w4, w1, w11
    }
 380:	0e030b3e 	.inst	0x0e030b3e ; undefined
 384:	340b0000 	cbz	w0, 16384 <__bss_end+0x15974>
    unsigned int d=1;
 388:	3a0e0300 	adcs	w0, w24, w14
 38c:	390b3b0b 	strb	w11, [x24, #718]
    *(*((char**)p))++ = c;
 390:	0213490b 	.inst	0x0213490b ; undefined
 394:	0c000018 	st4	{v24.8b-v27.8b}, [x0]
 398:	193f012e 	.inst	0x193f012e ; undefined
 39c:	0b3a0e03 	add	w3, w16, w26, uxtb #3
    }
 3a0:	0b390b3b 	add	w27, w25, w25, uxtb #2
 3a4:	01111927 	.inst	0x01111927 ; undefined
 3a8:	18400712 	ldr	w18, 80488 <__bss_end+0x7fa78>
 3ac:	01194297 	.inst	0x01194297 ; undefined
    {
 3b0:	0d000013 	st1	{v19.b}[0], [x0]
    char fc=z? '0' : ' ';
 3b4:	08030005 	stxrb	w3, w5, [x0]
    {
 3b8:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 3bc:	13490b39 	.inst	0x13490b39 ; undefined
    while (*p++ && n > 0)
 3c0:	42b71702 	.inst	0x42b71702 ; undefined
    {
 3c4:	0e000017 	tbl	v23.8b, {v0.16b}, v0.8b
 3c8:	00000018 	.inst	0x00000018 ; undefined
 3cc:	0300340f 	.inst	0x0300340f ; undefined
 3d0:	3b0b3a08 	.inst	0x3b0b3a08 ; undefined
    char fc=z? '0' : ' ';
 3d4:	490b390b 	.inst	0x490b390b ; undefined
 3d8:	00180213 	.inst	0x00180213 ; undefined
    while (*p++ && n > 0)
 3dc:	011d1000 	.inst	0x011d1000 ; undefined
    char fc=z? '0' : ' ';
 3e0:	01521331 	.inst	0x01521331 ; undefined
    {
 3e4:	110b42b8 	add	w24, w21, #0x2d0
    while (*p++ && n > 0)
 3e8:	58071201 	ldr	x1, e628 <__bss_end+0xdc18>
 3ec:	570b590b 	.inst	0x570b590b ; undefined
 3f0:	0013010b 	.inst	0x0013010b ; undefined
 3f4:	00051100 	.inst	0x00051100 ; undefined
 3f8:	17021331 	b	fffffffffc0850bc <__bss_end+0xfffffffffc0846ac>
 3fc:	001742b7 	.inst	0x001742b7 ; undefined
 400:	82891200 	.inst	0x82891200 ; undefined
 404:	01110101 	.inst	0x01110101 ; undefined
        n--;
 408:	00001331 	.inst	0x00001331 ; undefined
 40c:	01828a13 	.inst	0x01828a13 ; undefined
    while (*p++ && n > 0)
 410:	91180200 	add	x0, x16, #0x600
    while (n-- > 0)
 414:	00001842 	.inst	0x00001842 ; undefined
 418:	03012e14 	.inst	0x03012e14 ; undefined
 41c:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
        putf(putp,fc);
 420:	270b390b 	.inst	0x270b390b ; undefined
 424:	010b2019 	.inst	0x010b2019 ; undefined
 428:	15000013 	b	4000474 <__bss_end+0x3fffa64>
    while (n-- > 0)
 42c:	08030005 	stxrb	w3, w5, [x0]
 430:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 434:	13490b39 	.inst	0x13490b39 ; undefined
 438:	05160000 	mov	z0.b, p6/z, #0
    while ((ch= *bf++))
 43c:	3a0e0300 	adcs	w0, w24, w14
 440:	390b3b0b 	strb	w11, [x24, #718]
 444:	0213490b 	.inst	0x0213490b ; undefined
        putf(putp,ch);
 448:	17000018 	b	fffffffffc0004a8 <__bss_end+0xfffffffffbfffa98>
 44c:	0e030005 	tbl	v5.8b, {v0.16b}, v3.8b
    while ((ch= *bf++))
 450:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 454:	13490b39 	.inst	0x13490b39 ; undefined
    }
 458:	42b71702 	.inst	0x42b71702 ; undefined
 45c:	18000017 	ldr	w23, 45c <putchw+0xac>
 460:	08030034 	stxrb	w3, w20, [x1]
 464:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 468:	13490b39 	.inst	0x13490b39 ; undefined
    while (n-- > 0)
 46c:	42b71702 	.inst	0x42b71702 ; undefined
 470:	19000017 	stlurb	w23, [x0]
 474:	0e03000a 	tbl	v10.8b, {v0.16b}, v3.8b
 478:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 47c:	01110b39 	.inst	0x01110b39 ; undefined
    {
 480:	0b1a0000 	add	w0, w0, w26
 484:	01175501 	.inst	0x01175501 ; undefined
 488:	1b000013 	madd	w19, w0, w0, w0
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
 48c:	1331011d 	.inst	0x1331011d ; undefined
 490:	42b80152 	.inst	0x42b80152 ; undefined
    {
 494:	5817550b 	ldr	x11, 2ef34 <__bss_end+0x2e524>
 498:	570b590b 	.inst	0x570b590b ; undefined
                    ui2a(va_arg(va, unsigned int),10,0,bf);
 49c:	0013010b 	.inst	0x0013010b ; undefined
    {
 4a0:	011d1c00 	.inst	0x011d1c00 ; undefined
 4a4:	17551331 	b	fffffffffd545168 <__bss_end+0xfffffffffd544758>
 4a8:	0b590b58 	add	w24, w26, w25, lsr #2
        *bf++ = '-';
 4ac:	13010b57 	sbfx	w23, w26, #1, #2
 4b0:	051d0000 	mov	z0.b, p13/z, #0
    {
 4b4:	00133100 	.inst	0x00133100 ; undefined
 4b8:	010b1e00 	.inst	0x010b1e00 ; undefined
 4bc:	00001755 	.inst	0x00001755 ; undefined
    while ((ch=*(fmt++))) {
 4c0:	3100341f 	cmn	w0, #0xd
 4c4:	b7170213 	tbnz	x19, #34, ffffffffffffe504 <__bss_end+0xffffffffffffdaf4>
        if (ch!='%')
 4c8:	00001742 	.inst	0x00001742 ; undefined
 4cc:	31011d20 	adds	w0, w9, #0x47
    while ((ch=*(fmt++))) {
 4d0:	b8015213 	stur	w19, [x16, #21]
            putf(putp,ch);
 4d4:	17550b42 	b	fffffffffd5431dc <__bss_end+0xfffffffffd5427cc>
 4d8:	0b590b58 	add	w24, w26, w25, lsr #2
    while ((ch=*(fmt++))) {
 4dc:	00000b57 	.inst	0x00000b57 ; undefined
 4e0:	01828921 	.inst	0x01828921 ; undefined
    }
 4e4:	31011100 	adds	w0, w8, #0x44
 4e8:	22000013 	.inst	0x22000013 ; undefined
 4ec:	01018289 	.inst	0x01018289 ; undefined
 4f0:	13310111 	.inst	0x13310111 ; undefined
 4f4:	00001301 	.inst	0x00001301 ; undefined
 4f8:	01828923 	.inst	0x01828923 ; undefined
 4fc:	01011101 	.inst	0x01011101 ; undefined
            ch=*(fmt++);
 500:	24000013 	cmphi	p3.b, p0/z, z0.b, z0.b
            if (ch=='0') {
 504:	01018289 	.inst	0x01018289 ; undefined
 508:	00000111 	.inst	0x00000111 ; undefined
            ch=*(fmt++);
 50c:	49010125 	.inst	0x49010125 ; undefined
            char lz=0;
 510:	00130113 	.inst	0x00130113 ; undefined
            if (ch>='0' && ch<='9') {
 514:	00212600 	.inst	0x00212600 ; NYI
    int num=0;
 518:	0b2f1349 	add	w9, w26, w15, uxtb #4
            if (ch>='0' && ch<='9') {
 51c:	05270000 	ext	z0.b, z0.b, z0.b, #56
 520:	3a0e0300 	adcs	w0, w24, w14
 524:	390b3b0b 	strb	w11, [x24, #718]
            switch (ch) {
 528:	0013490b 	.inst	0x0013490b ; undefined
 52c:	00342800 	.inst	0x00342800 ; NYI
 530:	0b3a0803 	add	w3, w0, w26, uxtb #2
 534:	0b390b3b 	add	w27, w25, w25, uxtb #2
 538:	00001349 	.inst	0x00001349 ; undefined
 53c:	03012e29 	.inst	0x03012e29 ; undefined
 540:	3b0b3a08 	.inst	0x3b0b3a08 ; undefined
 544:	270b390b 	.inst	0x270b390b ; undefined
                    ui2a(va_arg(va, unsigned int),10,0,bf);
 548:	20134919 	.inst	0x20134919 ; undefined
 54c:	0013010b 	.inst	0x0013010b ; undefined
 550:	00342a00 	.inst	0x00342a00 ; NYI
 554:	0b3a0e03 	add	w3, w16, w26, uxtb #3
 558:	0b390b3b 	add	w27, w25, w25, uxtb #2
 55c:	00001349 	.inst	0x00001349 ; undefined
    ui2a(num,10,0,bf);
 560:	03012e2b 	.inst	0x03012e2b ; undefined
 564:	3b0b3a08 	.inst	0x3b0b3a08 ; undefined
 568:	270b390b 	.inst	0x270b390b ; undefined
    else if (ch>='a' && ch<='f')
 56c:	010b2019 	.inst	0x010b2019 ; undefined
 570:	2c000013 	stnp	s19, s0, [x0]
    else if (ch>='A' && ch<='F')
 574:	0e03012e 	tbl	v14.8b, {v9.16b}, v3.8b
 578:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
        if (digit>base) break;
 57c:	19270b39 	.inst	0x19270b39 ; undefined
 580:	07120111 	.inst	0x07120111 ; undefined
        ch=*p++;
 584:	42971840 	.inst	0x42971840 ; undefined
        num=num*base+digit;
 588:	00130119 	.inst	0x00130119 ; undefined
        ch=*p++;
 58c:	00052d00 	.inst	0x00052d00 ; undefined
    else if (ch>='a' && ch<='f')
 590:	0b3a0803 	add	w3, w0, w26, uxtb #2
    else if (ch>='A' && ch<='F')
 594:	0b390b3b 	add	w27, w25, w25, uxtb #2
    if (ch>='0' && ch<='9')
 598:	18021349 	ldr	w9, 4800 <__bss_end+0x3df0>
        return ch-'A'+10;
 59c:	2e2e0000 	uaddl	v0.8h, v0.8b, v14.8b
    else if (ch>='a' && ch<='f')
 5a0:	11133101 	add	w1, w8, #0x4cc
    else if (ch>='A' && ch<='F')
 5a4:	40071201 	.inst	0x40071201 ; undefined
    if (ch>='0' && ch<='9')
 5a8:	19429718 	.inst	0x19429718 ; undefined
 5ac:	00001301 	.inst	0x00001301 ; undefined
        return ch-'0';
 5b0:	3100052f 	adds	w15, w9, #0x1
        if (digit>base) break;
 5b4:	00180213 	.inst	0x00180213 ; undefined
            switch (ch) {
 5b8:	012e3000 	.inst	0x012e3000 ; undefined
 5bc:	01111331 	.inst	0x01111331 ; undefined
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
 5c0:	18400712 	ldr	w18, 806a0 <__bss_end+0x7fc90>
 5c4:	00194297 	.inst	0x00194297 ; undefined
 5c8:	00343100 	.inst	0x00343100 ; NYI
 5cc:	00001331 	.inst	0x00001331 ; undefined
 5d0:	31011d32 	adds	w18, w9, #0x47
 5d4:	12011113 	and	w19, w8, #0x8000000f
 5d8:	590b5807 	.inst	0x590b5807 ; undefined
 5dc:	010b570b 	.inst	0x010b570b ; undefined
 5e0:	33000013 	bfxil	w19, w0, #0, #1
 5e4:	0111010b 	.inst	0x0111010b ; undefined
                    putchw(putp,putf,w,lz,bf);
 5e8:	00000712 	.inst	0x00000712 ; undefined
 5ec:	01110100 	.inst	0x01110100 ; undefined
 5f0:	0b130e25 	add	w5, w17, w19, lsl #3
 5f4:	0e1b0e03 	dup	v3.8b, w16
 5f8:	01111755 	.inst	0x01111755 ; undefined
 5fc:	42991710 	.inst	0x42991710 ; undefined
                    break;
 600:	02000017 	.inst	0x02000017 ; undefined
            switch (ch) {
 604:	0b0b0024 	add	w4, w1, w11
 608:	0e030b3e 	.inst	0x0e030b3e ; undefined
                    i2a(va_arg(va, int),bf);
 60c:	16030000 	b	fffffffff80c060c <__bss_end+0xfffffffff80bfbfc>
 610:	3a0e0300 	adcs	w0, w24, w14
 614:	390b3b0b 	strb	w11, [x24, #718]
 618:	0013490b 	.inst	0x0013490b ; undefined
 61c:	00240400 	.inst	0x00240400 ; NYI
    if (num<0) {
 620:	0b3e0b0b 	add	w11, w24, w30, uxtb #2
 624:	00000803 	.inst	0x00000803 ; undefined
        *bf++ = '-';
 628:	3f012e05 	.inst	0x3f012e05 ; undefined
        num=-num;
 62c:	3a0e0319 	adcs	w25, w24, w14
        *bf++ = '-';
 630:	390b3b0b 	strb	w11, [x24, #718]
 634:	1113490b 	add	w11, w8, #0x4d2
 638:	40071201 	.inst	0x40071201 ; undefined
            switch (ch) {
 63c:	19429718 	.inst	0x19429718 ; undefined
 640:	00001301 	.inst	0x00001301 ; undefined
 644:	03003406 	.inst	0x03003406 ; undefined
 648:	3b0b3a08 	.inst	0x3b0b3a08 ; undefined
 64c:	490b390b 	.inst	0x490b390b ; undefined
    }
 650:	b7170213 	tbnz	x19, #34, ffffffffffffe690 <__bss_end+0xffffffffffffdc80>
 654:	00001742 	.inst	0x00001742 ; undefined
 658:	03003407 	.inst	0x03003407 ; undefined
 65c:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
 660:	490b390b 	.inst	0x490b390b ; undefined
 664:	b7170213 	tbnz	x19, #34, ffffffffffffe6a4 <__bss_end+0xffffffffffffdc94>
 668:	00001742 	.inst	0x00001742 ; undefined
        return ch-'a'+10;
 66c:	3f012e08 	.inst	0x3f012e08 ; undefined
 670:	3a0e0319 	adcs	w25, w24, w14
                ch=*(fmt++);
 674:	390b3b0b 	strb	w11, [x24, #718]
                lz=1;
 678:	1119270b 	add	w11, w24, #0x649
                ch=*(fmt++);
 67c:	40071201 	.inst	0x40071201 ; undefined
 680:	19429718 	.inst	0x19429718 ; undefined
                    putchw(putp,putf,w,0,va_arg(va, char*));
 684:	05090000 	.inst	0x05090000 ; undefined
 688:	3a0e0300 	adcs	w0, w24, w14
 68c:	390b3b0b 	strb	w11, [x24, #718]
 690:	0213490b 	.inst	0x0213490b ; undefined
 694:	1742b717 	b	fffffffffd0ae2f0 <__bss_end+0xfffffffffd0ad8e0>
 698:	Address 0x0000000000000698 is out of bounds.


Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
    mrs x0, mpidr_el1
   0:	0000002c 	.inst	0x0000002c ; undefined
    and x0, x0, #0xFF
   4:	00000002 	.inst	0x00000002 ; undefined
    cbnz x0, halt_proc
   8:	00080000 	.inst	0x00080000 ; undefined
    adr x0, __bss_start
   c:	00000000 	.inst	0x00000000 ; undefined
    adr x1, __bss_end
  10:	00000030 	.inst	0x00000030 ; undefined
    sub x1, x1, x0
  14:	00000000 	.inst	0x00000000 ; undefined
    bl   memzero
  18:	00000044 	.inst	0x00000044 ; undefined
	...
{
  30:	0000002c 	.inst	0x0000002c ; undefined
  34:	02020002 	.inst	0x02020002 ; undefined
  38:	00080000 	.inst	0x00080000 ; undefined
    uart_init();
  3c:	00000000 	.inst	0x00000000 ; undefined
    init_printf(0, putc);
  40:	00000078 	.inst	0x00000078 ; undefined
  44:	00000000 	.inst	0x00000000 ; undefined
  48:	00000058 	.inst	0x00000058 ; undefined
	...
    printf("Core %d up at Exception level %d\n", get_core_id(), get_el());
  60:	0000002c 	.inst	0x0000002c ; undefined
  64:	02300002 	.inst	0x02300002 ; undefined
  68:	00080000 	.inst	0x00080000 ; undefined
  6c:	00000000 	.inst	0x00000000 ; undefined
    }
  70:	000000d0 	.inst	0x000000d0 ; undefined
  74:	00000000 	.inst	0x00000000 ; undefined
    ldr x0, =(SCTLR_EL1_EE_LITTLE | SCTLR_EL1_E0E_LITTLE |\
  78:	000000d8 	.inst	0x000000d8 ; undefined
	...
    msr ELR_EL3, lr
  90:	0000002c 	.inst	0x0000002c ; undefined
    ldr x0, =(SPSR_MODE_EL1h | SPSR_MASK_EXCEPTIONS)
  94:	040b0002 	umin	z2.b, p0/m, z2.b, z0.b
    msr SPSR_EL3, x0
  98:	00080000 	.inst	0x00080000 ; undefined
	...
    eret
  a8:	0000002c 	.inst	0x0000002c ; undefined
	...
  c0:	0000002c 	.inst	0x0000002c ; undefined
  c4:	04390002 	add	z2.b, z0.b, z25.b
  c8:	00080000 	.inst	0x00080000 ; undefined
  cc:	00000000 	.inst	0x00000000 ; undefined
void irq_handler(void) {
  d0:	000001a8 	.inst	0x000001a8 ; undefined
    printf("IRQ HANDLER\n");
  d4:	00000000 	.inst	0x00000000 ; undefined
  d8:	00000010 	.inst	0x00000010 ; undefined
	...
void __attribute__ ((interrupt ("ABORT"))) reset_handler(void) {
  f0:	0000002c 	.inst	0x0000002c ; undefined
    printf("RESET HANDLER\n");
  f4:	04670002 	add	z2.h, z0.h, z7.h
  f8:	00080000 	.inst	0x00080000 ; undefined
void __attribute__ ((interrupt ("ABORT"))) reset_handler(void) {
  fc:	00000000 	.inst	0x00000000 ; undefined
    printf("RESET HANDLER\n");
 100:	000001c0 	.inst	0x000001c0 ; undefined
    while(1);
 104:	00000000 	.inst	0x00000000 ; undefined
 108:	00000118 	.inst	0x00000118 ; undefined
	...
    printf("PREFETCH ABORT HANDLER\n");
 120:	0000002c 	.inst	0x0000002c ; undefined
    while(1);
 124:	08d50002 	ldlarb	w2, [x0]
 128:	00080000 	.inst	0x00080000 ; undefined
 12c:	00000000 	.inst	0x00000000 ; undefined
void __attribute__ ((interrupt ("ABORT"))) data_abort_handler(void) {
 130:	000002e0 	.inst	0x000002e0 ; undefined
    printf("DATA ABORT HANDLER\n");
 134:	00000000 	.inst	0x00000000 ; undefined
 138:	000005d8 	.inst	0x000005d8 ; undefined
	...
void __attribute__ ((interrupt ("UNDEF"))) undefined_instruction_handler(void) {
 150:	0000002c 	.inst	0x0000002c ; undefined
    printf("UNDEFINED INSTRUCTION HANDLER\n");
 154:	104c0002 	adr	x2, 98154 <__bss_end+0x97744>
 158:	00080000 	.inst	0x00080000 ; undefined
void __attribute__ ((interrupt ("UNDEF"))) undefined_instruction_handler(void) {
 15c:	00000000 	.inst	0x00000000 ; undefined
    printf("UNDEFINED INSTRUCTION HANDLER\n");
 160:	000008c0 	.inst	0x000008c0 ; undefined
    while(1);
 164:	00000000 	.inst	0x00000000 ; undefined
 168:	0000002c 	.inst	0x0000002c ; undefined
	...

Disassembly of section .debug_macro:

0000000000000000 <.debug_macro>:
    mrs x0, mpidr_el1
   0:	00020004 	.inst	0x00020004 ; undefined
    and x0, x0, #0xFF
   4:	07000000 	.inst	0x07000000 ; undefined
    cbnz x0, halt_proc
   8:	00000045 	.inst	0x00000045 ; undefined
    adr x0, __bss_start
   c:	03010003 	.inst	0x03010003 ; undefined
    adr x1, __bss_end
  10:	01030201 	.inst	0x01030201 ; undefined
    sub x1, x1, x0
  14:	09190703 	.inst	0x09190703 ; undefined
    bl   memzero
  18:	07040000 	.inst	0x07040000 ; undefined
    bl el1_setup
  1c:	0000092f 	.inst	0x0000092f ; undefined
    b   kernel_main
  20:	04020304 	.inst	0x04020304 ; undefined
    wfe
  24:	0afc5c05 	bic	w5, w0, w28, ror #23
    b halt_proc
  28:	5e030000 	sha1c	q0, s0, v3.4s
  2c:	093f0706 	.inst	0x093f0706 ; undefined
{
  30:	07040000 	.inst	0x07040000 ; undefined
  34:	00000997 	.inst	0x00000997 ; undefined
  38:	05030304 	orr	z4.d, z4.d, #0x1ffffff00000000
    uart_init();
  3c:	07a40205 	.inst	0x07a40205 ; undefined
    init_printf(0, putc);
  40:	04040000 	.inst	0x04040000 ; undefined
  44:	00000400 	.inst	0x00000400 ; undefined
  48:	19e60005 	.inst	0x19e60005 ; undefined
  4c:	00050000 	.inst	0x00050000 ; undefined
    printf("Core %d up at Exception level %d\n", get_core_id(), get_el());
  50:	00002827 	.inst	0x00002827 ; undefined
  54:	1b7e0005 	.inst	0x1b7e0005 ; undefined
  58:	00050000 	.inst	0x00050000 ; undefined
  5c:	00002b1e 	.inst	0x00002b1e ; undefined
  60:	24520005 	cmphs	p5.h, p0/z, z0.h, z18.h
  64:	00050000 	.inst	0x00050000 ; undefined
  68:	000004a9 	.inst	0x000004a9 ; undefined
  6c:	03700005 	.inst	0x03700005 ; undefined
    }
  70:	00050000 	.inst	0x00050000 ; undefined
  74:	00001b31 	.inst	0x00001b31 ; undefined
    ldr x0, =(SCTLR_EL1_EE_LITTLE | SCTLR_EL1_E0E_LITTLE |\
  78:	22aa0005 	.inst	0x22aa0005 ; undefined
    msr SCTLR_EL1, x0
  7c:	00050000 	.inst	0x00050000 ; undefined
    ldr x0, =(SCR_EL3_RW_AARCH64 | SCR_EL3_NS)
  80:	00001324 	.inst	0x00001324 ; undefined
    msr SCR_EL3, x0
  84:	268d0005 	.inst	0x268d0005 ; undefined
    ldr x0, =(HCR_EL2_RW_AARCH64)
  88:	00050000 	.inst	0x00050000 ; undefined
    msr HCR_EL2, x0 
  8c:	00000831 	.inst	0x00000831 ; undefined
    msr ELR_EL3, lr
  90:	06080005 	.inst	0x06080005 ; undefined
    ldr x0, =(SPSR_MODE_EL1h | SPSR_MASK_EXCEPTIONS)
  94:	00050000 	.inst	0x00050000 ; undefined
    msr SPSR_EL3, x0
  98:	00001d0c 	.inst	0x00001d0c ; undefined
    ldr x0, =STACK_BASE
  9c:	05550005 	mov	z5.h, p5/z, #0
    msr SP_EL1, x0
  a0:	00050000 	.inst	0x00050000 ; undefined
    eret
  a4:	00002530 	.inst	0x00002530 ; undefined
  a8:	1a4f0005 	.inst	0x1a4f0005 ; undefined
  ac:	00050000 	.inst	0x00050000 ; undefined
  b0:	000028d4 	.inst	0x000028d4 ; undefined
  b4:	26390005 	.inst	0x26390005 ; undefined
  b8:	00050000 	.inst	0x00050000 ; undefined
  bc:	000005e0 	.inst	0x000005e0 ; undefined
  c0:	17e50005 	b	ffffffffff9400d4 <__bss_end+0xffffffffff93f6c4>
  c4:	00050000 	.inst	0x00050000 ; undefined
  c8:	00001757 	.inst	0x00001757 ; undefined
  cc:	16ea0005 	b	fffffffffba800e0 <__bss_end+0xfffffffffba7f6d0>
void irq_handler(void) {
  d0:	00050000 	.inst	0x00050000 ; undefined
    printf("IRQ HANDLER\n");
  d4:	00001f17 	.inst	0x00001f17 ; undefined
  d8:	1a3d0005 	.inst	0x1a3d0005 ; undefined
void irq_handler(void) {
  dc:	00050000 	.inst	0x00050000 ; undefined
    printf("IRQ HANDLER\n");
  e0:	00002226 	.inst	0x00002226 ; undefined
    while(1);
  e4:	040d0005 	uabd	z5.b, p0/m, z5.b, z0.b
  e8:	00050000 	.inst	0x00050000 ; undefined
  ec:	00001949 	.inst	0x00001949 ; undefined
void __attribute__ ((interrupt ("ABORT"))) reset_handler(void) {
  f0:	1b1d0005 	madd	w5, w0, w29, w0
    printf("RESET HANDLER\n");
  f4:	00050000 	.inst	0x00050000 ; undefined
  f8:	00000d0e 	.inst	0x00000d0e ; undefined
void __attribute__ ((interrupt ("ABORT"))) reset_handler(void) {
  fc:	04430005 	subr	z5.h, p0/m, z5.h, z0.h
    printf("RESET HANDLER\n");
 100:	00050000 	.inst	0x00050000 ; undefined
    while(1);
 104:	0000176d 	.inst	0x0000176d ; undefined
 108:	28f50005 	ldp	w5, w0, [x0], #-88
 10c:	00050000 	.inst	0x00050000 ; undefined
void __attribute__ ((interrupt ("ABORT"))) prefetch_abort_handler(void) {
 110:	00000e4e 	.inst	0x00000e4e ; undefined
    printf("PREFETCH ABORT HANDLER\n");
 114:	048f0005 	.inst	0x048f0005 ; undefined
 118:	00050000 	.inst	0x00050000 ; undefined
void __attribute__ ((interrupt ("ABORT"))) prefetch_abort_handler(void) {
 11c:	00001e59 	.inst	0x00001e59 ; undefined
    printf("PREFETCH ABORT HANDLER\n");
 120:	06a20005 	.inst	0x06a20005 ; undefined
    while(1);
 124:	00050000 	.inst	0x00050000 ; undefined
 128:	00001c0e 	.inst	0x00001c0e ; undefined
 12c:	22e80005 	.inst	0x22e80005 ; undefined
void __attribute__ ((interrupt ("ABORT"))) data_abort_handler(void) {
 130:	00050000 	.inst	0x00050000 ; undefined
    printf("DATA ABORT HANDLER\n");
 134:	0000136c 	.inst	0x0000136c ; undefined
 138:	27fa0005 	.inst	0x27fa0005 ; undefined
void __attribute__ ((interrupt ("ABORT"))) data_abort_handler(void) {
 13c:	00050000 	.inst	0x00050000 ; undefined
    printf("DATA ABORT HANDLER\n");
 140:	000017fc 	.inst	0x000017fc ; undefined
    while(1);
 144:	1a920005 	csel	w5, w0, w18, eq  // eq = none
 148:	00050000 	.inst	0x00050000 ; undefined
 14c:	00000d9e 	.inst	0x00000d9e ; undefined
void __attribute__ ((interrupt ("UNDEF"))) undefined_instruction_handler(void) {
 150:	1d7a0005 	.inst	0x1d7a0005 ; undefined
    printf("UNDEFINED INSTRUCTION HANDLER\n");
 154:	00050000 	.inst	0x00050000 ; undefined
 158:	00000420 	.inst	0x00000420 ; undefined
void __attribute__ ((interrupt ("UNDEF"))) undefined_instruction_handler(void) {
 15c:	203d0005 	.inst	0x203d0005 ; undefined
    printf("UNDEFINED INSTRUCTION HANDLER\n");
 160:	00050000 	.inst	0x00050000 ; undefined
    while(1);
 164:	00002c66 	.inst	0x00002c66 ; undefined
 168:	21080005 	.inst	0x21080005 ; undefined
 16c:	00050000 	.inst	0x00050000 ; undefined
void __attribute__ ((interrupt ("SWI"))) software_interrupt_handler(void) {
 170:	0000059a 	.inst	0x0000059a ; undefined
    printf("SWI HANDLER\n");
 174:	0ebf0005 	saddl	v5.2d, v0.2s, v31.2s
 178:	00050000 	.inst	0x00050000 ; undefined
void __attribute__ ((interrupt ("SWI"))) software_interrupt_handler(void) {
 17c:	00002570 	.inst	0x00002570 ; undefined
    printf("SWI HANDLER\n");
 180:	227b0005 	.inst	0x227b0005 ; undefined
    while(1);
 184:	00050000 	.inst	0x00050000 ; undefined
 188:	00001116 	.inst	0x00001116 ; undefined
 18c:	21540005 	.inst	0x21540005 ; undefined
void __attribute__ ((interrupt ("FIQ"))) fast_irq_handler(void) {
 190:	00050000 	.inst	0x00050000 ; undefined
    printf("FIQ HANDLER\n");
 194:	0000063d 	.inst	0x0000063d ; undefined
 198:	065f0005 	.inst	0x065f0005 ; undefined
void __attribute__ ((interrupt ("FIQ"))) fast_irq_handler(void) {
 19c:	00050000 	.inst	0x00050000 ; undefined
    printf("FIQ HANDLER\n");
 1a0:	0000168e 	.inst	0x0000168e ; undefined
    while(1);
 1a4:	09bf0005 	.inst	0x09bf0005 ; undefined
    str  xzr, [x0], #8
 1a8:	00050000 	.inst	0x00050000 ; undefined
    subs x1, x1, #8
 1ac:	00000733 	.inst	0x00000733 ; undefined
    b.gt memzero
 1b0:	25f10005 	.inst	0x25f10005 ; undefined
    ret
 1b4:	00050000 	.inst	0x00050000 ; undefined
 1b8:	000011f6 	.inst	0x000011f6 ; undefined
 1bc:	067f0005 	.inst	0x067f0005 ; undefined
void uart_init(){
 1c0:	00050000 	.inst	0x00050000 ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1c4:	00002643 	.inst	0x00002643 ; undefined
    delay(150);
 1c8:	0d400005 	ld1	{v5.b}[0], [x0]
void uart_init(){
 1cc:	00050000 	.inst	0x00050000 ; undefined
 1d0:	000010bc 	.inst	0x000010bc ; undefined
    *AUX_ENABLES = 0;
 1d4:	27930005 	.inst	0x27930005 ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1d8:	00050000 	.inst	0x00050000 ; undefined
    *AUX_ENABLES = 0;
 1dc:	000015fc 	.inst	0x000015fc ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1e0:	150e0005 	b	43801f4 <__bss_end+0x437f7e4>
    *AUX_ENABLES = 0;
 1e4:	00050000 	.inst	0x00050000 ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1e8:	000013b8 	.inst	0x000013b8 ; undefined
    *AUX_ENABLES = 0;
 1ec:	20040005 	.inst	0x20040005 ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1f0:	00050000 	.inst	0x00050000 ; undefined
    gpio->GPPUD = 0;
 1f4:	00002b64 	.inst	0x00002b64 ; undefined
    delay(150);
 1f8:	0db70005 	st2	{v5.b, v6.b}[0], [x0], x23
    gpio->GPPUDCLK0 = (1 << 14) | (1 << 15); 
 1fc:	00050000 	.inst	0x00050000 ; undefined
 200:	000018fb 	.inst	0x000018fb ; undefined
    delay(150);
 204:	24890005 	cmphs	p5.s, p0/z, z0.s, z9.s
    gpio->GPPUDCLK0 = (1 << 14) | (1 << 15); 
 208:	00050000 	.inst	0x00050000 ; undefined
    delay(150);
 20c:	0000085b 	.inst	0x0000085b ; undefined
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
 210:	14470005 	b	11c0224 <__bss_end+0x11bf814>
    mini_uart->AUX_MU_IIR_REG = 0x3 << 1; 
 214:	00050000 	.inst	0x00050000 ; undefined
    gpio->GPPUDCLK0 = 0; 
 218:	000007af 	.inst	0x000007af ; undefined
    mini_uart->AUX_MU_BAUD_REG = 271;
 21c:	1e240005 	fcvtas	w5, s0
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
 220:	00050000 	.inst	0x00050000 ; undefined
    *(reg32*)0x3f215068 = 271;
 224:	0000053e 	.inst	0x0000053e ; undefined
 228:	1f660005 	fnmadd	d5, d0, d6, d0
    gpio->GPPUDCLK0 = 0; 
 22c:	00050000 	.inst	0x00050000 ; undefined
    *AUX_ENABLES = 1;
 230:	000011b8 	.inst	0x000011b8 ; undefined
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
 234:	220c0005 	.inst	0x220c0005 ; undefined
 238:	00050000 	.inst	0x00050000 ; undefined
 23c:	00000e0b 	.inst	0x00000e0b ; undefined
 240:	21220005 	.inst	0x21220005 ; undefined
    mini_uart->AUX_MU_IIR_REG = 0x3 << 1; 
 244:	00050000 	.inst	0x00050000 ; undefined
    mini_uart->AUX_MU_BAUD_REG = 271;
 248:	00001b6e 	.inst	0x00001b6e ; undefined
    *AUX_ENABLES = 1;
 24c:	166a0005 	b	fffffffff9a80260 <__bss_end+0xfffffffff9a7f850>
}
 250:	00050000 	.inst	0x00050000 ; undefined
    *(reg32*)0x3f215068 = 271;
 254:	0000266b 	.inst	0x0000266b ; undefined
    *AUX_ENABLES = 1;
 258:	1ae80005 	.inst	0x1ae80005 ; undefined
}
 25c:	00050000 	.inst	0x00050000 ; undefined
 260:	00002298 	.inst	0x00002298 ; undefined
 264:	23ad0005 	.inst	0x23ad0005 ; undefined
 268:	00050000 	.inst	0x00050000 ; undefined
 26c:	000024cb 	.inst	0x000024cb ; undefined
    return mini_uart->AUX_MU_LSR_REG & 0x1;
 270:	03f60005 	.inst	0x03f60005 ; undefined
 274:	00050000 	.inst	0x00050000 ; undefined
 278:	00001173 	.inst	0x00001173 ; undefined
 27c:	1ec60005 	.inst	0x1ec60005 ; undefined
}
 280:	00050000 	.inst	0x00050000 ; undefined
 284:	00002b30 	.inst	0x00002b30 ; undefined
 288:	24640005 	cmphs	p5.h, p0/z, z0.h, #16
 28c:	00050000 	.inst	0x00050000 ; undefined
    uint8 data = mini_uart->AUX_MU_IO_REG & 0xFF;
 290:	00001301 	.inst	0x00001301 ; undefined
 294:	14f90005 	b	3e402a8 <__bss_end+0x3e3f898>
 298:	00050000 	.inst	0x00050000 ; undefined
 29c:	00002614 	.inst	0x00002614 ; undefined
}
 2a0:	20260005 	.inst	0x20260005 ; undefined
 2a4:	00050000 	.inst	0x00050000 ; undefined
 2a8:	0000162a 	.inst	0x0000162a ; undefined
 2ac:	00070005 	.inst	0x00070005 ; undefined
    mini_uart->AUX_MU_IO_REG = data;
 2b0:	00050000 	.inst	0x00050000 ; undefined
void uart_write(uint8 data){
 2b4:	00001cc6 	.inst	0x00001cc6 ; undefined
    mini_uart->AUX_MU_IO_REG = data;
 2b8:	1e0c0005 	.inst	0x1e0c0005 ; undefined
 2bc:	00050000 	.inst	0x00050000 ; undefined
 2c0:	00000c4c 	.inst	0x00000c4c ; undefined
}
 2c4:	1ad30005 	.inst	0x1ad30005 ; undefined
 2c8:	00050000 	.inst	0x00050000 ; undefined
 2cc:	00001cf3 	.inst	0x00001cf3 ; undefined
    uart_write(data);
 2d0:	1d2f0005 	.inst	0x1d2f0005 ; undefined
 2d4:	00050000 	.inst	0x00050000 ; undefined
 2d8:	000015b6 	.inst	0x000015b6 ; undefined
 2dc:	15d60005 	b	75802f0 <__bss_end+0x757f8e0>
    while (num/d >= base)
 2e0:	00050000 	.inst	0x00050000 ; undefined
 2e4:	00000f22 	.inst	0x00000f22 ; undefined
    unsigned int d=1;
 2e8:	03810005 	.inst	0x03810005 ; undefined
 2ec:	00050000 	.inst	0x00050000 ; undefined
        d*=base;
 2f0:	000016d2 	.inst	0x000016d2 ; undefined
    while (num/d >= base)
 2f4:	09720005 	.inst	0x09720005 ; undefined
 2f8:	00050000 	.inst	0x00050000 ; undefined
 2fc:	00001581 	.inst	0x00001581 ; undefined
    while (d!=0) {
 300:	07890005 	.inst	0x07890005 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 304:	00050000 	.inst	0x00050000 ; undefined
 308:	0000191e 	.inst	0x0000191e ; undefined
 30c:	09d80005 	.inst	0x09d80005 ; undefined
 310:	00050000 	.inst	0x00050000 ; undefined
        if (n || dgt>0 || d==0) {
 314:	00002b45 	.inst	0x00002b45 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 318:	20e00005 	.inst	0x20e00005 ; undefined
        if (n || dgt>0 || d==0) {
 31c:	00050000 	.inst	0x00050000 ; undefined
 320:	000025d8 	.inst	0x000025d8 ; undefined
 324:	15590005 	b	5640338 <__bss_end+0x563f928>
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 328:	00050000 	.inst	0x00050000 ; undefined
        if (n || dgt>0 || d==0) {
 32c:	0000277f 	.inst	0x0000277f ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 330:	22be0005 	.inst	0x22be0005 ; undefined
        if (n || dgt>0 || d==0) {
 334:	00050000 	.inst	0x00050000 ; undefined
        num%= d;
 338:	00000c18 	.inst	0x00000c18 ; undefined
        d/=base;
 33c:	1b470005 	.inst	0x1b470005 ; undefined
        if (n || dgt>0 || d==0) {
 340:	00050000 	.inst	0x00050000 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 344:	00000bb0 	.inst	0x00000bb0 ; undefined
 348:	1d1f0005 	.inst	0x1d1f0005 ; undefined
 34c:	00050000 	.inst	0x00050000 ; undefined
 350:	00002a53 	.inst	0x00002a53 ; undefined
 354:	1afa0005 	.inst	0x1afa0005 ; undefined
 358:	00050000 	.inst	0x00050000 ; undefined
 35c:	00001854 	.inst	0x00001854 ; undefined
            ++n;
 360:	04b40005 	add	z5.s, z0.s, z20.s
    while (d!=0) {
 364:	00050000 	.inst	0x00050000 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 368:	00000472 	.inst	0x00000472 ; undefined
    while (d!=0) {
 36c:	29540005 	ldp	w5, w0, [x0, #160]
    *bf=0;
 370:	00050000 	.inst	0x00050000 ; undefined
    }
 374:	00002a8e 	.inst	0x00002a8e ; undefined
    while (d!=0) {
 378:	12d90005 	.inst	0x12d90005 ; undefined
    *bf=0;
 37c:	00050000 	.inst	0x00050000 ; undefined
    }
 380:	00001983 	.inst	0x00001983 ; undefined
 384:	1a620005 	.inst	0x1a620005 ; undefined
    unsigned int d=1;
 388:	00050000 	.inst	0x00050000 ; undefined
 38c:	000002ae 	.inst	0x000002ae ; undefined
    *(*((char**)p))++ = c;
 390:	2d250005 	stp	s5, s0, [x0, #-216]
 394:	00050000 	.inst	0x00050000 ; undefined
 398:	00000f9c 	.inst	0x00000f9c ; undefined
 39c:	13980005 	extr	w5, w0, w24, #0
    }
 3a0:	00050000 	.inst	0x00050000 ; undefined
 3a4:	00002187 	.inst	0x00002187 ; undefined
 3a8:	0bcc0005 	.inst	0x0bcc0005 ; undefined
 3ac:	00050000 	.inst	0x00050000 ; undefined
    {
 3b0:	000001e7 	.inst	0x000001e7 ; undefined
    char fc=z? '0' : ' ';
 3b4:	20cc0005 	.inst	0x20cc0005 ; undefined
    {
 3b8:	00050000 	.inst	0x00050000 ; undefined
 3bc:	00000b3e 	.inst	0x00000b3e ; undefined
    while (*p++ && n > 0)
 3c0:	165a0005 	b	fffffffff96803d4 <__bss_end+0xfffffffff967f9c4>
    {
 3c4:	00050000 	.inst	0x00050000 ; undefined
 3c8:	00001ba8 	.inst	0x00001ba8 ; undefined
 3cc:	14b90005 	b	2e403e0 <__bss_end+0x2e3f9d0>
 3d0:	00050000 	.inst	0x00050000 ; undefined
    char fc=z? '0' : ' ';
 3d4:	00002720 	.inst	0x00002720 ; undefined
 3d8:	25940005 	cmpge	p5.s, p0/z, z0.s, #-12
    while (*p++ && n > 0)
 3dc:	00050000 	.inst	0x00050000 ; undefined
    char fc=z? '0' : ' ';
 3e0:	00000cac 	.inst	0x00000cac ; undefined
    {
 3e4:	07510005 	.inst	0x07510005 ; undefined
    while (*p++ && n > 0)
 3e8:	00050000 	.inst	0x00050000 ; undefined
 3ec:	00000aee 	.inst	0x00000aee ; undefined
 3f0:	29840005 	stp	w5, w0, [x0, #32]!
 3f4:	00050000 	.inst	0x00050000 ; undefined
 3f8:	000026db 	.inst	0x000026db ; undefined
 3fc:	250a0005 	cmpge	p5.b, p0/z, z0.b, #10
 400:	00050000 	.inst	0x00050000 ; undefined
 404:	0000121f 	.inst	0x0000121f ; undefined
        n--;
 408:	1e7d0005 	.inst	0x1e7d0005 ; undefined
 40c:	00050000 	.inst	0x00050000 ; undefined
    while (*p++ && n > 0)
 410:	000027ab 	.inst	0x000027ab ; undefined
    while (n-- > 0)
 414:	19f10005 	.inst	0x19f10005 ; undefined
 418:	00050000 	.inst	0x00050000 ; undefined
 41c:	00001dd2 	.inst	0x00001dd2 ; undefined
        putf(putp,fc);
 420:	236f0005 	.inst	0x236f0005 ; undefined
 424:	00050000 	.inst	0x00050000 ; undefined
 428:	00002d10 	.inst	0x00002d10 ; undefined
    while (n-- > 0)
 42c:	19b60005 	.inst	0x19b60005 ; undefined
 430:	00050000 	.inst	0x00050000 ; undefined
 434:	000027e2 	.inst	0x000027e2 ; undefined
 438:	04ca0005 	smin	z5.d, p0/m, z5.d, z0.d
    while ((ch= *bf++))
 43c:	00050000 	.inst	0x00050000 ; undefined
 440:	000016c3 	.inst	0x000016c3 ; undefined
 444:	02960005 	.inst	0x02960005 ; undefined
        putf(putp,ch);
 448:	00050000 	.inst	0x00050000 ; undefined
 44c:	00001414 	.inst	0x00001414 ; undefined
    while ((ch= *bf++))
 450:	1a280005 	.inst	0x1a280005 ; undefined
 454:	00050000 	.inst	0x00050000 ; undefined
    }
 458:	000028a0 	.inst	0x000028a0 ; undefined
 45c:	2d3d0005 	stp	s5, s0, [x0, #-24]
 460:	00050000 	.inst	0x00050000 ; undefined
 464:	00001070 	.inst	0x00001070 ; undefined
 468:	177c0005 	b	fffffffffdf0047c <__bss_end+0xfffffffffdeffa6c>
    while (n-- > 0)
 46c:	00050000 	.inst	0x00050000 ; undefined
 470:	00002c05 	.inst	0x00002c05 ; undefined
 474:	019e0005 	.inst	0x019e0005 ; undefined
 478:	00050000 	.inst	0x00050000 ; undefined
 47c:	0000071e 	.inst	0x0000071e ; undefined
    {
 480:	27410005 	.inst	0x27410005 ; undefined
 484:	00050000 	.inst	0x00050000 ; undefined
 488:	00000d28 	.inst	0x00000d28 ; undefined
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
 48c:	02450005 	.inst	0x02450005 ; undefined
 490:	00050000 	.inst	0x00050000 ; undefined
    {
 494:	00000c08 	.inst	0x00000c08 ; undefined
 498:	1eac0005 	.inst	0x1eac0005 ; undefined
                    ui2a(va_arg(va, unsigned int),10,0,bf);
 49c:	00050000 	.inst	0x00050000 ; undefined
    {
 4a0:	0000145e 	.inst	0x0000145e ; undefined
 4a4:	0d870005 	st1	{v5.b}[0], [x0], x7
 4a8:	00050000 	.inst	0x00050000 ; undefined
        *bf++ = '-';
 4ac:	00002b9a 	.inst	0x00002b9a ; undefined
 4b0:	0a050005 	and	w5, w0, w5
    {
 4b4:	00050000 	.inst	0x00050000 ; undefined
 4b8:	000025aa 	.inst	0x000025aa ; undefined
 4bc:	11390005 	add	w5, w0, #0xe40
    while ((ch=*(fmt++))) {
 4c0:	00050000 	.inst	0x00050000 ; undefined
 4c4:	000006c9 	.inst	0x000006c9 ; undefined
        if (ch!='%')
 4c8:	12350005 	and	w5, w0, #0x800
 4cc:	00050000 	.inst	0x00050000 ; undefined
    while ((ch=*(fmt++))) {
 4d0:	000007c2 	.inst	0x000007c2 ; undefined
            putf(putp,ch);
 4d4:	2cce0005 	ldp	s5, s0, [x0], #112
 4d8:	00050000 	.inst	0x00050000 ; undefined
    while ((ch=*(fmt++))) {
 4dc:	00001b90 	.inst	0x00001b90 ; undefined
 4e0:	20ef0005 	.inst	0x20ef0005 ; undefined
    }
 4e4:	00050000 	.inst	0x00050000 ; undefined
 4e8:	00000b0c 	.inst	0x00000b0c ; undefined
 4ec:	05760005 	.inst	0x05760005 ; undefined
 4f0:	00050000 	.inst	0x00050000 ; undefined
 4f4:	000010d4 	.inst	0x000010d4 ; undefined
 4f8:	00700005 	.inst	0x00700005 ; undefined
 4fc:	00050000 	.inst	0x00050000 ; undefined
            ch=*(fmt++);
 500:	000012c4 	.inst	0x000012c4 ; undefined
            if (ch=='0') {
 504:	2aac0005 	orn	w5, w0, w12, asr #0
 508:	00050000 	.inst	0x00050000 ; undefined
            ch=*(fmt++);
 50c:	00001b56 	.inst	0x00001b56 ; undefined
            char lz=0;
 510:	2a050005 	orr	w5, w0, w5
            if (ch>='0' && ch<='9') {
 514:	00050000 	.inst	0x00050000 ; undefined
    int num=0;
 518:	000013da 	.inst	0x000013da ; undefined
            if (ch>='0' && ch<='9') {
 51c:	223d0005 	.inst	0x223d0005 ; undefined
 520:	00050000 	.inst	0x00050000 ; undefined
 524:	00000f3d 	.inst	0x00000f3d ; undefined
            switch (ch) {
 528:	1d9d0005 	.inst	0x1d9d0005 ; undefined
 52c:	00050000 	.inst	0x00050000 ; undefined
 530:	000019cd 	.inst	0x000019cd ; undefined
 534:	24b10005 	cmphs	p5.s, p0/z, z0.s, #68
 538:	00050000 	.inst	0x00050000 ; undefined
 53c:	0000020a 	.inst	0x0000020a ; undefined
 540:	14920005 	b	2480554 <__bss_end+0x247fb44>
 544:	00050000 	.inst	0x00050000 ; undefined
                    ui2a(va_arg(va, unsigned int),10,0,bf);
 548:	0000142e 	.inst	0x0000142e ; undefined
 54c:	07030005 	.inst	0x07030005 ; undefined
 550:	00050000 	.inst	0x00050000 ; undefined
 554:	000016ad 	.inst	0x000016ad ; undefined
 558:	2b060005 	adds	w5, w0, w6
 55c:	00050000 	.inst	0x00050000 ; undefined
    ui2a(num,10,0,bf);
 560:	000010ec 	.inst	0x000010ec ; undefined
 564:	05030005 	orr	z5.d, z5.d, #0x100000000
 568:	00050000 	.inst	0x00050000 ; undefined
    else if (ch>='a' && ch<='f')
 56c:	00002bca 	.inst	0x00002bca ; undefined
 570:	1f280005 	fnmadd	s5, s0, s8, s0
    else if (ch>='A' && ch<='F')
 574:	00050000 	.inst	0x00050000 ; undefined
 578:	00001c84 	.inst	0x00001c84 ; undefined
        if (digit>base) break;
 57c:	0a590005 	and	w5, w0, w25, lsr #0
 580:	00050000 	.inst	0x00050000 ; undefined
        ch=*p++;
 584:	0000008a 	.inst	0x0000008a ; undefined
        num=num*base+digit;
 588:	0b960005 	add	w5, w0, w22, asr #0
        ch=*p++;
 58c:	00050000 	.inst	0x00050000 ; undefined
    else if (ch>='a' && ch<='f')
 590:	00002ce4 	.inst	0x00002ce4 ; undefined
    else if (ch>='A' && ch<='F')
 594:	08200005 	.inst	0x08200005 ; undefined
    if (ch>='0' && ch<='9')
 598:	00050000 	.inst	0x00050000 ; undefined
        return ch-'A'+10;
 59c:	000026f4 	.inst	0x000026f4 ; undefined
    else if (ch>='a' && ch<='f')
 5a0:	10540005 	adr	x5, a85a0 <__bss_end+0xa7b90>
    else if (ch>='A' && ch<='F')
 5a4:	00050000 	.inst	0x00050000 ; undefined
    if (ch>='0' && ch<='9')
 5a8:	000000a3 	.inst	0x000000a3 ; undefined
 5ac:	1e930005 	.inst	0x1e930005 ; undefined
        return ch-'0';
 5b0:	00050000 	.inst	0x00050000 ; undefined
        if (digit>base) break;
 5b4:	0000133e 	.inst	0x0000133e ; undefined
            switch (ch) {
 5b8:	18180005 	ldr	w5, 305b8 <__bss_end+0x2fba8>
 5bc:	00050000 	.inst	0x00050000 ; undefined
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
 5c0:	000003ba 	.inst	0x000003ba ; undefined
 5c4:	22fd0005 	.inst	0x22fd0005 ; undefined
 5c8:	00050000 	.inst	0x00050000 ; undefined
 5cc:	00002ac3 	.inst	0x00002ac3 ; undefined
 5d0:	14a20005 	b	28805e4 <__bss_end+0x287fbd4>
 5d4:	00050000 	.inst	0x00050000 ; undefined
 5d8:	00000d57 	.inst	0x00000d57 ; undefined
 5dc:	00250005 	.inst	0x00250005 ; NYI
 5e0:	00050000 	.inst	0x00050000 ; undefined
 5e4:	00000e36 	.inst	0x00000e36 ; undefined
                    putchw(putp,putf,w,lz,bf);
 5e8:	11040005 	add	w5, w0, #0x100
 5ec:	00050000 	.inst	0x00050000 ; undefined
 5f0:	00000b7a 	.inst	0x00000b7a ; undefined
 5f4:	1bf00005 	.inst	0x1bf00005 ; undefined
 5f8:	00050000 	.inst	0x00050000 ; undefined
 5fc:	00000c93 	.inst	0x00000c93 ; undefined
                    break;
 600:	0feb0005 	.inst	0x0feb0005 ; undefined
            switch (ch) {
 604:	00050000 	.inst	0x00050000 ; undefined
 608:	000023be 	.inst	0x000023be ; undefined
                    i2a(va_arg(va, int),bf);
 60c:	09800005 	.inst	0x09800005 ; undefined
 610:	00050000 	.inst	0x00050000 ; undefined
 614:	00001006 	.inst	0x00001006 ; undefined
 618:	21cb0005 	.inst	0x21cb0005 ; undefined
 61c:	00050000 	.inst	0x00050000 ; undefined
    if (num<0) {
 620:	0000290e 	.inst	0x0000290e ; undefined
 624:	2ca40005 	stp	s5, s0, [x0], #-224
        *bf++ = '-';
 628:	00050000 	.inst	0x00050000 ; undefined
        num=-num;
 62c:	000008b2 	.inst	0x000008b2 ; undefined
        *bf++ = '-';
 630:	1f870005 	.inst	0x1f870005 ; undefined
 634:	00050000 	.inst	0x00050000 ; undefined
 638:	00001725 	.inst	0x00001725 ; undefined
            switch (ch) {
 63c:	17130005 	b	fffffffffc4c0650 <__bss_end+0xfffffffffc4bfc40>
 640:	00050000 	.inst	0x00050000 ; undefined
 644:	000020a1 	.inst	0x000020a1 ; undefined
 648:	1fe70005 	fnmadd	h5, h0, h7, h0
 64c:	00050000 	.inst	0x00050000 ; undefined
    }
 650:	00000100 	.inst	0x00000100 ; undefined
 654:	2a740005 	orn	w5, w0, w20, lsr #0
 658:	00050000 	.inst	0x00050000 ; undefined
 65c:	0000026a 	.inst	0x0000026a ; undefined
 660:	030e0005 	.inst	0x030e0005 ; undefined
 664:	00050000 	.inst	0x00050000 ; undefined
 668:	000018bd 	.inst	0x000018bd ; undefined
        return ch-'a'+10;
 66c:	12830005 	mov	w5, #0xffffe7ff            	// #-6145
 670:	00050000 	.inst	0x00050000 ; undefined
                ch=*(fmt++);
 674:	00000cbc 	.inst	0x00000cbc ; undefined
                lz=1;
 678:	14cf0005 	b	33c068c <__bss_end+0x33bfc7c>
                ch=*(fmt++);
 67c:	00050000 	.inst	0x00050000 ; undefined
 680:	00000898 	.inst	0x00000898 ; undefined
                    putchw(putp,putf,w,0,va_arg(va, char*));
 684:	28850005 	stp	w5, w0, [x0], #40
 688:	00050000 	.inst	0x00050000 ; undefined
 68c:	00001a7a 	.inst	0x00001a7a ; undefined
 690:	0ed20005 	.inst	0x0ed20005 ; undefined
 694:	00050000 	.inst	0x00050000 ; undefined
 698:	00000aad 	.inst	0x00000aad ; undefined
 69c:	0f7e0005 	.inst	0x0f7e0005 ; undefined
 6a0:	00050000 	.inst	0x00050000 ; undefined
 6a4:	000005ef 	.inst	0x000005ef ; undefined
 6a8:	1bc00005 	.inst	0x1bc00005 ; undefined
                    break;
 6ac:	00050000 	.inst	0x00050000 ; undefined
                    putf(putp,(char)(va_arg(va, int)));
 6b0:	00001d51 	.inst	0x00001d51 ; undefined
 6b4:	187e0005 	ldr	w5, fc6b4 <__bss_end+0xfbca4>
 6b8:	00050000 	.inst	0x00050000 ; undefined
 6bc:	00001ed8 	.inst	0x00001ed8 ; undefined
 6c0:	01430005 	.inst	0x01430005 ; undefined
 6c4:	00050000 	.inst	0x00050000 ; undefined
 6c8:	000000ba 	.inst	0x000000ba ; undefined
                    break;
 6cc:	0ee40005 	.inst	0x0ee40005 ; undefined
                    putf(putp,ch);
 6d0:	00050000 	.inst	0x00050000 ; undefined
 6d4:	0000205a 	.inst	0x0000205a ; undefined
 6d8:	173c0005 	b	fffffffffcf006ec <__bss_end+0xfffffffffceffcdc>
                    ui2a(va_arg(va, unsigned int),10,0,bf);
 6dc:	00050000 	.inst	0x00050000 ; undefined
 6e0:	00001c60 	.inst	0x00001c60 ; undefined
 6e4:	25430005 	cmpge	p5.h, p0/z, z0.h, #3
 6e8:	00050000 	.inst	0x00050000 ; undefined
 6ec:	0000255b 	.inst	0x0000255b ; undefined
 6f0:	21710005 	.inst	0x21710005 ; undefined
 6f4:	00050000 	.inst	0x00050000 ; undefined
 6f8:	0000163e 	.inst	0x0000163e ; undefined
                    i2a(va_arg(va, int),bf);
 6fc:	05c70005 	.inst	0x05c70005 ; undefined
 700:	00050000 	.inst	0x00050000 ; undefined
 704:	0000195c 	.inst	0x0000195c ; undefined
 708:	2cfa0005 	ldp	s5, s0, [x0], #-48
 70c:	00050000 	.inst	0x00050000 ; undefined
 710:	0000152f 	.inst	0x0000152f ; undefined
 714:	1fa20005 	.inst	0x1fa20005 ; undefined
 718:	00050000 	.inst	0x00050000 ; undefined
                    putf(putp,(char)(va_arg(va, int)));
 71c:	00002bb3 	.inst	0x00002bb3 ; undefined
 720:	0dd00005 	ld1	{v5.b}[0], [x0], x16
 724:	00050000 	.inst	0x00050000 ; undefined
 728:	00000184 	.inst	0x00000184 ; undefined
 72c:	003f0005 	.inst	0x003f0005 ; NYI
 730:	00050000 	.inst	0x00050000 ; undefined
 734:	00000e8e 	.inst	0x00000e8e ; undefined
 738:	0c310005 	.inst	0x0c310005 ; undefined
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
 73c:	00050000 	.inst	0x00050000 ; undefined
 740:	00001dba 	.inst	0x00001dba ; undefined
 744:	20880005 	.inst	0x20880005 ; undefined
 748:	00050000 	.inst	0x00050000 ; undefined
 74c:	0000299b 	.inst	0x0000299b ; undefined
 750:	0c5e0005 	.inst	0x0c5e0005 ; undefined
 754:	00050000 	.inst	0x00050000 ; undefined
 758:	00002840 	.inst	0x00002840 ; undefined
                    putchw(putp,putf,w,0,va_arg(va, char*));
 75c:	13570005 	.inst	0x13570005 ; undefined
 760:	00050000 	.inst	0x00050000 ; undefined
 764:	00002403 	.inst	0x00002403 ; undefined
 768:	28de0005 	ldp	w5, w0, [x0], #240
 76c:	00050000 	.inst	0x00050000 ; undefined
 770:	00000586 	.inst	0x00000586 ; undefined
 774:	0a880005 	and	w5, w0, w8, asr #0
 778:	00050000 	.inst	0x00050000 ; undefined
                    ui2a(va_arg(va, unsigned int),10,0,bf);
 77c:	00001c3b 	.inst	0x00001c3b ; undefined
 780:	1fb80005 	.inst	0x1fb80005 ; undefined
 784:	00050000 	.inst	0x00050000 ; undefined
                    i2a(va_arg(va, int),bf);
 788:	00000220 	.inst	0x00000220 ; undefined
 78c:	17c70005 	b	ffffffffff1c07a0 <__bss_end+0xffffffffff1bfd90>
 790:	00050000 	.inst	0x00050000 ; undefined
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
 794:	00001186 	.inst	0x00001186 ; undefined
 798:	02d50005 	.inst	0x02d50005 ; undefined
 79c:	00050000 	.inst	0x00050000 ; undefined
                    putf(putp,(char)(va_arg(va, int)));
 7a0:	0000241a 	.inst	0x0000241a ; undefined
 7a4:	1e380005 	fcvtzs	w5, s0
 7a8:	00050000 	.inst	0x00050000 ; undefined
                    putchw(putp,putf,w,0,va_arg(va, char*));
 7ac:	000026bc 	.inst	0x000026bc ; undefined
 7b0:	28b70005 	stp	w5, w0, [x0], #-72
 7b4:	00050000 	.inst	0x00050000 ; undefined
 7b8:	000016f5 	.inst	0x000016f5 ; undefined
 7bc:	24eb0005 	cmphs	p5.d, p0/z, z0.d, #44
    stdout_putf=putf;
 7c0:	00050000 	.inst	0x00050000 ; undefined
 7c4:	0000011f 	.inst	0x0000011f ; undefined
 7c8:	23d80005 	.inst	0x23d80005 ; undefined
    stdout_putp=putp;
 7cc:	00050000 	.inst	0x00050000 ; undefined
    }
 7d0:	00000fbb 	.inst	0x00000fbb ; undefined
 7d4:	192d0005 	.inst	0x192d0005 ; undefined
 7d8:	00050000 	.inst	0x00050000 ; undefined
 7dc:	00002c4a 	.inst	0x00002c4a ; undefined
    {
 7e0:	09370005 	.inst	0x09370005 ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
 7e4:	00050000 	.inst	0x00050000 ; undefined
 7e8:	00001bdb 	.inst	0x00001bdb ; undefined
    {
 7ec:	034c0005 	.inst	0x034c0005 ; undefined
 7f0:	00050000 	.inst	0x00050000 ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
 7f4:	00000e77 	.inst	0x00000e77 ; undefined
    va_start(va,fmt);
 7f8:	23610005 	.inst	0x23610005 ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
 7fc:	00050000 	.inst	0x00050000 ; undefined
    va_start(va,fmt);
 800:	00000efc 	.inst	0x00000efc ; undefined
 804:	19a10005 	.inst	0x19a10005 ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
 808:	00050000 	.inst	0x00050000 ; undefined
    va_start(va,fmt);
 80c:	000011df 	.inst	0x000011df ; undefined
 810:	269f0005 	.inst	0x269f0005 ; undefined
 814:	00050000 	.inst	0x00050000 ; undefined
 818:	00000fdb 	.inst	0x00000fdb ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
 81c:	243c0005 	cmphs	p5.b, p0/z, z0.b, #112
 820:	00050000 	.inst	0x00050000 ; undefined
 824:	000011a4 	.inst	0x000011a4 ; undefined
 828:	0df60005 	ld2	{v5.b, v6.b}[0], [x0], x22
    {
 82c:	00050000 	.inst	0x00050000 ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
 830:	00000ea5 	.inst	0x00000ea5 ; undefined
    {
 834:	2a3f0005 	orn	w5, w0, wzr
 838:	00050000 	.inst	0x00050000 ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
 83c:	000002f7 	.inst	0x000002f7 ; undefined
    }
 840:	1b0f0006 	madd	w6, w0, w15, w0
 844:	00050000 	.inst	0x00050000 ; undefined
 848:	0000077c 	.inst	0x0000077c ; undefined
 84c:	0b220005 	add	w5, w0, w2, uxtb
    {
 850:	00060000 	.inst	0x00060000 ; undefined
    va_start(va,fmt);
 854:	000024dd 	.inst	0x000024dd ; undefined
    {
 858:	16190006 	b	fffffffff8640870 <__bss_end+0xfffffffff863fe60>
    va_start(va,fmt);
 85c:	00050000 	.inst	0x00050000 ; undefined
 860:	00000360 	.inst	0x00000360 ; undefined
 864:	270e0006 	.inst	0x270e0006 ; undefined
 868:	00060000 	.inst	0x00060000 ; undefined
    tfp_format(&s,putcp,fmt,va);
 86c:	000017be 	.inst	0x000017be ; undefined
    va_start(va,fmt);
 870:	0ac90006 	and	w6, w0, w9, ror #0
    tfp_format(&s,putcp,fmt,va);
 874:	00060000 	.inst	0x00060000 ; undefined
    va_start(va,fmt);
 878:	000004de 	.inst	0x000004de ; undefined
    tfp_format(&s,putcp,fmt,va);
 87c:	08030006 	stxrb	w3, w6, [x0]
 880:	00060000 	.inst	0x00060000 ; undefined
 884:	00000a2e 	.inst	0x00000a2e ; undefined
 888:	25c20005 	cmpge	p5.d, p0/z, z0.d, #2
    {
 88c:	00060000 	.inst	0x00060000 ; undefined
    tfp_format(&s,putcp,fmt,va);
 890:	00000a18 	.inst	0x00000a18 ; undefined
 894:	0a700006 	bic	w6, w0, w16, lsr #0
 898:	00060000 	.inst	0x00060000 ; undefined
    {
 89c:	0000213b 	.inst	0x0000213b ; undefined
 8a0:	296b0006 	ldp	w6, w0, [x0, #-168]
    tfp_format(&s,putcp,fmt,va);
 8a4:	00050000 	.inst	0x00050000 ; undefined
    *(*((char**)p))++ = c;
 8a8:	00000457 	.inst	0x00000457 ; undefined
 8ac:	00000006 	.inst	0x00000006 ; undefined
    }
 8b0:	00060000 	.inst	0x00060000 ; undefined
 8b4:	00001e73 	.inst	0x00001e73 ; undefined
 8b8:	03a50006 	.inst	0x03a50006 ; undefined
 8bc:	00060000 	.inst	0x00060000 ; undefined
    asm volatile("loop : subs %0, %0, #1\n\t"
 8c0:	000005b3 	.inst	0x000005b3 ; undefined
 8c4:	2cbc0006 	stp	s6, s0, [x0], #-32
}
 8c8:	00060000 	.inst	0x00060000 ; undefined
 8cc:	00000d70 	.inst	0x00000d70 ; undefined
    asm volatile("mrs %0, mpidr_el1\n\t"
 8d0:	14e70006 	b	39c08e8 <__bss_end+0x39bfed8>
 8d4:	00060000 	.inst	0x00060000 ; undefined
}
 8d8:	00000bf5 	.inst	0x00000bf5 ; undefined
 8dc:	28140006 	stnp	w6, w0, [x0, #160]
    asm volatile("mrs %0, CurrentEL\n\t"
 8e0:	00060000 	.inst	0x00060000 ; undefined
 8e4:	000021a7 	.inst	0x000021a7 ; undefined
}
 8e8:	0f100006 	.inst	0x0f100006 ; undefined
 8ec:	00060000 	.inst	0x00060000 ; undefined
 8f0:	00001271 	.inst	0x00001271 ; undefined
 8f4:	08440006 	ldxrb	w6, [x0]
 8f8:	00060000 	.inst	0x00060000 ; undefined
 8fc:	00002074 	.inst	0x00002074 ; undefined
 900:	14b90005 	b	2e40914 <__bss_end+0x2e3ff04>
 904:	00060000 	.inst	0x00060000 ; undefined
 908:	0000147a 	.inst	0x0000147a ; undefined
 90c:	0c790005 	.inst	0x0c790005 ; undefined
 910:	00050000 	.inst	0x00050000 ; undefined
 914:	000010b2 	.inst	0x000010b2 ; undefined
 918:	00000400 	.inst	0x00000400 ; undefined
 91c:	24760205 	cmphs	p5.h, p0/z, z16.h, #88
 920:	11050000 	add	w0, w0, #0x140
 924:	00000d01 	.inst	0x00000d01 ; undefined
 928:	07651305 	.inst	0x07651305 ; undefined
 92c:	04000000 	add	z0.b, p0/m, z0.b, z0.b
 930:	04050000 	.inst	0x04050000 ; undefined
 934:	00002758 	.inst	0x00002758 ; undefined
 938:	2c7e0505 	ldnp	s5, s1, [x8, #-16]
 93c:	04000000 	add	z0.b, p0/m, z0.b, z0.b
 940:	1f050000 	fmadd	s0, s0, s5, s0
 944:	0000088d 	.inst	0x0000088d ; undefined
 948:	22d72005 	.inst	0x22d72005 ; undefined
 94c:	22060000 	.inst	0x22060000 ; undefined
 950:	00001548 	.inst	0x00001548 ; undefined
 954:	233c2705 	.inst	0x233c2705 ; undefined
 958:	2f050000 	.inst	0x2f050000 ; undefined
 95c:	0000094c 	.inst	0x0000094c ; undefined
 960:	15983005 	b	660c974 <__bss_end+0x660bf64>
 964:	31050000 	adds	w0, w0, #0x140
 968:	0000061b 	.inst	0x0000061b ; undefined
 96c:	1aaf3405 	.inst	0x1aaf3405 ; undefined
 970:	36050000 	tbz	w0, #0, ffffffffffffa970 <__bss_end+0xffffffffffff9f60>
 974:	00001aad 	.inst	0x00001aad ; undefined
 978:	0e1c6905 	trn2	v5.8b, v8.8b, v28.8b
 97c:	6c050000 	stnp	d0, d0, [x0, #80]
 980:	00002342 	.inst	0x00002342 ; undefined
 984:	02846f05 	.inst	0x02846f05 ; undefined
 988:	72050000 	ands	w0, w0, #0x8000000
 98c:	00000568 	.inst	0x00000568 ; undefined
 990:	15c97505 	b	725dda4 <__bss_end+0x725d394>
 994:	04000000 	add	z0.b, p0/m, z0.b, z0.b
 998:	67050000 	.inst	0x67050000 ; undefined
 99c:	0000251e 	.inst	0x0000251e ; undefined
 9a0:	09f16805 	.inst	0x09f16805 ; undefined
 9a4:	04000000 	add	z0.b, p0/m, z0.b, z0.b
 9a8:	01600200 	.inst	0x01600200 ; undefined
 9ac:	45070000 	.inst	0x45070000 ; undefined
 9b0:	03000000 	.inst	0x03000000 ; undefined
 9b4:	01030100 	.inst	0x01030100 ; undefined
 9b8:	fc5c0502 	ldr	d2, [x8], #-64
 9bc:	0300000a 	.inst	0x0300000a ; undefined
 9c0:	3f07035e 	.inst	0x3f07035e ; undefined
 9c4:	04000009 	add	z9.b, p0/m, z9.b, z0.b
 9c8:	00099707 	.inst	0x00099707 ; undefined
 9cc:	00040400 	.inst	0x00040400 ; undefined
 9d0:	f6020004 	.inst	0xf6020004 ; undefined
 9d4:	07000003 	.inst	0x07000003 ; undefined
 9d8:	00000045 	.inst	0x00000045 ; undefined
 9dc:	03010003 	.inst	0x03010003 ; undefined
 9e0:	01030301 	.inst	0x01030301 ; undefined
 9e4:	09190702 	.inst	0x09190702 ; undefined
 9e8:	07040000 	.inst	0x07040000 ; undefined
 9ec:	0000092f 	.inst	0x0000092f ; undefined
 9f0:	04020304 	.inst	0x04020304 ; undefined
 9f4:	2ef50305 	.inst	0x2ef50305 ; undefined
 9f8:	03040000 	.inst	0x03040000 ; undefined
 9fc:	02050503 	.inst	0x02050503 ; undefined
 a00:	000007a4 	.inst	0x000007a4 ; undefined
 a04:	04000404 	add	z4.b, p1/m, z4.b, z0.b
 a08:	054d0200 	.inst	0x054d0200 ; undefined
 a0c:	45070000 	.inst	0x45070000 ; undefined
 a10:	03000000 	.inst	0x03000000 ; undefined
 a14:	16030100 	b	fffffffff80c0e14 <__bss_end+0xfffffffff80c0404>
 a18:	fc5c0504 	ldr	d4, [x8], #-64
 a1c:	0300000a 	.inst	0x0300000a ; undefined
 a20:	3f07025e 	.inst	0x3f07025e ; undefined
 a24:	04000009 	add	z9.b, p0/m, z9.b, z0.b
 a28:	00099707 	.inst	0x00099707 ; undefined
 a2c:	00040400 	.inst	0x00040400 ; undefined
 a30:	75020004 	.inst	0x75020004 ; undefined
 a34:	07000009 	.inst	0x07000009 ; undefined
 a38:	00000045 	.inst	0x00000045 ; undefined
 a3c:	03010003 	.inst	0x03010003 ; undefined
 a40:	02050301 	.inst	0x02050301 ; undefined
 a44:	000007a4 	.inst	0x000007a4 ; undefined
 a48:	07020403 	.inst	0x07020403 ; undefined
 a4c:	00000919 	.inst	0x00000919 ; undefined
 a50:	00040404 	.inst	0x00040404 ; undefined

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
    mrs x0, mpidr_el1
   0:	00000104 	.inst	0x00000104 ; undefined
    and x0, x0, #0xFF
   4:	00ca0003 	.inst	0x00ca0003 ; undefined
    cbnz x0, halt_proc
   8:	01040000 	.inst	0x01040000 ; undefined
    adr x0, __bss_start
   c:	000d0efb 	.inst	0x000d0efb ; undefined
    adr x1, __bss_end
  10:	01010101 	.inst	0x01010101 ; undefined
    sub x1, x1, x0
  14:	01000000 	.inst	0x01000000 ; undefined
    bl   memzero
  18:	73010000 	.inst	0x73010000 ; undefined
    bl el1_setup
  1c:	69006372 	stgp	x18, x24, [x27]
    b   kernel_main
  20:	756c636e 	.inst	0x756c636e ; undefined
    wfe
  24:	2f006564 	mvni	v4.2s, #0xb, lsl #24
    b halt_proc
  28:	656d6f68 	fnmls	z8.h, p3/m, z27.h, z13.h
  2c:	6862612f 	.inst	0x6862612f ; undefined
{
  30:	65687369 	fnmls	z9.h, p4/m, z27.h, z8.h
  34:	6f442f6b 	.inst	0x6f442f6b ; undefined
  38:	6f6c6e77 	.inst	0x6f6c6e77 ; undefined
    uart_init();
  3c:	2f736461 	.inst	0x2f736461 ; undefined
    init_printf(0, putc);
  40:	2d636367 	ldp	s7, s24, [x27, #-232]
  44:	2d6d7261 	ldp	s1, s28, [x19, #-152]
  48:	2d332e38 	stp	s24, s11, [x17, #-104]
  4c:	39313032 	strb	w18, [x1, #3148]
    printf("Core %d up at Exception level %d\n", get_core_id(), get_el());
  50:	2d33302e 	stp	s14, s12, [x1, #-104]
  54:	5f363878 	.inst	0x5f363878 ; undefined
  58:	612d3436 	.inst	0x612d3436 ; undefined
  5c:	68637261 	.inst	0x68637261 ; undefined
  60:	652d3436 	.inst	0x652d3436 ; undefined
  64:	6c2f666c 	stnp	d12, d25, [x19, #-272]
  68:	672f6269 	.inst	0x672f6269 ; undefined
  6c:	612f6363 	.inst	0x612f6363 ; undefined
    }
  70:	68637261 	.inst	0x68637261 ; undefined
  74:	652d3436 	.inst	0x652d3436 ; undefined
    ldr x0, =(SCTLR_EL1_EE_LITTLE | SCTLR_EL1_E0E_LITTLE |\
  78:	382f666c 	.inst	0x382f666c ; undefined
    msr SCTLR_EL1, x0
  7c:	302e332e 	adr	x14, 5c6e1 <__bss_end+0x5bcd1>
    ldr x0, =(SCR_EL3_RW_AARCH64 | SCR_EL3_NS)
  80:	636e692f 	.inst	0x636e692f ; undefined
    msr SCR_EL3, x0
  84:	6564756c 	fnmls	z12.h, p5/m, z11.h, z4.h
    ldr x0, =(HCR_EL2_RW_AARCH64)
  88:	656b0000 	fmla	z0.h, p0/m, z0.h, z11.h
    msr HCR_EL2, x0 
  8c:	6c656e72 	ldnp	d18, d27, [x19, #-432]
    msr ELR_EL3, lr
  90:	69616d5f 	ldpsw	xzr, x27, [x10, #-248]
    ldr x0, =(SPSR_MODE_EL1h | SPSR_MASK_EXCEPTIONS)
  94:	00632e6e 	.inst	0x00632e6e ; undefined
    msr SPSR_EL3, x0
  98:	75000001 	.inst	0x75000001 ; undefined
    ldr x0, =STACK_BASE
  9c:	2e747261 	uabdl	v1.4s, v19.4h, v20.4h
    msr SP_EL1, x0
  a0:	00020068 	.inst	0x00020068 ; undefined
    eret
  a4:	70797400 	adr	x0, f2f27 <__bss_end+0xf2517>
  a8:	682e7365 	.inst	0x682e7365 ; undefined
  ac:	00000200 	.inst	0x00000200 ; undefined
  b0:	6e697270 	uabdl2	v16.4s, v19.8h, v9.8h
  b4:	682e6674 	.inst	0x682e6674 ; undefined
  b8:	00000200 	.inst	0x00000200 ; undefined
  bc:	6c697475 	ldnp	d21, d29, [x3, #-368]
  c0:	00682e73 	.inst	0x00682e73 ; undefined
  c4:	73000002 	.inst	0x73000002 ; undefined
  c8:	72616474 	.inst	0x72616474 ; undefined
  cc:	00682e67 	.inst	0x00682e67 ; undefined
void irq_handler(void) {
  d0:	00000003 	.inst	0x00000003 ; undefined
    printf("IRQ HANDLER\n");
  d4:	09000105 	.inst	0x09000105 ; undefined
  d8:	00003002 	.inst	0x00003002 ; undefined
void irq_handler(void) {
  dc:	00000000 	.inst	0x00000000 ; undefined
    printf("IRQ HANDLER\n");
  e0:	05051700 	.inst	0x05051700 ; undefined
    while(1);
  e4:	06010513 	.inst	0x06010513 ; undefined
  e8:	3d050511 	str	b17, [x8, #321]
  ec:	004b2106 	.inst	0x004b2106 ; undefined
void __attribute__ ((interrupt ("ABORT"))) reset_handler(void) {
  f0:	83010402 	.inst	0x83010402 ; undefined
    printf("RESET HANDLER\n");
  f4:	01040200 	.inst	0x01040200 ; undefined
  f8:	04020017 	.inst	0x04020017 ; undefined
void __attribute__ ((interrupt ("ABORT"))) reset_handler(void) {
  fc:	02000d01 	.inst	0x02000d01 ; undefined
    printf("RESET HANDLER\n");
 100:	02170104 	.inst	0x02170104 ; undefined
    while(1);
 104:	01010001 	.inst	0x01010001 ; undefined
 108:	00000054 	.inst	0x00000054 ; undefined
 10c:	00320003 	.inst	0x00320003 ; NYI
void __attribute__ ((interrupt ("ABORT"))) prefetch_abort_handler(void) {
 110:	01040000 	.inst	0x01040000 ; undefined
    printf("PREFETCH ABORT HANDLER\n");
 114:	000d0efb 	.inst	0x000d0efb ; undefined
 118:	01010101 	.inst	0x01010101 ; undefined
void __attribute__ ((interrupt ("ABORT"))) prefetch_abort_handler(void) {
 11c:	01000000 	.inst	0x01000000 ; undefined
    printf("PREFETCH ABORT HANDLER\n");
 120:	73010000 	.inst	0x73010000 ; undefined
    while(1);
 124:	692f6372 	stgp	x18, x24, [x27, #-544]
 128:	0074696e 	.inst	0x0074696e ; undefined
 12c:	746e6900 	.inst	0x746e6900 ; undefined
void __attribute__ ((interrupt ("ABORT"))) data_abort_handler(void) {
 130:	75727265 	.inst	0x75727265 ; undefined
    printf("DATA ABORT HANDLER\n");
 134:	5f737470 	sqshl	d16, d3, #51
 138:	75746573 	.inst	0x75746573 ; undefined
void __attribute__ ((interrupt ("ABORT"))) data_abort_handler(void) {
 13c:	00532e70 	.inst	0x00532e70 ; undefined
    printf("DATA ABORT HANDLER\n");
 140:	00000001 	.inst	0x00000001 ; undefined
    while(1);
 144:	78020900 	sttrh	w0, [x8, #32]
 148:	00000000 	.inst	0x00000000 ; undefined
 14c:	18000000 	ldr	w0, 14c <data_abort_handler+0x1c>
void __attribute__ ((interrupt ("UNDEF"))) undefined_instruction_handler(void) {
 150:	22212223 	.inst	0x22212223 ; undefined
    printf("UNDEFINED INSTRUCTION HANDLER\n");
 154:	21232321 	.inst	0x21232321 ; undefined
 158:	02232123 	.inst	0x02232123 ; undefined
void __attribute__ ((interrupt ("UNDEF"))) undefined_instruction_handler(void) {
 15c:	0101000b 	.inst	0x0101000b ; undefined
    printf("UNDEFINED INSTRUCTION HANDLER\n");
 160:	00000206 	.inst	0x00000206 ; undefined
    while(1);
 164:	00ae0003 	.inst	0x00ae0003 ; undefined
 168:	01040000 	.inst	0x01040000 ; undefined
 16c:	000d0efb 	.inst	0x000d0efb ; undefined
void __attribute__ ((interrupt ("SWI"))) software_interrupt_handler(void) {
 170:	01010101 	.inst	0x01010101 ; undefined
    printf("SWI HANDLER\n");
 174:	01000000 	.inst	0x01000000 ; undefined
 178:	73010000 	.inst	0x73010000 ; undefined
void __attribute__ ((interrupt ("SWI"))) software_interrupt_handler(void) {
 17c:	692f6372 	stgp	x18, x24, [x27, #-544]
    printf("SWI HANDLER\n");
 180:	0074696e 	.inst	0x0074696e ; undefined
    while(1);
 184:	6c636e69 	ldnp	d9, d27, [x19, #-464]
 188:	00656475 	.inst	0x00656475 ; undefined
 18c:	6d6f682f 	ldp	d15, d26, [x1, #-272]
void __attribute__ ((interrupt ("FIQ"))) fast_irq_handler(void) {
 190:	62612f65 	.inst	0x62612f65 ; undefined
    printf("FIQ HANDLER\n");
 194:	68736968 	.inst	0x68736968 ; undefined
 198:	442f6b65 	.inst	0x442f6b65 ; undefined
void __attribute__ ((interrupt ("FIQ"))) fast_irq_handler(void) {
 19c:	6c6e776f 	ldnp	d15, d29, [x27, #-288]
    printf("FIQ HANDLER\n");
 1a0:	7364616f 	.inst	0x7364616f ; undefined
    while(1);
 1a4:	6363672f 	.inst	0x6363672f ; undefined
    str  xzr, [x0], #8
 1a8:	6d72612d 	ldp	d13, d24, [x9, #-224]
    subs x1, x1, #8
 1ac:	332e382d 	.inst	0x332e382d ; undefined
    b.gt memzero
 1b0:	3130322d 	adds	w13, w17, #0xc0c
    ret
 1b4:	33302e39 	.inst	0x33302e39 ; undefined
 1b8:	3638782d 	tbz	w13, #7, 10bc <__bss_end+0x6ac>
 1bc:	2d34365f 	stp	s31, s13, [x18, #-96]
void uart_init(){
 1c0:	63726161 	.inst	0x63726161 ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1c4:	2d343668 	stp	s8, s13, [x19, #-96]
    delay(150);
 1c8:	2f666c65 	.inst	0x2f666c65 ; undefined
void uart_init(){
 1cc:	2f62696c 	umlsl	v12.4s, v11.4h, v2.h[6]
 1d0:	2f636367 	umlsl	v7.4s, v27.4h, v3.h[2]
    *AUX_ENABLES = 0;
 1d4:	63726161 	.inst	0x63726161 ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1d8:	2d343668 	stp	s8, s13, [x19, #-96]
    *AUX_ENABLES = 0;
 1dc:	2f666c65 	.inst	0x2f666c65 ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1e0:	2e332e38 	uqsub	v24.8b, v17.8b, v19.8b
    *AUX_ENABLES = 0;
 1e4:	6e692f30 	uqsub	v16.8h, v25.8h, v9.8h
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1e8:	64756c63 	.inst	0x64756c63 ; undefined
    *AUX_ENABLES = 0;
 1ec:	69000065 	stgp	x5, x0, [x3]
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1f0:	7265746e 	.inst	0x7265746e ; undefined
    gpio->GPPUD = 0;
 1f4:	74707572 	.inst	0x74707572 ; undefined
    delay(150);
 1f8:	00632e73 	.inst	0x00632e73 ; undefined
    gpio->GPPUDCLK0 = (1 << 14) | (1 << 15); 
 1fc:	70000001 	adr	x1, 1ff <uart_init+0x3f>
 200:	746e6972 	.inst	0x746e6972 ; undefined
    delay(150);
 204:	00682e66 	.inst	0x00682e66 ; undefined
    gpio->GPPUDCLK0 = (1 << 14) | (1 << 15); 
 208:	73000002 	.inst	0x73000002 ; undefined
    delay(150);
 20c:	72616474 	.inst	0x72616474 ; undefined
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
 210:	00682e67 	.inst	0x00682e67 ; undefined
    mini_uart->AUX_MU_IIR_REG = 0x3 << 1; 
 214:	00000003 	.inst	0x00000003 ; undefined
    gpio->GPPUDCLK0 = 0; 
 218:	09001805 	.inst	0x09001805 ; undefined
    mini_uart->AUX_MU_BAUD_REG = 271;
 21c:	0000d002 	.inst	0x0000d002 ; undefined
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
 220:	00000000 	.inst	0x00000000 ; undefined
    *(reg32*)0x3f215068 = 271;
 224:	05051300 	.inst	0x05051300 ; undefined
 228:	06180513 	.inst	0x06180513 ; undefined
    gpio->GPPUDCLK0 = 0; 
 22c:	21050511 	.inst	0x21050511 ; undefined
    *AUX_ENABLES = 1;
 230:	052d1805 	ext	z5.b, z5.b, z0.b, #110
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
 234:	02002105 	.inst	0x02002105 ; undefined
 238:	21060104 	.inst	0x21060104 ; undefined
 23c:	02000d05 	.inst	0x02000d05 ; undefined
 240:	05010104 	orr	z4.s, z4.s, #0x1ff
    mini_uart->AUX_MU_IIR_REG = 0x3 << 1; 
 244:	04020005 	.inst	0x04020005 ; undefined
    mini_uart->AUX_MU_BAUD_REG = 271;
 248:	0d050101 	.inst	0x0d050101 ; undefined
    *AUX_ENABLES = 1;
 24c:	01040200 	.inst	0x01040200 ; undefined
}
 250:	3f400501 	.inst	0x3f400501 ; undefined
    *(reg32*)0x3f215068 = 271;
 254:	05130505 	mov	z5.b, p3/z, #40
    *AUX_ENABLES = 1;
 258:	05110640 	mov	z0.b, p1/z, #50
}
 25c:	40052105 	.inst	0x40052105 ; undefined
 260:	2105052d 	.inst	0x2105052d ; undefined
 264:	01040200 	.inst	0x01040200 ; undefined
 268:	0d052106 	.inst	0x0d052106 ; undefined
 26c:	01040200 	.inst	0x01040200 ; undefined
    return mini_uart->AUX_MU_LSR_REG & 0x1;
 270:	00050501 	.inst	0x00050501 ; undefined
 274:	01010402 	.inst	0x01010402 ; undefined
 278:	02000d05 	.inst	0x02000d05 ; undefined
 27c:	05010104 	orr	z4.s, z4.s, #0x1ff
}
 280:	05053e49 	.inst	0x05053e49 ; undefined
 284:	06490513 	.inst	0x06490513 ; undefined
 288:	21050511 	.inst	0x21050511 ; undefined
 28c:	052d4905 	uzp1	p5.b, p8.b, p13.b
    uint8 data = mini_uart->AUX_MU_IO_REG & 0xFF;
 290:	02002105 	.inst	0x02002105 ; undefined
 294:	21060104 	.inst	0x21060104 ; undefined
 298:	02000d05 	.inst	0x02000d05 ; undefined
 29c:	05010104 	orr	z4.s, z4.s, #0x1ff
}
 2a0:	04020005 	.inst	0x04020005 ; undefined
 2a4:	0d050101 	.inst	0x0d050101 ; undefined
 2a8:	01040200 	.inst	0x01040200 ; undefined
 2ac:	3e450501 	.inst	0x3e450501 ; undefined
    mini_uart->AUX_MU_IO_REG = data;
 2b0:	05130505 	mov	z5.b, p3/z, #40
void uart_write(uint8 data){
 2b4:	05110645 	mov	z5.b, p1/z, #50
    mini_uart->AUX_MU_IO_REG = data;
 2b8:	45052105 	.inst	0x45052105 ; undefined
 2bc:	2105052d 	.inst	0x2105052d ; undefined
 2c0:	01040200 	.inst	0x01040200 ; undefined
}
 2c4:	0d052106 	.inst	0x0d052106 ; undefined
 2c8:	01040200 	.inst	0x01040200 ; undefined
 2cc:	00050501 	.inst	0x00050501 ; undefined
    uart_write(data);
 2d0:	01010402 	.inst	0x01010402 ; undefined
 2d4:	02000d05 	.inst	0x02000d05 ; undefined
 2d8:	05010104 	orr	z4.s, z4.s, #0x1ff
 2dc:	05053e50 	.inst	0x05053e50 ; undefined
    while (num/d >= base)
 2e0:	06500513 	.inst	0x06500513 ; undefined
 2e4:	21050511 	.inst	0x21050511 ; undefined
    unsigned int d=1;
 2e8:	052d5005 	trn1	p5.b, p0.b, p13.b
 2ec:	02002105 	.inst	0x02002105 ; undefined
        d*=base;
 2f0:	21060104 	.inst	0x21060104 ; undefined
    while (num/d >= base)
 2f4:	02000d05 	.inst	0x02000d05 ; undefined
 2f8:	05010104 	orr	z4.s, z4.s, #0x1ff
 2fc:	04020005 	.inst	0x04020005 ; undefined
    while (d!=0) {
 300:	0d050101 	.inst	0x0d050101 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 304:	01040200 	.inst	0x01040200 ; undefined
 308:	3e4b0501 	.inst	0x3e4b0501 ; undefined
 30c:	05130505 	mov	z5.b, p3/z, #40
 310:	0511064b 	mov	z11.b, p1/z, #50
        if (n || dgt>0 || d==0) {
 314:	4b052105 	sub	w5, w8, w5, lsl #8
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 318:	2105052d 	.inst	0x2105052d ; undefined
        if (n || dgt>0 || d==0) {
 31c:	01040200 	.inst	0x01040200 ; undefined
 320:	0d052106 	.inst	0x0d052106 ; undefined
 324:	01040200 	.inst	0x01040200 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 328:	00050501 	.inst	0x00050501 ; undefined
        if (n || dgt>0 || d==0) {
 32c:	01010402 	.inst	0x01010402 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 330:	02000d05 	.inst	0x02000d05 ; undefined
        if (n || dgt>0 || d==0) {
 334:	05010104 	orr	z4.s, z4.s, #0x1ff
        num%= d;
 338:	05053e41 	.inst	0x05053e41 ; undefined
        d/=base;
 33c:	06410513 	.inst	0x06410513 ; undefined
        if (n || dgt>0 || d==0) {
 340:	21050511 	.inst	0x21050511 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 344:	052d4105 	zip1	p5.b, p8.b, p13.b
 348:	02002105 	.inst	0x02002105 ; undefined
 34c:	21060104 	.inst	0x21060104 ; undefined
 350:	02000d05 	.inst	0x02000d05 ; undefined
 354:	05010104 	orr	z4.s, z4.s, #0x1ff
 358:	04020005 	.inst	0x04020005 ; undefined
 35c:	0d050101 	.inst	0x0d050101 ; undefined
            ++n;
 360:	01040200 	.inst	0x01040200 ; undefined
    while (d!=0) {
 364:	00010201 	.inst	0x00010201 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 368:	00470101 	.inst	0x00470101 ; undefined
    while (d!=0) {
 36c:	00030000 	.inst	0x00030000 ; undefined
    *bf=0;
 370:	00000026 	.inst	0x00000026 ; undefined
    }
 374:	0efb0104 	.inst	0x0efb0104 ; undefined
    while (d!=0) {
 378:	0101000d 	.inst	0x0101000d ; undefined
    *bf=0;
 37c:	00000101 	.inst	0x00000101 ; undefined
    }
 380:	00000100 	.inst	0x00000100 ; undefined
 384:	63727301 	.inst	0x63727301 ; undefined
    unsigned int d=1;
 388:	696e692f 	ldpsw	x15, x26, [x9, #-144]
 38c:	62000074 	.inst	0x62000074 ; undefined
    *(*((char**)p))++ = c;
 390:	2e746f6f 	umin	v15.4h, v27.4h, v20.4h
 394:	00010053 	.inst	0x00010053 ; undefined
 398:	09000000 	.inst	0x09000000 ; undefined
 39c:	00000002 	.inst	0x00000002 ; undefined
    }
 3a0:	00000000 	.inst	0x00000000 ; undefined
 3a4:	21211800 	.inst	0x21211800 ; undefined
 3a8:	21212123 	.inst	0x21212123 ; undefined
 3ac:	21232122 	.inst	0x21232122 ; undefined
    {
 3b0:	01000102 	.inst	0x01000102 ; undefined
    char fc=z? '0' : ' ';
 3b4:	00003d01 	.inst	0x00003d01 ; undefined
    {
 3b8:	23000300 	.inst	0x23000300 ; undefined
 3bc:	04000000 	add	z0.b, p0/m, z0.b, z0.b
    while (*p++ && n > 0)
 3c0:	0d0efb01 	.inst	0x0d0efb01 ; undefined
    {
 3c4:	01010100 	.inst	0x01010100 ; undefined
 3c8:	00000001 	.inst	0x00000001 ; undefined
 3cc:	01000001 	.inst	0x01000001 ; undefined
 3d0:	2f637273 	fcmla	v19.4h, v19.4h, v3.h[1], #270
    char fc=z? '0' : ' ';
 3d4:	00006d6d 	.inst	0x00006d6d ; undefined
 3d8:	2e6d656d 	umax	v13.4h, v11.4h, v13.4h
    while (*p++ && n > 0)
 3dc:	00010053 	.inst	0x00010053 ; undefined
    char fc=z? '0' : ' ';
 3e0:	09000000 	.inst	0x09000000 ; undefined
    {
 3e4:	0001a802 	.inst	0x0001a802 ; undefined
    while (*p++ && n > 0)
 3e8:	00000000 	.inst	0x00000000 ; undefined
 3ec:	21211400 	.inst	0x21211400 ; undefined
 3f0:	00010221 	.inst	0x00010221 ; undefined
 3f4:	01530101 	.inst	0x01530101 ; undefined
 3f8:	00030000 	.inst	0x00030000 ; undefined
 3fc:	00000058 	.inst	0x00000058 ; undefined
 400:	0efb0104 	.inst	0x0efb0104 ; undefined
 404:	0101000d 	.inst	0x0101000d ; undefined
        n--;
 408:	00000101 	.inst	0x00000101 ; undefined
 40c:	00000100 	.inst	0x00000100 ; undefined
    while (*p++ && n > 0)
 410:	63727301 	.inst	0x63727301 ; undefined
    while (n-- > 0)
 414:	7265702f 	.inst	0x7265702f ; undefined
 418:	6e690069 	uaddl2	v9.4s, v3.8h, v9.8h
 41c:	64756c63 	.inst	0x64756c63 ; undefined
        putf(putp,fc);
 420:	75000065 	.inst	0x75000065 ; undefined
 424:	2e747261 	uabdl	v1.4s, v19.4h, v20.4h
 428:	00010063 	.inst	0x00010063 ; undefined
    while (n-- > 0)
 42c:	70797400 	adr	x0, f32af <__bss_end+0xf289f>
 430:	682e7365 	.inst	0x682e7365 ; undefined
 434:	00000200 	.inst	0x00000200 ; undefined
 438:	74726175 	.inst	0x74726175 ; undefined
    while ((ch= *bf++))
 43c:	0200682e 	.inst	0x0200682e ; undefined
 440:	70670000 	adr	x0, ce443 <__bss_end+0xcda33>
 444:	682e6f69 	.inst	0x682e6f69 ; undefined
        putf(putp,ch);
 448:	00000200 	.inst	0x00000200 ; undefined
 44c:	6c697475 	ldnp	d21, d29, [x3, #-368]
    while ((ch= *bf++))
 450:	00682e73 	.inst	0x00682e73 ; undefined
 454:	00000002 	.inst	0x00000002 ; undefined
    }
 458:	09001105 	.inst	0x09001105 ; undefined
 45c:	0001c002 	.inst	0x0001c002 ; undefined
 460:	00000000 	.inst	0x00000000 ; undefined
 464:	05051a00 	.inst	0x05051a00 ; undefined
 468:	06110514 	.inst	0x06110514 ; undefined
    while (n-- > 0)
 46c:	24130510 	cmphi	p0.b, p1/z, z8.b, z19.b
 470:	05220505 	ext	z5.b, z5.b, z8.b, #17
 474:	207a0311 	.inst	0x207a0311 ; undefined
 478:	05300505 	ext	z5.b, z5.b, z8.b, #129
 47c:	05052209 	.inst	0x05052209 ; undefined
    {
 480:	2209051e 	.inst	0x2209051e ; undefined
 484:	051e0505 	mov	z5.b, p14/z, #40
 488:	12052209 	and	w9, w16, #0xf800000f
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
 48c:	0605051e 	.inst	0x0605051e ; undefined
 490:	06130522 	.inst	0x06130522 ; undefined
    {
 494:	06050501 	.inst	0x06050501 ; undefined
 498:	06110521 	.inst	0x06110521 ; undefined
                    ui2a(va_arg(va, unsigned int),10,0,bf);
 49c:	06050501 	.inst	0x06050501 ; undefined
    {
 4a0:	09052121 	.inst	0x09052121 ; undefined
 4a4:	15050106 	b	41408bc <__bss_end+0x413feac>
 4a8:	21050520 	.inst	0x21050520 ; undefined
        *bf++ = '-';
 4ac:	051f1505 	mov	z5.b, p15/z, #-88
 4b0:	21210605 	.inst	0x21210605 ; undefined
    {
 4b4:	15062a05 	b	418acc8 <__bss_end+0x418a2b8>
 4b8:	05221f05 	ext	z5.b, z5.b, z24.b, #23
 4bc:	20051b09 	.inst	0x20051b09 ; undefined
    while ((ch=*(fmt++))) {
 4c0:	1c2a0527 	ldr	s7, 54564 <__bss_end+0x53b54>
 4c4:	05251905 	ext	z5.b, z5.b, z8.b, #46
        if (ch!='%')
 4c8:	2e780315 	uaddl	v21.4s, v24.4h, v24.4h
 4cc:	23060505 	.inst	0x23060505 ; undefined
    while ((ch=*(fmt++))) {
 4d0:	19061205 	stlurb	w5, [x16, #97]
            putf(putp,ch);
 4d4:	79032a05 	strh	w5, [x16, #404]
 4d8:	2e3b0520 	uhadd	v0.8b, v9.8b, v27.8b
    while ((ch=*(fmt++))) {
 4dc:	05201f05 	ext	z5.b, z5.b, z24.b, #7
 4e0:	05220605 	ext	z5.b, z5.b, z16.b, #17
    }
 4e4:	0501061f 	orr	z31.b, z31.b, #0x1
 4e8:	05220605 	ext	z5.b, z5.b, z16.b, #17
 4ec:	05010620 	orr	z0.b, z0.b, #0x3
 4f0:	06210605 	.inst	0x06210605 ; undefined
 4f4:	21010514 	.inst	0x21010514 ; undefined
 4f8:	051d1905 	mov	z5.b, p13/z, #-56
 4fc:	05220605 	ext	z5.b, z5.b, z16.b, #17
            ch=*(fmt++);
 500:	05010612 	orr	z18.b, z18.b, #0x1
            if (ch=='0') {
 504:	1c052101 	ldr	s1, a924 <__bss_end+0x9f14>
 508:	05055a06 	.inst	0x05055a06 ; undefined
            ch=*(fmt++);
 50c:	06150513 	.inst	0x06150513 ; undefined
            char lz=0;
 510:	4b010501 	sub	w1, w8, w1, lsl #1
            if (ch>='0' && ch<='9') {
 514:	4c061205 	.inst	0x4c061205 ; undefined
    int num=0;
 518:	05130505 	mov	z5.b, p3/z, #40
            if (ch>='0' && ch<='9') {
 51c:	0501061b 	orr	z27.b, z27.b, #0x1
 520:	054b0605 	.inst	0x054b0605 ; undefined
 524:	05130601 	mov	z1.b, p3/z, #48
            switch (ch) {
 528:	054c061c 	.inst	0x054c061c ; undefined
 52c:	0e051305 	tbx	v5.8b, {v24.16b}, v5.8b
 530:	1c050106 	ldr	s6, a550 <__bss_end+0x9b40>
 534:	210e051f 	.inst	0x210e051f ; undefined
 538:	052e1e05 	ext	z5.b, z5.b, z16.b, #119
 53c:	1e052101 	.inst	0x1e052101 ; undefined
 540:	05053e06 	.inst	0x05053e06 ; undefined
 544:	20200613 	.inst	0x20200613 ; undefined
                    ui2a(va_arg(va, unsigned int),10,0,bf);
 548:	01000002 	.inst	0x01000002 ; undefined
 54c:	00042401 	.inst	0x00042401 ; undefined
 550:	b9000300 	str	w0, [x24]
 554:	04000000 	add	z0.b, p0/m, z0.b, z0.b
 558:	0d0efb01 	.inst	0x0d0efb01 ; undefined
 55c:	01010100 	.inst	0x01010100 ; undefined
    ui2a(num,10,0,bf);
 560:	00000001 	.inst	0x00000001 ; undefined
 564:	01000001 	.inst	0x01000001 ; undefined
 568:	2f637273 	fcmla	v19.4h, v19.4h, v3.h[1], #270
    else if (ch>='a' && ch<='f')
 56c:	6c697475 	ldnp	d21, d29, [x3, #-368]
 570:	682f0073 	.inst	0x682f0073 ; undefined
    else if (ch>='A' && ch<='F')
 574:	2f656d6f 	.inst	0x2f656d6f ; undefined
 578:	69686261 	ldpsw	x1, x24, [x19, #-192]
        if (digit>base) break;
 57c:	6b656873 	.inst	0x6b656873 ; undefined
 580:	776f442f 	.inst	0x776f442f ; undefined
        ch=*p++;
 584:	616f6c6e 	.inst	0x616f6c6e ; undefined
        num=num*base+digit;
 588:	672f7364 	.inst	0x672f7364 ; undefined
        ch=*p++;
 58c:	612d6363 	.inst	0x612d6363 ; undefined
    else if (ch>='a' && ch<='f')
 590:	382d6d72 	.inst	0x382d6d72 ; undefined
    else if (ch>='A' && ch<='F')
 594:	322d332e 	orr	w14, w25, #0xfff80000
    if (ch>='0' && ch<='9')
 598:	2e393130 	usubw	v16.8h, v9.8h, v25.8b
        return ch-'A'+10;
 59c:	782d3330 	ldseth	w13, w16, [x25]
    else if (ch>='a' && ch<='f')
 5a0:	365f3638 	tbz	w24, #11, ffffffffffffec64 <__bss_end+0xffffffffffffe254>
    else if (ch>='A' && ch<='F')
 5a4:	61612d34 	.inst	0x61612d34 ; undefined
    if (ch>='0' && ch<='9')
 5a8:	36686372 	tbz	w18, #13, 1214 <__bss_end+0x804>
 5ac:	6c652d34 	ldnp	d20, d11, [x9, #-432]
        return ch-'0';
 5b0:	696c2f66 	ldpsw	x6, x11, [x27, #-160]
        if (digit>base) break;
 5b4:	63672f62 	.inst	0x63672f62 ; undefined
            switch (ch) {
 5b8:	61612f63 	.inst	0x61612f63 ; undefined
 5bc:	36686372 	tbz	w18, #13, 1228 <__bss_end+0x818>
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
 5c0:	6c652d34 	ldnp	d20, d11, [x9, #-432]
 5c4:	2e382f66 	uqsub	v6.8b, v27.8b, v24.8b
 5c8:	2f302e33 	.inst	0x2f302e33 ; undefined
 5cc:	6c636e69 	ldnp	d9, d27, [x19, #-464]
 5d0:	00656475 	.inst	0x00656475 ; undefined
 5d4:	6c636e69 	ldnp	d9, d27, [x19, #-464]
 5d8:	00656475 	.inst	0x00656475 ; undefined
 5dc:	69727000 	ldpsw	x0, x28, [x0, #-112]
 5e0:	2e66746e 	uabd	v14.4h, v3.4h, v6.4h
 5e4:	00010063 	.inst	0x00010063 ; undefined
                    putchw(putp,putf,w,lz,bf);
 5e8:	64747300 	.inst	0x64747300 ; undefined
 5ec:	2e677261 	uabdl	v1.4s, v19.4h, v7.4h
 5f0:	00020068 	.inst	0x00020068 ; undefined
 5f4:	75623c00 	.inst	0x75623c00 ; undefined
 5f8:	2d746c69 	ldp	s9, s27, [x3, #-96]
 5fc:	003e6e69 	.inst	0x003e6e69 ; NYI
                    break;
 600:	70000000 	adr	x0, 603 <tfp_format+0x183>
            switch (ch) {
 604:	746e6972 	.inst	0x746e6972 ; undefined
 608:	00682e66 	.inst	0x00682e66 ; undefined
                    i2a(va_arg(va, int),bf);
 60c:	00000003 	.inst	0x00000003 ; undefined
 610:	09000505 	.inst	0x09000505 ; undefined
 614:	0002e002 	.inst	0x0002e002 ; undefined
 618:	00000000 	.inst	0x00000000 ; undefined
 61c:	013c0300 	.inst	0x013c0300 ; undefined
    if (num<0) {
 620:	05131313 	mov	z19.b, p3/z, #-104
 624:	0501060b 	orr	z11.b, z11.b, #0x1
        *bf++ = '-';
 628:	09052d12 	.inst	0x09052d12 ; undefined
        num=-num;
 62c:	0a053006 	and	w6, w0, w5, lsl #12
        *bf++ = '-';
 630:	0f050106 	.inst	0x0f050106 ; undefined
 634:	200b051f 	.inst	0x200b051f ; undefined
 638:	25100530 	cmpgt	p0.b, p1/z, z9.b, #-16
            switch (ch) {
 63c:	00201805 	.inst	0x00201805 ; NYI
 640:	3b010402 	.inst	0x3b010402 ; undefined
 644:	01040200 	.inst	0x01040200 ; undefined
 648:	04020021 	.inst	0x04020021 ; undefined
 64c:	02001f01 	.inst	0x02001f01 ; undefined
    }
 650:	052e0104 	ext	z4.b, z4.b, z8.b, #112
 654:	09052110 	.inst	0x09052110 ; undefined
 658:	05131c06 	mov	z6.b, p3/z, #-32
 65c:	0f05150d 	orr	v13.2s, #0xa8
 660:	10051106 	adr	x6, a880 <__bss_end+0x9e70>
 664:	1f0c0521 	fmadd	s1, s9, s12, s1
 668:	0609051e 	.inst	0x0609051e ; undefined
        return ch-'a'+10;
 66c:	060a0521 	.inst	0x060a0521 ; undefined
 670:	06090501 	.inst	0x06090501 ; undefined
                ch=*(fmt++);
 674:	060c0521 	.inst	0x060c0521 ; undefined
                lz=1;
 678:	21180501 	.inst	0x21180501 ; undefined
                ch=*(fmt++);
 67c:	01040200 	.inst	0x01040200 ; undefined
 680:	0402003c 	.inst	0x0402003c ; undefined
                    putchw(putp,putf,w,0,va_arg(va, char*));
 684:	13052e08 	sbfx	w8, w16, #5, #7
 688:	08040200 	stxrb	w4, w0, [x16]
 68c:	000d0520 	.inst	0x000d0520 ; undefined
 690:	06080402 	.inst	0x06080402 ; undefined
 694:	04020021 	.inst	0x04020021 ; undefined
 698:	05200608 	ext	z8.b, z8.b, z16.b, #1
 69c:	0402000b 	.inst	0x0402000b ; undefined
 6a0:	017a0308 	.inst	0x017a0308 ; undefined
 6a4:	02001005 	.inst	0x02001005 ; undefined
 6a8:	05250804 	ext	z4.b, z4.b, z0.b, #42
                    break;
 6ac:	0402000b 	.inst	0x0402000b ; undefined
                    putf(putp,(char)(va_arg(va, int)));
 6b0:	05051b08 	.inst	0x05051b08 ; undefined
 6b4:	20090306 	.inst	0x20090306 ; undefined
 6b8:	01060805 	.inst	0x01060805 ; undefined
 6bc:	05210505 	ext	z5.b, z5.b, z8.b, #9
 6c0:	2076030b 	.inst	0x2076030b ; undefined
 6c4:	03060505 	.inst	0x03060505 ; undefined
 6c8:	08052009 	stxrb	w5, w9, [x0]
                    break;
 6cc:	05050106 	.inst	0x05050106 ; undefined
                    putf(putp,ch);
 6d0:	12052021 	and	w1, w1, #0xf800000f
 6d4:	05207303 	trn1	z3.b, z24.b, z0.b
 6d8:	9d030605 	.inst	0x9d030605 ; undefined
                    ui2a(va_arg(va, unsigned int),10,0,bf);
 6dc:	05132e01 	.inst	0x05132e01 ; undefined
 6e0:	05010607 	orr	z7.b, z7.b, #0x1
 6e4:	17052014 	b	fffffffffc148734 <__bss_end+0xfffffffffc147d24>
 6e8:	2105052e 	.inst	0x2105052e ; undefined
 6ec:	7f940306 	.inst	0x7f940306 ; undefined
 6f0:	1106134a 	add	w10, w26, #0x184
 6f4:	05210a05 	ext	z5.b, z5.b, z16.b, #10
 6f8:	0e051f05 	.inst	0x0e051f05 ; undefined
                    i2a(va_arg(va, int),bf);
 6fc:	1c050532 	ldr	s18, a7a0 <__bss_end+0x9d90>
 700:	204b0a05 	.inst	0x204b0a05 ; undefined
 704:	05230c05 	ext	z5.b, z5.b, z0.b, #27
 708:	05051d0a 	.inst	0x05051d0a ; undefined
 70c:	06132106 	.inst	0x06132106 ; undefined
 710:	0524060f 	ext	z15.b, z15.b, z16.b, #33
 714:	05010611 	orr	z17.b, z17.b, #0x1
 718:	1105200b 	add	w11, w0, #0x148
                    putf(putp,(char)(va_arg(va, int)));
 71c:	02003c20 	.inst	0x02003c20 ; undefined
 720:	05200104 	ext	z4.b, z4.b, z8.b, #0
 724:	05210609 	ext	z9.b, z9.b, z16.b, #9
 728:	0511060b 	mov	z11.b, p1/z, #48
 72c:	0520210a 	.inst	0x0520210a ; undefined
 730:	0d051f0b 	.inst	0x0d051f0b ; undefined
 734:	200b0522 	.inst	0x200b0522 ; undefined
 738:	2f060905 	.inst	0x2f060905 ; undefined
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
 73c:	3b060d05 	.inst	0x3b060d05 ; undefined
 740:	05200b05 	ext	z5.b, z5.b, z24.b, #2
 744:	0b05200d 	add	w13, w0, w5, lsl #8
 748:	220f0520 	.inst	0x220f0520 ; undefined
 74c:	05200b05 	ext	z5.b, z5.b, z24.b, #2
 750:	052f0609 	ext	z9.b, z9.b, z16.b, #121
 754:	052d060f 	ext	z15.b, z15.b, z16.b, #105
 758:	0520200b 	.inst	0x0520200b ; undefined
                    putchw(putp,putf,w,0,va_arg(va, char*));
 75c:	202e1405 	.inst	0x202e1405 ; undefined
 760:	052a0d05 	ext	z5.b, z5.b, z8.b, #83
 764:	0505200b 	.inst	0x0505200b ; undefined
 768:	01065106 	.inst	0x01065106 ; undefined
 76c:	3a031505 	.inst	0x3a031505 ; undefined
 770:	0305053c 	.inst	0x0305053c ; undefined
 774:	15052e46 	b	414c08c <__bss_end+0x414b67c>
 778:	052e2603 	.inst	0x052e2603 ; undefined
                    ui2a(va_arg(va, unsigned int),10,0,bf);
 77c:	205a0305 	.inst	0x205a0305 ; undefined
 780:	53030c05 	ubfx	w5, w0, #3, #1
 784:	05052e3c 	.inst	0x05052e3c ; undefined
                    i2a(va_arg(va, int),bf);
 788:	012e0306 	.inst	0x012e0306 ; undefined
 78c:	03061514 	.inst	0x03061514 ; undefined
 790:	0520017a 	ext	z26.b, z26.b, z11.b, #0
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
 794:	0b05340f 	add	w15, w0, w5, lsl #13
 798:	06090520 	.inst	0x06090520 ; undefined
 79c:	060c0521 	.inst	0x060c0521 ; undefined
                    putf(putp,(char)(va_arg(va, int)));
 7a0:	2d150501 	stp	s1, s1, [x8, #168]
 7a4:	22060d05 	.inst	0x22060d05 ; undefined
 7a8:	2c060f05 	stnp	s5, s3, [x24, #48]
                    putchw(putp,putf,w,0,va_arg(va, char*));
 7ac:	05200b05 	ext	z5.b, z5.b, z24.b, #2
 7b0:	00c50305 	.inst	0x00c50305 ; undefined
 7b4:	20202020 	.inst	0x20202020 ; undefined
 7b8:	060d0520 	.inst	0x060d0520 ; undefined
 7bc:	3c7fbf03 	.inst	0x3c7fbf03 ; undefined
    stdout_putf=putf;
 7c0:	0f051316 	fmla	v22.4h, v24.4h, v5.h[0]
 7c4:	0d050106 	.inst	0x0d050106 ; undefined
 7c8:	10052106 	adr	x6, abe8 <__bss_end+0xa1d8>
    stdout_putp=putp;
 7cc:	15050106 	b	4140be4 <__bss_end+0x41401d4>
    }
 7d0:	1b12052d 	madd	w13, w9, w18, w1
 7d4:	03060d05 	.inst	0x03060d05 ; undefined
 7d8:	1905200a 	stlurb	w10, [x0, #82]
 7dc:	09050106 	.inst	0x09050106 ; undefined
    {
 7e0:	05205203 	.inst	0x05205203 ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
 7e4:	202e0310 	.inst	0x202e0310 ; undefined
 7e8:	03060d05 	.inst	0x03060d05 ; undefined
    {
 7ec:	15053c09 	b	414f810 <__bss_end+0x414ee00>
 7f0:	06820903 	.inst	0x06820903 ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
 7f4:	05052e2e 	.inst	0x05052e2e ; undefined
    va_start(va,fmt);
 7f8:	7faf0306 	.inst	0x7faf0306 ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
 7fc:	053c062e 	ext	z14.b, z14.b, z17.b, #225
    va_start(va,fmt);
 800:	2e30190d 	.inst	0x2e30190d ; undefined
 804:	03060905 	.inst	0x03060905 ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
 808:	0c05010b 	.inst	0x0c05010b ; undefined
    va_start(va,fmt);
 80c:	09050106 	.inst	0x09050106 ; undefined
 810:	0b052f06 	add	w6, w24, w5, lsl #11
 814:	0c051306 	.inst	0x0c051306 ; undefined
 818:	0609051f 	.inst	0x0609051f ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
 81c:	05010621 	orr	z1.b, z1.b, #0x3
 820:	6d03060c 	stp	d12, d1, [x16, #48]
 824:	14050520 	b	141ca4 <__bss_end+0x141294>
 828:	14140a05 	b	50303c <__bss_end+0x50262c>
    {
 82c:	05130905 	mov	z5.b, p3/z, #72
    tfp_format(stdout_putp,stdout_putf,fmt,va);
 830:	220f0616 	.inst	0x220f0616 ; undefined
    {
 834:	051c0805 	mov	z5.b, p12/z, #64
 838:	0d052516 	.inst	0x0d052516 ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
 83c:	0805221d 	stxrb	w5, w29, [x16]
    }
 840:	0609051c 	.inst	0x0609051c ; undefined
 844:	0612052f 	.inst	0x0612052f ; undefined
 848:	09052001 	.inst	0x09052001 ; undefined
 84c:	010e0306 	.inst	0x010e0306 ; undefined
    {
 850:	0d052006 	.inst	0x0d052006 ; undefined
    va_start(va,fmt);
 854:	05013403 	orr	z3.h, z3.h, #0x400
    {
 858:	1d030615 	.inst	0x1d030615 ; undefined
    va_start(va,fmt);
 85c:	2e2e062e 	uhadd	v14.8b, v17.8b, v14.8b
 860:	67210658 	.inst	0x67210658 ; undefined
 864:	03060d05 	.inst	0x03060d05 ; undefined
 868:	15052061 	b	41489ec <__bss_end+0x4147fdc>
    tfp_format(&s,putcp,fmt,va);
 86c:	2e130306 	ext	v6.8b, v24.8b, v19.8b, #0
    va_start(va,fmt);
 870:	052e2e06 	.inst	0x052e2e06 ; undefined
    tfp_format(&s,putcp,fmt,va);
 874:	9f03060d 	.inst	0x9f03060d ; undefined
    va_start(va,fmt);
 878:	0505207f 	.inst	0x0505207f ; undefined
    tfp_format(&s,putcp,fmt,va);
 87c:	06080514 	.inst	0x06080514 ; undefined
 880:	06090501 	.inst	0x06090501 ; undefined
 884:	060f052f 	.inst	0x060f052f ; undefined
 888:	1f0c0513 	fmadd	s19, s8, s12, s1
    {
 88c:	21060905 	.inst	0x21060905 ; undefined
    tfp_format(&s,putcp,fmt,va);
 890:	01060c05 	.inst	0x01060c05 ; undefined
 894:	2e200f05 	uqadd	v5.8b, v24.8b, v0.8b
 898:	ca030d05 	eor	x5, x8, x3, lsl #3
    {
 89c:	05050100 	.inst	0x05050100 ; undefined
 8a0:	20582e03 	.inst	0x20582e03 ; undefined
    tfp_format(&s,putcp,fmt,va);
 8a4:	20202020 	.inst	0x20202020 ; undefined
    *(*((char**)p))++ = c;
 8a8:	03060905 	.inst	0x03060905 ; undefined
 8ac:	052e7f92 	.inst	0x052e7f92 ; undefined
    }
 8b0:	2e010616 	.inst	0x2e010616 ; undefined
 8b4:	03061105 	.inst	0x03061105 ; undefined
 8b8:	13050134 	sbfiz	w20, w9, #27, #1
 8bc:	11050106 	add	w6, w8, #0x140
    asm volatile("loop : subs %0, %0, #1\n\t"
 8c0:	13052106 	sbfx	w6, w8, #5, #4
 8c4:	19050106 	stlurb	w6, [x8, #80]
}
 8c8:	1505201f 	b	4148944 <__bss_end+0x4147f34>
 8cc:	20300306 	.inst	0x20300306 ; undefined
    asm volatile("mrs %0, mpidr_el1\n\t"
 8d0:	062e2e06 	.inst	0x062e2e06 ; undefined
 8d4:	26051c67 	.inst	0x26051c67 ; undefined
}
 8d8:	052e0106 	ext	z6.b, z6.b, z8.b, #112
 8dc:	3d062e15 	str	b21, [x16, #395]
    asm volatile("mrs %0, CurrentEL\n\t"
 8e0:	032e0625 	.inst	0x032e0625 ; undefined
 8e4:	3c202062 	.inst	0x3c202062 ; undefined
}
 8e8:	200a033c 	.inst	0x200a033c ; undefined
 8ec:	053c3c20 	.inst	0x053c3c20 ; undefined
 8f0:	200e0326 	.inst	0x200e0326 ; undefined
 8f4:	053c3c20 	.inst	0x053c3c20 ; undefined
 8f8:	3c201c15 	.inst	0x3c201c15 ; undefined
 8fc:	3c20273c 	.inst	0x3c20273c ; undefined
 900:	2065033c 	.inst	0x2065033c ; undefined
 904:	033c0a03 	.inst	0x033c0a03 ; undefined
 908:	26053c0a 	.inst	0x26053c0a ; undefined
 90c:	3f150540 	.inst	0x3f150540 ; undefined
 910:	03060505 	.inst	0x03060505 ; undefined
 914:	0513580e 	mov	z14.b, p3/m, #-64
 918:	05010610 	orr	z16.b, z16.b, #0x1
 91c:	053d0605 	ext	z5.b, z5.b, z16.b, #233
 920:	05010610 	orr	z16.b, z16.b, #0x1
 924:	4d062105 	.inst	0x4d062105 ; undefined
 928:	10061313 	adr	x19, cb88 <__bss_end+0xc178>
 92c:	23202b23 	.inst	0x23202b23 ; undefined
 930:	2f1f211f 	.inst	0x2f1f211f ; undefined
 934:	064b061f 	.inst	0x064b061f ; undefined
 938:	311d2347 	adds	w7, w26, #0x748
 93c:	13062106 	sbfx	w6, w8, #6, #3
 940:	4a0a0306 	eor	w6, w24, w10
 944:	10061313 	adr	x19, cba4 <__bss_end+0xc194>
 948:	4b221e22 	.inst	0x4b221e22 ; undefined
 94c:	061f211f 	.inst	0x061f211f ; undefined
 950:	23470621 	.inst	0x23470621 ; undefined
 954:	21063139 	.inst	0x21063139 ; undefined
 958:	74030d05 	.inst	0x74030d05 ; undefined
 95c:	14050501 	b	141d60 <__bss_end+0x141350>
 960:	01060705 	.inst	0x01060705 ; undefined
 964:	20201705 	.inst	0x20201705 ; undefined
 968:	03060505 	.inst	0x03060505 ; undefined
 96c:	1306010b 	sbfiz	w11, w8, #26, #1
 970:	01000202 	.inst	0x01000202 ; undefined
 974:	00008001 	.inst	0x00008001 ; undefined
 978:	46000300 	.inst	0x46000300 ; undefined
 97c:	04000000 	add	z0.b, p0/m, z0.b, z0.b
 980:	0d0efb01 	.inst	0x0d0efb01 ; undefined
 984:	01010100 	.inst	0x01010100 ; undefined
 988:	00000001 	.inst	0x00000001 ; undefined
 98c:	01000001 	.inst	0x01000001 ; undefined
 990:	2f637273 	fcmla	v19.4h, v19.4h, v3.h[1], #270
 994:	6c697475 	ldnp	d21, d29, [x3, #-368]
 998:	6e690073 	uaddl2	v19.4s, v3.8h, v9.8h
 99c:	64756c63 	.inst	0x64756c63 ; undefined
 9a0:	75000065 	.inst	0x75000065 ; undefined
 9a4:	736c6974 	.inst	0x736c6974 ; undefined
 9a8:	0100632e 	.inst	0x0100632e ; undefined
 9ac:	79740000 	ldrh	w0, [x0, #6656]
 9b0:	2e736570 	umax	v16.4h, v11.4h, v19.4h
 9b4:	00020068 	.inst	0x00020068 ; undefined
 9b8:	69747500 	ldpsw	x0, x29, [x8, #-96]
 9bc:	682e736c 	.inst	0x682e736c ; undefined
 9c0:	00000200 	.inst	0x00000200 ; undefined
 9c4:	001a0500 	.inst	0x001a0500 ; undefined
 9c8:	08c00209 	ldlarb	w9, [x16]
 9cc:	00000000 	.inst	0x00000000 ; undefined
 9d0:	05140000 	mov	z0.b, p4/z, #0
 9d4:	01051305 	.inst	0x01051305 ; undefined
 9d8:	12053306 	and	w6, w24, #0xf80000ff
 9dc:	05053006 	.inst	0x05053006 ; undefined
 9e0:	05311313 	ext	z19.b, z19.b, z24.b, #140
 9e4:	05130601 	mov	z1.b, p3/z, #48
 9e8:	0530060d 	ext	z13.b, z13.b, z16.b, #129
 9ec:	31131305 	adds	w5, w24, #0x4c4
 9f0:	13060105 	sbfiz	w5, w8, #26, #1
 9f4:	01000102 	.inst	0x01000102 ; undefined
 9f8:	Address 0x00000000000009f8 is out of bounds.


Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
    mrs x0, mpidr_el1
       0:	504c495f 	adr	xzr, 9892a <__bss_end+0x97f1a>
    and x0, x0, #0xFF
       4:	5f003233 	.inst	0x5f003233 ; undefined
    cbnz x0, halt_proc
       8:	4749535f 	.inst	0x4749535f ; undefined
    adr x0, __bss_start
       c:	4f54415f 	.inst	0x4f54415f ; undefined
    adr x1, __bss_end
      10:	5f43494d 	.inst	0x5f43494d ; undefined
    sub x1, x1, x0
      14:	5f58414d 	.inst	0x5f58414d ; undefined
    bl   memzero
      18:	7830205f 	steorh	w16, [x2]
    bl el1_setup
      1c:	66666637 	.inst	0x66666637 ; undefined
    b   kernel_main
      20:	66666666 	.inst	0x66666666 ; undefined
    wfe
      24:	465f5f00 	.inst	0x465f5f00 ; undefined
    b halt_proc
      28:	3436544c 	cbz	w12, 6cab0 <__bss_end+0x6c0a0>
      2c:	5341485f 	.inst	0x5341485f ; undefined
{
      30:	4955515f 	.inst	0x4955515f ; undefined
      34:	4e5f5445 	.inst	0x4e5f5445 ; undefined
      38:	5f5f4e41 	.inst	0x5f5f4e41 ; undefined
    uart_init();
      3c:	5f003120 	.inst	0x5f003120 ; undefined
    init_printf(0, putc);
      40:	4345445f 	.inst	0x4345445f ; undefined
      44:	535f3436 	.inst	0x535f3436 ; undefined
      48:	4f4e4255 	.inst	0x4f4e4255 ; undefined
      4c:	4c414d52 	.inst	0x4c414d52 ; undefined
    printf("Core %d up at Exception level %d\n", get_core_id(), get_el());
      50:	4e494d5f 	.inst	0x4e494d5f ; undefined
      54:	30205f5f 	adr	xzr, 40c3d <__bss_end+0x4022d>
      58:	3030302e 	adr	x14, 6065d <__bss_end+0x5fc4d>
      5c:	30303030 	adr	x16, 60661 <__bss_end+0x5fc51>
      60:	30303030 	adr	x16, 60665 <__bss_end+0x5fc55>
      64:	31303030 	adds	w16, w1, #0xc0c
      68:	38332d45 	.inst	0x38332d45 ; undefined
      6c:	00444433 	.inst	0x00444433 ; undefined
    }
      70:	4c465f5f 	.inst	0x4c465f5f ; undefined
      74:	5f363154 	.inst	0x5f363154 ; undefined
    ldr x0, =(SCTLR_EL1_EE_LITTLE | SCTLR_EL1_E0E_LITTLE |\
      78:	5f4e494d 	.inst	0x5f4e494d ; undefined
    msr SCTLR_EL1, x0
      7c:	455f3031 	.inst	0x455f3031 ; undefined
    ldr x0, =(SCR_EL3_RW_AARCH64 | SCR_EL3_NS)
      80:	5f5f5058 	.inst	0x5f5f5058 ; undefined
    msr SCR_EL3, x0
      84:	342d2820 	cbz	w0, 5a588 <__bss_end+0x59b78>
    ldr x0, =(HCR_EL2_RW_AARCH64)
      88:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    msr HCR_EL2, x0 
      8c:	33544c46 	.inst	0x33544c46 ; undefined
    msr ELR_EL3, lr
      90:	41485f32 	.inst	0x41485f32 ; undefined
    ldr x0, =(SPSR_MODE_EL1h | SPSR_MASK_EXCEPTIONS)
      94:	4e495f53 	.inst	0x4e495f53 ; undefined
    msr SPSR_EL3, x0
      98:	494e4946 	.inst	0x494e4946 ; undefined
    ldr x0, =STACK_BASE
      9c:	5f5f5954 	.inst	0x5f5f5954 ; undefined
    msr SP_EL1, x0
      a0:	5f003120 	.inst	0x5f003120 ; undefined
    eret
      a4:	544c465f 	.inst	0x544c465f ; undefined
      a8:	4d5f3436 	.inst	0x4d5f3436 ; undefined
      ac:	455f5841 	.inst	0x455f5841 ; undefined
      b0:	5f5f5058 	.inst	0x5f5f5058 ; undefined
      b4:	32303120 	orr	w0, w9, #0x1fff0000
      b8:	5f5f0034 	.inst	0x5f5f0034 ; undefined
      bc:	36544c46 	tbz	w6, #10, ffffffffffff8a44 <__bss_end+0xffffffffffff8034>
      c0:	445f5834 	.inst	0x445f5834 ; undefined
      c4:	524f4e45 	.inst	0x524f4e45 ; undefined
      c8:	494d5f4d 	.inst	0x494d5f4d ; undefined
      cc:	205f5f4e 	.inst	0x205f5f4e ; undefined
void irq_handler(void) {
      d0:	37342e36 	tbnz	w22, #6, ffffffffffff8694 <__bss_end+0xffffffffffff7c84>
    printf("IRQ HANDLER\n");
      d4:	35373135 	cbnz	w21, 6e6f8 <__bss_end+0x6dce8>
      d8:	34393131 	cbz	w17, 726fc <__bss_end+0x71cec>
void irq_handler(void) {
      dc:	32303833 	orr	w19, w1, #0x7fff0000
    printf("IRQ HANDLER\n");
      e0:	30313135 	adr	x21, 62705 <__bss_end+0x61cf5>
    while(1);
      e4:	34343239 	cbz	w25, 68728 <__bss_end+0x67d18>
      e8:	35393833 	cbnz	w19, 727ec <__bss_end+0x71ddc>
      ec:	37323238 	tbnz	w24, #6, 4730 <__bss_end+0x3d20>
void __attribute__ ((interrupt ("ABORT"))) reset_handler(void) {
      f0:	35363436 	cbnz	w22, 6c774 <__bss_end+0x6bd64>
    printf("RESET HANDLER\n");
      f4:	342d6535 	cbz	w21, 5ad98 <__bss_end+0x5a388>
      f8:	46363639 	.inst	0x46363639 ; undefined
void __attribute__ ((interrupt ("ABORT"))) reset_handler(void) {
      fc:	00783436 	.inst	0x00783436 ; undefined
    printf("RESET HANDLER\n");
     100:	4c465f5f 	.inst	0x4c465f5f ; undefined
    while(1);
     104:	58323354 	ldr	x20, 6476c <__bss_end+0x63d5c>
     108:	58414d5f 	ldr	xzr, 82ab0 <__bss_end+0x820a0>
     10c:	5058455f 	adr	xzr, b09b6 <__bss_end+0xaffa6>
void __attribute__ ((interrupt ("ABORT"))) prefetch_abort_handler(void) {
     110:	31205f5f 	cmn	w26, #0x817
    printf("PREFETCH ABORT HANDLER\n");
     114:	00343230 	.inst	0x00343230 ; NYI
     118:	5f746567 	.inst	0x5f746567 ; undefined
void __attribute__ ((interrupt ("ABORT"))) prefetch_abort_handler(void) {
     11c:	5f006c65 	.inst	0x5f006c65 ; undefined
    printf("PREFETCH ABORT HANDLER\n");
     120:	4343475f 	.inst	0x4343475f ; undefined
    while(1);
     124:	4f54415f 	.inst	0x4f54415f ; undefined
     128:	5f43494d 	.inst	0x5f43494d ; undefined
     12c:	54534554 	.inst	0x54534554 ; undefined
void __attribute__ ((interrupt ("ABORT"))) data_abort_handler(void) {
     130:	444e415f 	.inst	0x444e415f ; undefined
    printf("DATA ABORT HANDLER\n");
     134:	5445535f 	.inst	0x5445535f ; undefined
     138:	5552545f 	.inst	0x5552545f ; undefined
void __attribute__ ((interrupt ("ABORT"))) data_abort_handler(void) {
     13c:	4c415645 	.inst	0x4c415645 ; undefined
    printf("DATA ABORT HANDLER\n");
     140:	5f003120 	.inst	0x5f003120 ; undefined
    while(1);
     144:	544c465f 	.inst	0x544c465f ; undefined
     148:	5f583436 	srsra	d22, d1, #40
     14c:	49535045 	.inst	0x49535045 ; undefined
void __attribute__ ((interrupt ("UNDEF"))) undefined_instruction_handler(void) {
     150:	5f4e4f4c 	.inst	0x5f4e4f4c ; undefined
    printf("UNDEFINED INSTRUCTION HANDLER\n");
     154:	2e31205f 	usubl	v31.8h, v2.8b, v17.8b
     158:	39353239 	strb	w25, [x17, #3404]
void __attribute__ ((interrupt ("UNDEF"))) undefined_instruction_handler(void) {
     15c:	34393932 	cbz	w18, 72880 <__bss_end+0x71e70>
    printf("UNDEFINED INSTRUCTION HANDLER\n");
     160:	37383334 	tbnz	w20, #7, 7c4 <init_printf+0x4>
    while(1);
     164:	38353332 	ldsetb	w21, w18, [x25]
     168:	35303335 	cbnz	w21, 607cc <__bss_end+0x5fdbc>
     16c:	37373935 	tbnz	w21, #6, ffffffffffffe890 <__bss_end+0xffffffffffffde80>
void __attribute__ ((interrupt ("SWI"))) software_interrupt_handler(void) {
     170:	35323439 	cbnz	w25, 647f4 <__bss_end+0x63de4>
    printf("SWI HANDLER\n");
     174:	32393438 	orr	w24, w1, #0x1fff80
     178:	65323337 	.inst	0x65323337 ; undefined
void __attribute__ ((interrupt ("SWI"))) software_interrupt_handler(void) {
     17c:	4634332d 	.inst	0x4634332d ; undefined
    printf("SWI HANDLER\n");
     180:	00783436 	.inst	0x00783436 ; undefined
    while(1);
     184:	45445f5f 	.inst	0x45445f5f ; undefined
     188:	5f343643 	.inst	0x5f343643 ; undefined
     18c:	49535045 	.inst	0x49535045 ; undefined
void __attribute__ ((interrupt ("FIQ"))) fast_irq_handler(void) {
     190:	5f4e4f4c 	.inst	0x5f4e4f4c ; undefined
    printf("FIQ HANDLER\n");
     194:	4531205f 	.inst	0x4531205f ; undefined
     198:	4435312d 	.inst	0x4435312d ; undefined
void __attribute__ ((interrupt ("FIQ"))) fast_irq_handler(void) {
     19c:	5f5f0044 	.inst	0x5f5f0044 ; undefined
    printf("FIQ HANDLER\n");
     1a0:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    while(1);
     1a4:	4f4e4544 	.inst	0x4f4e4544 ; undefined
    str  xzr, [x0], #8
     1a8:	4d5f4d52 	.inst	0x4d5f4d52 ; undefined
    subs x1, x1, #8
     1ac:	5f5f4e49 	.inst	0x5f5f4e49 ; undefined
    b.gt memzero
     1b0:	64282820 	.inst	0x64282820 ; undefined
    ret
     1b4:	6c62756f 	ldnp	d15, d29, [x11, #-480]
     1b8:	2e342965 	.inst	0x2e342965 ; undefined
     1bc:	36303439 	tbz	w25, #6, 840 <tfp_printf+0x60>
void uart_init(){
     1c0:	35343635 	cbnz	w21, 68884 <__bss_end+0x67e74>
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
     1c4:	32313438 	orr	w24, w1, #0x1fff8000
    delay(150);
     1c8:	34353634 	cbz	w20, 6a88c <__bss_end+0x69e7c>
void uart_init(){
     1cc:	36373134 	tbz	w20, #6, ffffffffffffe7f0 <__bss_end+0xffffffffffffdde0>
     1d0:	37383635 	tbnz	w21, #7, 894 <tfp_sprintf+0x44>
    *AUX_ENABLES = 0;
     1d4:	36383239 	tbz	w25, #7, 818 <tfp_printf+0x38>
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
     1d8:	31323238 	adds	w24, w17, #0xc8c
    *AUX_ENABLES = 0;
     1dc:	65323733 	.inst	0x65323733 ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
     1e0:	3432332d 	cbz	w13, 64844 <__bss_end+0x63e34>
    *AUX_ENABLES = 0;
     1e4:	5f00294c 	.inst	0x5f00294c ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
     1e8:	544e495f 	.inst	0x544e495f ; undefined
    *AUX_ENABLES = 0;
     1ec:	5f525450 	shl	d16, d2, #18
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
     1f0:	5f58414d 	.inst	0x5f58414d ; undefined
    gpio->GPPUD = 0;
     1f4:	7830205f 	steorh	w16, [x2]
    delay(150);
     1f8:	66666637 	.inst	0x66666637 ; undefined
    gpio->GPPUDCLK0 = (1 << 14) | (1 << 15); 
     1fc:	66666666 	.inst	0x66666666 ; undefined
     200:	66666666 	.inst	0x66666666 ; undefined
    delay(150);
     204:	66666666 	.inst	0x66666666 ; undefined
    gpio->GPPUDCLK0 = (1 << 14) | (1 << 15); 
     208:	5f5f004c 	.inst	0x5f5f004c ; undefined
    delay(150);
     20c:	33544c46 	.inst	0x33544c46 ; undefined
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
     210:	414d5f32 	.inst	0x414d5f32 ; undefined
    mini_uart->AUX_MU_IIR_REG = 0x3 << 1; 
     214:	445f544e 	.inst	0x445f544e ; undefined
    gpio->GPPUDCLK0 = 0; 
     218:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    mini_uart->AUX_MU_BAUD_REG = 271;
     21c:	00343220 	.inst	0x00343220 ; NYI
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
     220:	43475f5f 	.inst	0x43475f5f ; undefined
    *(reg32*)0x3f215068 = 271;
     224:	41485f43 	.inst	0x41485f43 ; undefined
     228:	535f4556 	.inst	0x535f4556 ; undefined
    gpio->GPPUDCLK0 = 0; 
     22c:	5f434e59 	.inst	0x5f434e59 ; undefined
    *AUX_ENABLES = 1;
     230:	504d4f43 	adr	x3, 9ac1a <__bss_end+0x9a20a>
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
     234:	5f455241 	.inst	0x5f455241 ; undefined
     238:	5f444e41 	.inst	0x5f444e41 ; undefined
     23c:	50415753 	adr	x19, 82d26 <__bss_end+0x82316>
     240:	3120385f 	cmn	w2, #0x80e
    mini_uart->AUX_MU_IIR_REG = 0x3 << 1; 
     244:	4c5f5f00 	.inst	0x4c5f5f00 ; undefined
    mini_uart->AUX_MU_BAUD_REG = 271;
     248:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    *AUX_ENABLES = 1;
     24c:	544e414d 	b.le	9ca74 <__bss_end+0x9c064>
}
     250:	4749445f 	.inst	0x4749445f ; undefined
    *(reg32*)0x3f215068 = 271;
     254:	31205f5f 	cmn	w26, #0x817
    *AUX_ENABLES = 1;
     258:	41003331 	.inst	0x41003331 ; undefined
}
     25c:	4d5f5855 	.inst	0x4d5f5855 ; undefined
     260:	434c5f55 	.inst	0x434c5f55 ; undefined
     264:	45525f52 	.inst	0x45525f52 ; undefined
     268:	5f5f0047 	.inst	0x5f5f0047 ; undefined
     26c:	33544c46 	.inst	0x33544c46 ; undefined
    return mini_uart->AUX_MU_LSR_REG & 0x1;
     270:	445f5832 	.inst	0x445f5832 ; undefined
     274:	4d494345 	.inst	0x4d494345 ; undefined
     278:	445f4c41 	.inst	0x445f4c41 ; undefined
     27c:	5f5f4749 	.inst	0x5f5f4749 ; undefined
}
     280:	00373120 	.inst	0x00373120 ; NYI
     284:	5f41565f 	shl	d31, d18, #1
     288:	5453494c 	b.gt	a6bb0 <__bss_end+0xa61a0>
     28c:	4645445f 	.inst	0x4645445f ; undefined
    uint8 data = mini_uart->AUX_MU_IO_REG & 0xFF;
     290:	44454e49 	.inst	0x44454e49 ; undefined
     294:	5f5f0020 	.inst	0x5f5f0020 ; undefined
     298:	5f4c4244 	.inst	0x5f4c4244 ; undefined
     29c:	5f4e494d 	.inst	0x5f4e494d ; undefined
}
     2a0:	5f505845 	.inst	0x5f505845 ; undefined
     2a4:	2d28205f 	stp	s31, s8, [x2, #-192]
     2a8:	31323031 	adds	w17, w1, #0xc8c
     2ac:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    mini_uart->AUX_MU_IO_REG = data;
     2b0:	5f544e49 	.inst	0x5f544e49 ; undefined
void uart_write(uint8 data){
     2b4:	54534146 	b.vs	a6adc <__bss_end+0xa60cc>
    mini_uart->AUX_MU_IO_REG = data;
     2b8:	4d5f3436 	.inst	0x4d5f3436 ; undefined
     2bc:	5f5f5841 	.inst	0x5f5f5841 ; undefined
     2c0:	37783020 	tbnz	w0, #15, 8c4 <delay+0x4>
}
     2c4:	66666666 	.inst	0x66666666 ; undefined
     2c8:	66666666 	.inst	0x66666666 ; undefined
     2cc:	66666666 	.inst	0x66666666 ; undefined
    uart_write(data);
     2d0:	4c666666 	.inst	0x4c666666 ; undefined
     2d4:	475f5f00 	.inst	0x475f5f00 ; undefined
     2d8:	415f4343 	.inst	0x415f4343 ; undefined
     2dc:	494d4f54 	.inst	0x494d4f54 ; undefined
    while (num/d >= base)
     2e0:	48435f43 	ldxrh	w3, [x26]
     2e4:	36315241 	tbz	w1, #6, 2d2c <__bss_end+0x231c>
    unsigned int d=1;
     2e8:	4c5f545f 	.inst	0x4c5f545f ; undefined
     2ec:	5f4b434f 	.inst	0x5f4b434f ; undefined
        d*=base;
     2f0:	45455246 	.inst	0x45455246 ; undefined
    while (num/d >= base)
     2f4:	5f003220 	.inst	0x5f003220 ; undefined
     2f8:	4d52415f 	.inst	0x4d52415f ; undefined
     2fc:	5a49535f 	.inst	0x5a49535f ; undefined
    while (d!=0) {
     300:	5f464f45 	.inst	0x5f464f45 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
     304:	41484357 	.inst	0x41484357 ; undefined
     308:	20545f52 	.inst	0x20545f52 ; undefined
     30c:	5f5f0034 	.inst	0x5f5f0034 ; undefined
     310:	33544c46 	.inst	0x33544c46 ; undefined
        if (n || dgt>0 || d==0) {
     314:	4d5f5832 	.inst	0x4d5f5832 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
     318:	5f5f5841 	.inst	0x5f5f5841 ; undefined
        if (n || dgt>0 || d==0) {
     31c:	372e3120 	tbnz	w0, #5, ffffffffffffc940 <__bss_end+0xffffffffffffbf30>
     320:	39363739 	strb	w25, [x25, #3469]
     324:	34333133 	cbz	w19, 66948 <__bss_end+0x65f38>
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
     328:	33323638 	.inst	0x33323638 ; undefined
        if (n || dgt>0 || d==0) {
     32c:	30373531 	adr	x17, 6e9d1 <__bss_end+0x6dfc1>
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
     330:	35343138 	cbnz	w24, 68954 <__bss_end+0x67f44>
        if (n || dgt>0 || d==0) {
     334:	32343732 	orr	w18, w25, #0x3fff000
        num%= d;
     338:	31333733 	adds	w19, w25, #0xccd
        d/=base;
     33c:	33343037 	.inst	0x33343037 ; undefined
        if (n || dgt>0 || d==0) {
     340:	2b653735 	.inst	0x2b653735 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
     344:	46383033 	.inst	0x46383033 ; undefined
     348:	00783233 	.inst	0x00783233 ; undefined
     34c:	49535f5f 	.inst	0x49535f5f ; undefined
     350:	464f455a 	.inst	0x464f455a ; undefined
     354:	4e49575f 	.inst	0x4e49575f ; undefined
     358:	5f545f54 	.inst	0x5f545f54 ; undefined
     35c:	0034205f 	.inst	0x0034205f ; NYI
            ++n;
     360:	41415f5f 	.inst	0x41415f5f ; undefined
    while (d!=0) {
     364:	36484352 	tbz	w18, #9, bcc <__bss_end+0x1bc>
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
     368:	5f4c4534 	.inst	0x5f4c4534 ; undefined
    while (d!=0) {
     36c:	0031205f 	.inst	0x0031205f ; NYI
    *bf=0;
     370:	4e475f5f 	.inst	0x4e475f5f ; undefined
    }
     374:	4d5f4355 	.inst	0x4d5f4355 ; undefined
    while (d!=0) {
     378:	524f4e49 	.inst	0x524f4e49 ; undefined
    *bf=0;
     37c:	33205f5f 	.inst	0x33205f5f ; undefined
    }
     380:	555f5f00 	.inst	0x555f5f00 ; undefined
     384:	36544e49 	tbz	w9, #10, ffffffffffff8d4c <__bss_end+0xffffffffffff833c>
    unsigned int d=1;
     388:	414d5f34 	.inst	0x414d5f34 ; undefined
     38c:	205f5f58 	.inst	0x205f5f58 ; undefined
    *(*((char**)p))++ = c;
     390:	66667830 	.inst	0x66667830 ; undefined
     394:	66666666 	.inst	0x66666666 ; undefined
     398:	66666666 	.inst	0x66666666 ; undefined
     39c:	66666666 	.inst	0x66666666 ; undefined
    }
     3a0:	4c556666 	.inst	0x4c556666 ; undefined
     3a4:	415f5f00 	.inst	0x415f5f00 ; undefined
     3a8:	465f4d52 	.inst	0x465f4d52 ; undefined
     3ac:	55544145 	.inst	0x55544145 ; undefined
    {
     3b0:	435f4552 	.inst	0x435f4552 ; undefined
    char fc=z? '0' : ' ';
     3b4:	54505952 	.inst	0x54505952 ; undefined
    {
     3b8:	5f5f004f 	.inst	0x5f5f004f ; undefined
     3bc:	36544c46 	tbz	w6, #10, ffffffffffff8d44 <__bss_end+0xffffffffffff8334>
    while (*p++ && n > 0)
     3c0:	494d5f34 	.inst	0x494d5f34 ; undefined
    {
     3c4:	205f5f4e 	.inst	0x205f5f4e ; undefined
     3c8:	32322e32 	orr	w18, w17, #0x3ffc000
     3cc:	33373035 	.inst	0x33373035 ; undefined
     3d0:	35383538 	cbnz	w24, 70a74 <__bss_end+0x70064>
    char fc=z? '0' : ' ';
     3d4:	30323730 	adr	x16, 64ab9 <__bss_end+0x640a9>
     3d8:	33383331 	.inst	0x33383331 ; undefined
    while (*p++ && n > 0)
     3dc:	32303930 	orr	w16, w9, #0x7fff0000
    char fc=z? '0' : ' ';
     3e0:	31373233 	adds	w19, w17, #0xdcc
    {
     3e4:	32333337 	orr	w23, w25, #0x3ffe000
    while (*p++ && n > 0)
     3e8:	30343034 	adr	x20, 689ed <__bss_end+0x67fdd>
     3ec:	332d6536 	.inst	0x332d6536 ; undefined
     3f0:	36463830 	tbz	w16, #8, ffffffffffffcaf4 <__bss_end+0xffffffffffffc0e4>
     3f4:	5f5f0034 	.inst	0x5f5f0034 ; undefined
     3f8:	474e4f4c 	.inst	0x474e4f4c ; undefined
     3fc:	4e4f4c5f 	.inst	0x4e4f4c5f ; undefined
     400:	49575f47 	.inst	0x49575f47 ; undefined
     404:	5f485444 	shl	d4, d2, #8
        n--;
     408:	3436205f 	cbz	wzr, 6c810 <__bss_end+0x6be00>
     40c:	535f5f00 	.inst	0x535f5f00 ; undefined
    while (*p++ && n > 0)
     410:	4f455a49 	.inst	0x4f455a49 ; undefined
    while (n-- > 0)
     414:	48535f46 	ldxrh	w6, [x26]
     418:	5f54524f 	.inst	0x5f54524f ; undefined
     41c:	0032205f 	.inst	0x0032205f ; NYI
        putf(putp,fc);
     420:	48435f5f 	ldxrh	wzr, [x26]
     424:	36315241 	tbz	w1, #6, 2e6c <__bss_end+0x245c>
     428:	5059545f 	adr	xzr, b2eb2 <__bss_end+0xb24a2>
    while (n-- > 0)
     42c:	205f5f45 	.inst	0x205f5f45 ; undefined
     430:	726f6873 	.inst	0x726f6873 ; undefined
     434:	6e752074 	usubl2	v20.4s, v3.8h, v21.8h
     438:	6e676973 	.inst	0x6e676973 ; undefined
    while ((ch= *bf++))
     43c:	69206465 	stgp	x5, x25, [x3, #-1024]
     440:	5f00746e 	.inst	0x5f00746e ; undefined
     444:	5a49535f 	.inst	0x5a49535f ; undefined
        putf(putp,ch);
     448:	5f464f45 	.inst	0x5f464f45 ; undefined
     44c:	455a4953 	.inst	0x455a4953 ; undefined
    while ((ch= *bf++))
     450:	5f5f545f 	shl	d31, d2, #31
     454:	5f003820 	.inst	0x5f003820 ; undefined
    }
     458:	5241415f 	.inst	0x5241415f ; undefined
     45c:	34364843 	cbz	w3, 6cd64 <__bss_end+0x6c354>
     460:	4f4d435f 	.inst	0x4f4d435f ; undefined
     464:	5f4c4544 	.inst	0x5f4c4544 ; undefined
     468:	4c414d53 	.inst	0x4c414d53 ; undefined
    while (n-- > 0)
     46c:	205f5f4c 	.inst	0x205f5f4c ; undefined
     470:	5f5f0031 	.inst	0x5f5f0031 ; undefined
     474:	5f544e49 	.inst	0x5f544e49 ; undefined
     478:	54534146 	b.vs	a6ca0 <__bss_end+0xa6290>
     47c:	414d5f38 	.inst	0x414d5f38 ; undefined
    {
     480:	205f5f58 	.inst	0x205f5f58 ; undefined
     484:	66377830 	.inst	0x66377830 ; undefined
     488:	66666666 	.inst	0x66666666 ; undefined
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
     48c:	5f006666 	.inst	0x5f006666 ; undefined
     490:	44524f5f 	.inst	0x44524f5f ; undefined
    {
     494:	425f5245 	.inst	0x425f5245 ; undefined
     498:	455f4749 	.inst	0x455f4749 ; undefined
                    ui2a(va_arg(va, unsigned int),10,0,bf);
     49c:	4149444e 	.inst	0x4149444e ; undefined
    {
     4a0:	205f5f4e 	.inst	0x205f5f4e ; undefined
     4a4:	31323334 	adds	w20, w25, #0xc8c
     4a8:	475f5f00 	.inst	0x475f5f00 ; undefined
        *bf++ = '-';
     4ac:	5f43554e 	shl	d14, d10, #3
     4b0:	0038205f 	.inst	0x0038205f ; NYI
    {
     4b4:	49555f5f 	.inst	0x49555f5f ; undefined
     4b8:	3436544e 	cbz	w14, 6cf40 <__bss_end+0x6c530>
     4bc:	6328435f 	.inst	0x6328435f ; undefined
    while ((ch=*(fmt++))) {
     4c0:	20632029 	.inst	0x20632029 ; undefined
     4c4:	55202323 	.inst	0x55202323 ; undefined
        if (ch!='%')
     4c8:	5f5f004c 	.inst	0x5f5f004c ; undefined
     4cc:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    while ((ch=*(fmt++))) {
     4d0:	544e414d 	b.le	9ccf8 <__bss_end+0x9c2e8>
            putf(putp,ch);
     4d4:	4749445f 	.inst	0x4749445f ; undefined
     4d8:	35205f5f 	cbnz	wzr, 410c0 <__bss_end+0x406b0>
    while ((ch=*(fmt++))) {
     4dc:	5f5f0033 	.inst	0x5f5f0033 ; undefined
     4e0:	5f4d5241 	.inst	0x5f4d5241 ; undefined
    }
     4e4:	54414546 	b.vs	82d8c <__bss_end+0x8237c>
     4e8:	5f455255 	.inst	0x5f455255 ; undefined
     4ec:	36315046 	tbz	w6, #6, 2ef4 <__bss_end+0x24e4>
     4f0:	4345565f 	.inst	0x4345565f ; undefined
     4f4:	5f524f54 	.inst	0x5f524f54 ; undefined
     4f8:	54495241 	b.ne	92f40 <__bss_end+0x92530>  // b.any
     4fc:	54454d48 	b.hi	8aea4 <__bss_end+0x8a494>  // b.pmore
            ch=*(fmt++);
     500:	5f004349 	.inst	0x5f004349 ; undefined
            if (ch=='0') {
     504:	544c465f 	.inst	0x544c465f ; undefined
     508:	4d5f3233 	.inst	0x4d5f3233 ; undefined
            ch=*(fmt++);
     50c:	5f5f5841 	.inst	0x5f5f5841 ; undefined
            char lz=0;
     510:	342e3320 	cbz	w0, 5cb74 <__bss_end+0x5c164>
            if (ch>='0' && ch<='9') {
     514:	32383230 	orr	w16, w17, #0x1fff00
    int num=0;
     518:	36363433 	tbz	w19, #6, ffffffffffffcb9c <__bss_end+0xffffffffffffc18c>
            if (ch>='0' && ch<='9') {
     51c:	32353833 	orr	w19, w1, #0x3fff800
     520:	39353838 	strb	w24, [x1, #3406]
     524:	37313138 	tbnz	w24, #6, 2b48 <__bss_end+0x2138>
            switch (ch) {
     528:	38313430 	.inst	0x38313430 ; undefined
     52c:	34383433 	cbz	w19, 70bb0 <__bss_end+0x701a0>
     530:	39363135 	strb	w21, [x9, #3468]
     534:	2b653532 	.inst	0x2b653532 ; undefined
     538:	33463833 	.inst	0x33463833 ; undefined
     53c:	5f5f0032 	.inst	0x5f5f0032 ; undefined
     540:	5f544e49 	.inst	0x5f544e49 ; undefined
     544:	5f58414d 	.inst	0x5f58414d ; undefined
                    ui2a(va_arg(va, unsigned int),10,0,bf);
     548:	7830205f 	steorh	w16, [x2]
     54c:	66666637 	.inst	0x66666637 ; undefined
     550:	66666666 	.inst	0x66666666 ; undefined
     554:	415f5f00 	.inst	0x415f5f00 ; undefined
     558:	494d4f54 	.inst	0x494d4f54 ; undefined
     55c:	45525f43 	.inst	0x45525f43 ; undefined
    ui2a(num,10,0,bf);
     560:	5341454c 	.inst	0x5341454c ; undefined
     564:	00332045 	.inst	0x00332045 ; NYI
     568:	5f41565f 	shl	d31, d18, #1
    else if (ch>='a' && ch<='f')
     56c:	5453494c 	b.gt	a6e94 <__bss_end+0xa6484>
     570:	485f545f 	ldxrh	wzr, [x2]
    else if (ch>='A' && ch<='F')
     574:	5f5f0020 	.inst	0x5f5f0020 ; undefined
     578:	31544c46 	adds	w6, w2, #0x513, lsl #12
        if (digit>base) break;
     57c:	49445f36 	.inst	0x49445f36 ; undefined
     580:	205f5f47 	.inst	0x205f5f47 ; undefined
        ch=*p++;
     584:	5f5f0033 	.inst	0x5f5f0033 ; undefined
        num=num*base+digit;
     588:	52414843 	.inst	0x52414843 ; undefined
        ch=*p++;
     58c:	534e555f 	.inst	0x534e555f ; undefined
    else if (ch>='a' && ch<='f')
     590:	454e4749 	.inst	0x454e4749 ; undefined
    else if (ch>='A' && ch<='F')
     594:	205f5f44 	.inst	0x205f5f44 ; undefined
    if (ch>='0' && ch<='9')
     598:	5f5f0031 	.inst	0x5f5f0031 ; undefined
        return ch-'A'+10;
     59c:	31544e49 	adds	w9, w18, #0x513, lsl #12
    else if (ch>='a' && ch<='f')
     5a0:	59545f36 	.inst	0x59545f36 ; undefined
    else if (ch>='A' && ch<='F')
     5a4:	5f5f4550 	.inst	0x5f5f4550 ; undefined
    if (ch>='0' && ch<='9')
     5a8:	6f687320 	fcmla	v0.8h, v25.8h, v8.h[1], #270
     5ac:	69207472 	stgp	x18, x29, [x3, #-1024]
        return ch-'0';
     5b0:	5f00746e 	.inst	0x5f00746e ; undefined
        if (digit>base) break;
     5b4:	4d52415f 	.inst	0x4d52415f ; undefined
            switch (ch) {
     5b8:	4145465f 	.inst	0x4145465f ; undefined
     5bc:	45525554 	.inst	0x45525554 ; undefined
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
     5c0:	4452515f 	.inst	0x4452515f ; undefined
     5c4:	5f00584d 	fmls	h13, h2, v0.h[4]
     5c8:	4345445f 	.inst	0x4345445f ; undefined
     5cc:	455f3233 	.inst	0x455f3233 ; undefined
     5d0:	4c495350 	.inst	0x4c495350 ; undefined
     5d4:	5f5f4e4f 	.inst	0x5f5f4e4f ; undefined
     5d8:	2d453120 	ldp	s0, s12, [x9, #40]
     5dc:	00464436 	.inst	0x00464436 ; undefined
     5e0:	504f5f5f 	adr	xzr, 9f1ca <__bss_end+0x9e7ba>
     5e4:	494d4954 	.inst	0x494d4954 ; undefined
                    putchw(putp,putf,w,lz,bf);
     5e8:	5f5f455a 	.inst	0x5f5f455a ; undefined
     5ec:	5f003120 	.inst	0x5f003120 ; undefined
     5f0:	544c465f 	.inst	0x544c465f ; undefined
     5f4:	5f583436 	srsra	d22, d1, #40
     5f8:	5f58414d 	.inst	0x5f58414d ; undefined
     5fc:	5f505845 	.inst	0x5f505845 ; undefined
                    break;
     600:	3631205f 	tbz	wzr, #6, 2a08 <__bss_end+0x1ff8>
            switch (ch) {
     604:	00343833 	.inst	0x00343833 ; NYI
     608:	54415f5f 	.inst	0x54415f5f ; undefined
                    i2a(va_arg(va, int),bf);
     60c:	43494d4f 	.inst	0x43494d4f ; undefined
     610:	5145535f 	sub	wsp, w26, #0x154, lsl #12
     614:	5453435f 	.inst	0x5453435f ; undefined
     618:	76003520 	.inst	0x76003520 ; undefined
     61c:	72615f61 	.inst	0x72615f61 ; undefined
    if (num<0) {
     620:	2c762867 	ldnp	s7, s10, [x3, #-80]
     624:	5f20296c 	.inst	0x5f20296c ; undefined
        *bf++ = '-';
     628:	6975625f 	ldpsw	xzr, x24, [x18, #-88]
        num=-num;
     62c:	6e69746c 	uabd	v12.8h, v3.8h, v9.8h
        *bf++ = '-';
     630:	5f61765f 	sqshl	d31, d18, #33
     634:	28677261 	ldnp	w1, w28, [x19, #-200]
     638:	296c2c76 	ldp	w22, w11, [x3, #-160]
            switch (ch) {
     63c:	555f5f00 	.inst	0x555f5f00 ; undefined
     640:	36544e49 	tbz	w9, #10, ffffffffffff9008 <__bss_end+0xffffffffffff85f8>
     644:	59545f34 	.inst	0x59545f34 ; undefined
     648:	5f5f4550 	.inst	0x5f5f4550 ; undefined
     64c:	6e6f6c20 	umin	v0.8h, v1.8h, v15.8h
    }
     650:	6e752067 	usubl2	v7.4s, v3.8h, v21.8h
     654:	6e676973 	.inst	0x6e676973 ; undefined
     658:	69206465 	stgp	x5, x25, [x3, #-1024]
     65c:	5f00746e 	.inst	0x5f00746e ; undefined
     660:	544e495f 	.inst	0x544e495f ; undefined
     664:	41454c5f 	.inst	0x41454c5f ; undefined
     668:	5f385453 	.inst	0x5f385453 ; undefined
        return ch-'a'+10;
     66c:	45505954 	.inst	0x45505954 ; undefined
     670:	73205f5f 	.inst	0x73205f5f ; undefined
                ch=*(fmt++);
     674:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
                lz=1;
     678:	68632064 	.inst	0x68632064 ; undefined
                ch=*(fmt++);
     67c:	5f007261 	.inst	0x5f007261 ; undefined
     680:	4e49555f 	.inst	0x4e49555f ; undefined
                    putchw(putp,putf,w,0,va_arg(va, char*));
     684:	454c5f54 	.inst	0x454c5f54 ; undefined
     688:	33545341 	.inst	0x33545341 ; undefined
     68c:	59545f32 	.inst	0x59545f32 ; undefined
     690:	5f5f4550 	.inst	0x5f5f4550 ; undefined
     694:	736e7520 	.inst	0x736e7520 ; undefined
     698:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
     69c:	6e692064 	usubl2	v4.4s, v3.8h, v9.8h
     6a0:	5f5f0074 	.inst	0x5f5f0074 ; undefined
     6a4:	45545942 	.inst	0x45545942 ; undefined
     6a8:	44524f5f 	.inst	0x44524f5f ; undefined
                    break;
     6ac:	5f5f5245 	.inst	0x5f5f5245 ; undefined
                    putf(putp,(char)(va_arg(va, int)));
     6b0:	4f5f5f20 	.inst	0x4f5f5f20 ; undefined
     6b4:	52454452 	.inst	0x52454452 ; undefined
     6b8:	54494c5f 	.inst	0x54494c5f ; undefined
     6bc:	5f454c54 	.inst	0x5f454c54 ; undefined
     6c0:	49444e45 	.inst	0x49444e45 ; undefined
     6c4:	5f5f4e41 	.inst	0x5f5f4e41 ; undefined
     6c8:	4c5f5f00 	.inst	0x4c5f5f00 ; undefined
                    break;
     6cc:	5f4c4244 	.inst	0x5f4c4244 ; undefined
                    putf(putp,ch);
     6d0:	5f4e494d 	.inst	0x5f4e494d ; undefined
     6d4:	2e33205f 	usubl	v31.8h, v2.8b, v19.8b
     6d8:	31323633 	adds	w19, w17, #0xc8d
                    ui2a(va_arg(va, unsigned int),10,0,bf);
     6dc:	34313330 	cbz	w16, 62d40 <__bss_end+0x62330>
     6e0:	32313133 	orr	w19, w9, #0xfff8000
     6e4:	35333930 	cbnz	w16, 66e08 <__bss_end+0x663f8>
     6e8:	36323630 	tbz	w16, #6, 4dac <__bss_end+0x439c>
     6ec:	37373632 	tbnz	w18, #6, ffffffffffffedb0 <__bss_end+0xffffffffffffe3a0>
     6f0:	33373138 	.inst	0x33373138 ; undefined
     6f4:	35373132 	cbnz	w18, 6ed18 <__bss_end+0x6e308>
     6f8:	65303632 	.inst	0x65303632 ; undefined
                    i2a(va_arg(va, int),bf);
     6fc:	3339342d 	.inst	0x3339342d ; undefined
     700:	5f004c32 	.inst	0x5f004c32 ; undefined
     704:	544c465f 	.inst	0x544c465f ; undefined
     708:	4d5f3233 	.inst	0x4d5f3233 ; undefined
     70c:	315f4e49 	adds	w9, w18, #0x7d3, lsl #12
     710:	58455f30 	ldr	x16, 8b2f4 <__bss_end+0x8a8e4>
     714:	205f5f50 	.inst	0x205f5f50 ; undefined
     718:	37332d28 	tbnz	w8, #6, 6cbc <__bss_end+0x62ac>
                    putf(putp,(char)(va_arg(va, int)));
     71c:	5f5f0029 	.inst	0x5f5f0029 ; undefined
     720:	5f4c4244 	.inst	0x5f4c4244 ; undefined
     724:	5f534148 	.inst	0x5f534148 ; undefined
     728:	4f4e4544 	.inst	0x4f4e4544 ; undefined
     72c:	5f5f4d52 	.inst	0x5f5f4d52 ; undefined
     730:	5f003120 	.inst	0x5f003120 ; undefined
     734:	544e495f 	.inst	0x544e495f ; undefined
     738:	41454c5f 	.inst	0x41454c5f ; undefined
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
     73c:	34365453 	cbz	w19, 6d1c4 <__bss_end+0x6c7b4>
     740:	5059545f 	adr	xzr, b31ca <__bss_end+0xb27ba>
     744:	205f5f45 	.inst	0x205f5f45 ; undefined
     748:	676e6f6c 	.inst	0x676e6f6c ; undefined
     74c:	746e6920 	.inst	0x746e6920 ; undefined
     750:	465f5f00 	.inst	0x465f5f00 ; undefined
     754:	4d5f544c 	.inst	0x4d5f544c ; undefined
     758:	5f544e41 	.inst	0x5f544e41 ; undefined
                    putchw(putp,putf,w,0,va_arg(va, char*));
     75c:	5f474944 	.inst	0x5f474944 ; undefined
     760:	3432205f 	cbz	wzr, 64b68 <__bss_end+0x64158>
     764:	52455000 	.inst	0x52455000 ; undefined
     768:	41425f49 	.inst	0x41425f49 ; undefined
     76c:	28204553 	stnp	w19, w17, [x10, #-256]
     770:	46337830 	.inst	0x46337830 ; undefined
     774:	30303030 	adr	x16, 60d79 <__bss_end+0x60369>
     778:	00293030 	.inst	0x00293030 ; NYI
                    ui2a(va_arg(va, unsigned int),10,0,bf);
     77c:	52415f5f 	.inst	0x52415f5f ; undefined
     780:	52415f4d 	.inst	0x52415f4d ; undefined
     784:	38204843 	strb	w3, [x2, w0, uxtw]
                    i2a(va_arg(va, int),bf);
     788:	495f5f00 	.inst	0x495f5f00 ; undefined
     78c:	4c5f544e 	.inst	0x4c5f544e ; undefined
     790:	54534145 	b.pl	a6fb8 <__bss_end+0xa65a8>  // b.nfrst
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
     794:	4d5f3631 	.inst	0x4d5f3631 ; undefined
     798:	5f5f5841 	.inst	0x5f5f5841 ; undefined
     79c:	37783020 	tbnz	w0, #15, da0 <__bss_end+0x390>
                    putf(putp,(char)(va_arg(va, int)));
     7a0:	00666666 	.inst	0x00666666 ; undefined
     7a4:	4954555f 	.inst	0x4954555f ; undefined
     7a8:	485f534c 	ldxrh	w12, [x26]
                    putchw(putp,putf,w,0,va_arg(va, char*));
     7ac:	5f00205f 	.inst	0x5f00205f ; undefined
     7b0:	4843535f 	ldxrh	wzr, [x26]
     7b4:	4d5f5241 	.inst	0x4d5f5241 ; undefined
     7b8:	5f5f5841 	.inst	0x5f5f5841 ; undefined
     7bc:	37783020 	tbnz	w0, #15, dc0 <__bss_end+0x3b0>
    stdout_putf=putf;
     7c0:	5f5f0066 	.inst	0x5f5f0066 ; undefined
     7c4:	4c42444c 	.inst	0x4c42444c ; undefined
     7c8:	4e45445f 	.inst	0x4e45445f ; undefined
    stdout_putp=putp;
     7cc:	5f4d524f 	.inst	0x5f4d524f ; undefined
    }
     7d0:	5f4e494d 	.inst	0x5f4e494d ; undefined
     7d4:	2e36205f 	usubl	v31.8h, v2.8b, v22.8b
     7d8:	31353734 	adds	w20, w25, #0xd4d
     7dc:	31313537 	adds	w23, w9, #0xc4d
    {
     7e0:	38333439 	.inst	0x38333439 ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
     7e4:	31353230 	adds	w16, w17, #0xd4c
     7e8:	32393031 	orr	w17, w1, #0xfff80
    {
     7ec:	38333434 	.inst	0x38333434 ; undefined
     7f0:	32383539 	orr	w25, w9, #0x3fff00
    tfp_format(stdout_putp,stdout_putf,fmt,va);
     7f4:	34363732 	cbz	w18, 6ced8 <__bss_end+0x6c4c8>
    va_start(va,fmt);
     7f8:	65353536 	.inst	0x65353536 ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
     7fc:	3639342d 	tbz	w13, #7, 2e80 <__bss_end+0x2470>
    va_start(va,fmt);
     800:	5f004c36 	.inst	0x5f004c36 ; undefined
     804:	4d52415f 	.inst	0x4d52415f ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
     808:	4145465f 	.inst	0x4145465f ; undefined
    va_start(va,fmt);
     80c:	45525554 	.inst	0x45525554 ; undefined
     810:	4d554e5f 	.inst	0x4d554e5f ; undefined
     814:	43495245 	.inst	0x43495245 ; undefined
     818:	58414d5f 	ldr	xzr, 831c0 <__bss_end+0x827b0>
    tfp_format(stdout_putp,stdout_putf,fmt,va);
     81c:	004e494d 	.inst	0x004e494d ; undefined
     820:	4c465f5f 	.inst	0x4c465f5f ; undefined
     824:	5f343654 	.inst	0x5f343654 ; undefined
     828:	5f474944 	.inst	0x5f474944 ; undefined
    {
     82c:	3531205f 	cbnz	wzr, 62c34 <__bss_end+0x62224>
    tfp_format(stdout_putp,stdout_putf,fmt,va);
     830:	415f5f00 	.inst	0x415f5f00 ; undefined
    {
     834:	494d4f54 	.inst	0x494d4f54 ; undefined
     838:	45525f43 	.inst	0x45525f43 ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
     83c:	4558414c 	.inst	0x4558414c ; undefined
    }
     840:	00302044 	.inst	0x00302044 ; NYI
     844:	52415f5f 	.inst	0x52415f5f ; undefined
     848:	45465f4d 	.inst	0x45465f4d ; undefined
     84c:	52555441 	.inst	0x52555441 ; undefined
    {
     850:	50465f45 	adr	x5, 8d43a <__bss_end+0x8ca2a>
    va_start(va,fmt);
     854:	465f3631 	.inst	0x465f3631 ; undefined
    {
     858:	5f004c4d 	.inst	0x5f004c4d ; undefined
    va_start(va,fmt);
     85c:	7361685f 	.inst	0x7361685f ; undefined
     860:	636e695f 	.inst	0x636e695f ; undefined
     864:	6564756c 	fnmls	z12.h, p5/m, z11.h, z4.h
     868:	78656e5f 	.inst	0x78656e5f ; undefined
    tfp_format(&s,putcp,fmt,va);
     86c:	54532874 	.inst	0x54532874 ; undefined
    va_start(va,fmt);
     870:	5f202952 	.inst	0x5f202952 ; undefined
    tfp_format(&s,putcp,fmt,va);
     874:	7361685f 	.inst	0x7361685f ; undefined
    va_start(va,fmt);
     878:	636e695f 	.inst	0x636e695f ; undefined
    tfp_format(&s,putcp,fmt,va);
     87c:	6564756c 	fnmls	z12.h, p5/m, z11.h, z4.h
     880:	78656e5f 	.inst	0x78656e5f ; undefined
     884:	285f5f74 	ldnp	w20, w23, [x27, #248]
     888:	29525453 	ldp	w19, w21, [x2, #144]
    {
     88c:	54535f00 	b.eq	a746c <__bss_end+0xa6a5c>  // b.none
    tfp_format(&s,putcp,fmt,va);
     890:	47524144 	.inst	0x47524144 ; undefined
     894:	0020485f 	.inst	0x0020485f ; NYI
     898:	4c465f5f 	.inst	0x4c465f5f ; undefined
    {
     89c:	58323354 	ldr	x20, 64f04 <__bss_end+0x644f4>
     8a0:	5341485f 	.inst	0x5341485f ; undefined
    tfp_format(&s,putcp,fmt,va);
     8a4:	464e495f 	.inst	0x464e495f ; undefined
    *(*((char**)p))++ = c;
     8a8:	54494e49 	b.ls	93270 <__bss_end+0x92860>  // b.plast
     8ac:	205f5f59 	.inst	0x205f5f59 ; undefined
    }
     8b0:	5f5f0031 	.inst	0x5f5f0031 ; undefined
     8b4:	31544c46 	adds	w6, w2, #0x513, lsl #12
     8b8:	485f3832 	ldxrh	w18, [x1]
     8bc:	495f5341 	.inst	0x495f5341 ; undefined
    asm volatile("loop : subs %0, %0, #1\n\t"
     8c0:	4e49464e 	.inst	0x4e49464e ; undefined
     8c4:	5f595449 	shl	d9, d2, #25
}
     8c8:	0031205f 	.inst	0x0031205f ; NYI
     8cc:	20554e47 	.inst	0x20554e47 ; undefined
    asm volatile("mrs %0, mpidr_el1\n\t"
     8d0:	20373143 	.inst	0x20373143 ; undefined
     8d4:	2e332e38 	uqsub	v24.8b, v17.8b, v19.8b
}
     8d8:	6d2d2030 	stp	d16, d8, [x1, #-304]
     8dc:	3d757063 	ldr	b3, [x3, #3420]
    asm volatile("mrs %0, CurrentEL\n\t"
     8e0:	74726f63 	.inst	0x74726f63 ; undefined
     8e4:	612d7865 	.inst	0x612d7865 ; undefined
}
     8e8:	2d203335 	stp	s21, s12, [x25, #-256]
     8ec:	6e65676d 	umax	v13.8h, v27.8h, v5.8h
     8f0:	6c617265 	ldnp	d5, d28, [x19, #-496]
     8f4:	6765722d 	.inst	0x6765722d ; undefined
     8f8:	6e6f2d73 	uqsub	v19.8h, v11.8h, v15.8h
     8fc:	2d20796c 	stp	s12, s30, [x11, #-256]
     900:	74696c6d 	.inst	0x74696c6d ; undefined
     904:	2d656c74 	ldp	s20, s27, [x3, #-216]
     908:	69646e65 	ldpsw	x5, x27, [x19, #-224]
     90c:	2d206e61 	stp	s1, s27, [x19, #-256]
     910:	6962616d 	ldpsw	x13, x24, [x11, #-240]
     914:	36706c3d 	tbz	w29, #14, 1698 <__bss_end+0xc88>
     918:	672d2034 	.inst	0x672d2034 ; undefined
     91c:	4f2d2033 	.inst	0x4f2d2033 ; undefined
     920:	662d2032 	.inst	0x662d2032 ; undefined
     924:	20434950 	.inst	0x20434950 ; undefined
     928:	7266662d 	.inst	0x7266662d ; undefined
     92c:	74736565 	.inst	0x74736565 ; undefined
     930:	69646e61 	ldpsw	x1, x27, [x19, #-224]
     934:	5f00676e 	.inst	0x5f00676e ; undefined
     938:	5a49535f 	.inst	0x5a49535f ; undefined
     93c:	5f464f45 	.inst	0x5f464f45 ; undefined
     940:	31544e49 	adds	w9, w18, #0x513, lsl #12
     944:	5f5f3832 	sqdmlal	s18, h1, v15.h[5]
     948:	00363120 	.inst	0x00363120 ; NYI
     94c:	735f6176 	.inst	0x735f6176 ; undefined
     950:	74726174 	.inst	0x74726174 ; undefined
     954:	6c2c7628 	stnp	d8, d29, [x17, #-320]
     958:	5f5f2029 	.inst	0x5f5f2029 ; undefined
     95c:	6c697562 	ldnp	d2, d29, [x11, #-368]
     960:	5f6e6974 	.inst	0x5f6e6974 ; undefined
     964:	735f6176 	.inst	0x735f6176 ; undefined
     968:	74726174 	.inst	0x74726174 ; undefined
     96c:	6c2c7628 	stnp	d8, d29, [x17, #-320]
     970:	5f5f0029 	.inst	0x5f5f0029 ; undefined
     974:	38544e49 	ldrb	w9, [x18, #-188]!
     978:	6328435f 	.inst	0x6328435f ; undefined
     97c:	00632029 	.inst	0x00632029 ; undefined
     980:	4c465f5f 	.inst	0x4c465f5f ; undefined
     984:	38323154 	ldsetb	w18, w20, [x10]
     988:	58414d5f 	ldr	xzr, 83330 <__bss_end+0x82920>
     98c:	31205f5f 	cmn	w26, #0x817
     990:	3938312e 	strb	w14, [x9, #3596]
     994:	34313337 	cbz	w23, 62ff8 <__bss_end+0x625e8>
     998:	35333539 	cbnz	w25, 6703c <__bss_end+0x6662c>
     99c:	31333237 	adds	w23, w17, #0xccc
     9a0:	30353637 	adr	x23, 6b065 <__bss_end+0x6a655>
     9a4:	35373538 	cbnz	w24, 6f048 <__bss_end+0x6e638>
     9a8:	36323339 	tbz	w25, #6, 500c <__bss_end+0x45fc>
     9ac:	30383236 	adr	x22, 70ff1 <__bss_end+0x705e1>
     9b0:	32303730 	orr	w16, w25, #0x3fff0000
     9b4:	39342b65 	strb	w5, [x27, #3338]
     9b8:	31463233 	adds	w19, w17, #0x18c, lsl #12
     9bc:	5f003832 	.inst	0x5f003832 ; undefined
     9c0:	544e495f 	.inst	0x544e495f ; undefined
     9c4:	41454c5f 	.inst	0x41454c5f ; undefined
     9c8:	32335453 	orr	w19, w2, #0xffffe007
     9cc:	5059545f 	adr	xzr, b3456 <__bss_end+0xb2a46>
     9d0:	205f5f45 	.inst	0x205f5f45 ; undefined
     9d4:	00746e69 	.inst	0x00746e69 ; undefined
     9d8:	4e495f5f 	.inst	0x4e495f5f ; undefined
     9dc:	454c5f54 	.inst	0x454c5f54 ; undefined
     9e0:	31545341 	adds	w1, w26, #0x514, lsl #12
     9e4:	49575f36 	.inst	0x49575f36 ; undefined
     9e8:	5f485444 	shl	d4, d2, #8
     9ec:	3631205f 	tbz	wzr, #6, 2df4 <__bss_end+0x23e4>
     9f0:	72707300 	.inst	0x72707300 ; undefined
     9f4:	66746e69 	.inst	0x66746e69 ; undefined
     9f8:	70667420 	adr	x0, cd87f <__bss_end+0xcce6f>
     9fc:	7270735f 	.inst	0x7270735f ; undefined
     a00:	66746e69 	.inst	0x66746e69 ; undefined
     a04:	445f5f00 	.inst	0x445f5f00 ; undefined
     a08:	4d494345 	.inst	0x4d494345 ; undefined
     a0c:	445f4c41 	.inst	0x445f4c41 ; undefined
     a10:	5f5f4749 	.inst	0x5f5f4749 ; undefined
     a14:	00363320 	.inst	0x00363320 ; NYI
     a18:	52415f5f 	.inst	0x52415f5f ; undefined
     a1c:	45465f4d 	.inst	0x45465f4d ; undefined
     a20:	52555441 	.inst	0x52555441 ; undefined
     a24:	4f445f45 	.inst	0x4f445f45 ; undefined
     a28:	4f525054 	.inst	0x4f525054 ; undefined
     a2c:	5f5f0044 	.inst	0x5f5f0044 ; undefined
     a30:	5f4d5241 	.inst	0x5f4d5241 ; undefined
     a34:	4e4f454e 	.inst	0x4e4f454e ; undefined
     a38:	63727300 	.inst	0x63727300 ; undefined
     a3c:	72656b2f 	.inst	0x72656b2f ; undefined
     a40:	5f6c656e 	.inst	0x5f6c656e ; undefined
     a44:	6e69616d 	rsubhn2	v13.8h, v11.4s, v9.4s
     a48:	4100632e 	.inst	0x4100632e ; undefined
     a4c:	4d5f5855 	.inst	0x4d5f5855 ; undefined
     a50:	4f495f55 	.inst	0x4f495f55 ; undefined
     a54:	4745525f 	.inst	0x4745525f ; undefined
     a58:	465f5f00 	.inst	0x465f5f00 ; undefined
     a5c:	3233544c 	orr	w12, w2, #0xffffe007
     a60:	5341485f 	.inst	0x5341485f ; undefined
     a64:	4e45445f 	.inst	0x4e45445f ; undefined
     a68:	5f4d524f 	.inst	0x5f4d524f ; undefined
     a6c:	0031205f 	.inst	0x0031205f ; NYI
     a70:	41415f5f 	.inst	0x41415f5f ; undefined
     a74:	36484352 	tbz	w18, #9, 12dc <__bss_end+0x8cc>
     a78:	4d435f34 	.inst	0x4d435f34 ; undefined
     a7c:	4c45444f 	.inst	0x4c45444f ; undefined
     a80:	4e49545f 	.inst	0x4e49545f ; undefined
     a84:	005f5f59 	.inst	0x005f5f59 ; undefined
     a88:	43475f5f 	.inst	0x43475f5f ; undefined
     a8c:	41485f43 	.inst	0x41485f43 ; undefined
     a90:	535f4556 	.inst	0x535f4556 ; undefined
     a94:	5f434e59 	.inst	0x5f434e59 ; undefined
     a98:	504d4f43 	adr	x3, 9b482 <__bss_end+0x9aa72>
     a9c:	5f455241 	.inst	0x5f455241 ; undefined
     aa0:	5f444e41 	.inst	0x5f444e41 ; undefined
     aa4:	50415753 	adr	x19, 8358e <__bss_end+0x82b7e>
     aa8:	3120315f 	cmn	w10, #0x80c
     aac:	465f5f00 	.inst	0x465f5f00 ; undefined
     ab0:	3436544c 	cbz	w12, 6d538 <__bss_end+0x6cb28>
     ab4:	494d5f58 	.inst	0x494d5f58 ; undefined
     ab8:	58455f4e 	ldr	x14, 8b6a0 <__bss_end+0x8ac90>
     abc:	205f5f50 	.inst	0x205f5f50 ; undefined
     ac0:	36312d28 	tbz	w8, #6, 3064 <__bss_end+0x2654>
     ac4:	29313833 	stp	w19, w14, [x1, #-120]
     ac8:	415f5f00 	.inst	0x415f5f00 ; undefined
     acc:	465f4d52 	.inst	0x465f4d52 ; undefined
     ad0:	55544145 	.inst	0x55544145 ; undefined
     ad4:	465f4552 	.inst	0x465f4552 ; undefined
     ad8:	5f363150 	.inst	0x5f363150 ; undefined
     adc:	4c414353 	.inst	0x4c414353 ; undefined
     ae0:	415f5241 	.inst	0x415f5241 ; undefined
     ae4:	48544952 	ldxrh	w18, [x10]
     ae8:	4954454d 	.inst	0x4954454d ; undefined
     aec:	5f5f0043 	.inst	0x5f5f0043 ; undefined
     af0:	5f544c46 	.inst	0x5f544c46 ; undefined
     af4:	5f474944 	.inst	0x5f474944 ; undefined
     af8:	0036205f 	.inst	0x0036205f ; NYI
     afc:	46545f5f 	.inst	0x46545f5f ; undefined
     b00:	52505f50 	.inst	0x52505f50 ; undefined
     b04:	46544e49 	.inst	0x46544e49 ; undefined
     b08:	00205f5f 	.inst	0x00205f5f ; NYI
     b0c:	4c465f5f 	.inst	0x4c465f5f ; undefined
     b10:	5f363154 	.inst	0x5f363154 ; undefined
     b14:	544e414d 	b.le	9d33c <__bss_end+0x9c92c>
     b18:	4749445f 	.inst	0x4749445f ; undefined
     b1c:	31205f5f 	cmn	w26, #0x817
     b20:	5f5f0031 	.inst	0x5f5f0031 ; undefined
     b24:	5f4d5241 	.inst	0x5f4d5241 ; undefined
     b28:	455a4953 	.inst	0x455a4953 ; undefined
     b2c:	4d5f464f 	.inst	0x4d5f464f ; undefined
     b30:	4d494e49 	.inst	0x4d494e49 ; undefined
     b34:	455f4c41 	.inst	0x455f4c41 ; undefined
     b38:	204d554e 	.inst	0x204d554e ; undefined
     b3c:	5f5f0034 	.inst	0x5f5f0034 ; undefined
     b40:	544e4955 	.inst	0x544e4955 ; undefined
     b44:	5f525450 	shl	d16, d2, #18
     b48:	5f58414d 	.inst	0x5f58414d ; undefined
     b4c:	7830205f 	steorh	w16, [x2]
     b50:	66666666 	.inst	0x66666666 ; undefined
     b54:	66666666 	.inst	0x66666666 ; undefined
     b58:	66666666 	.inst	0x66666666 ; undefined
     b5c:	66666666 	.inst	0x66666666 ; undefined
     b60:	6c004c55 	stnp	d21, d19, [x2]
     b64:	20676e6f 	.inst	0x20676e6f ; undefined
     b68:	676e6f6c 	.inst	0x676e6f6c ; undefined
     b6c:	736e7520 	.inst	0x736e7520 ; undefined
     b70:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
     b74:	6e692064 	usubl2	v4.4s, v3.8h, v9.8h
     b78:	5f5f0074 	.inst	0x5f5f0074 ; undefined
     b7c:	31544c46 	adds	w6, w2, #0x513, lsl #12
     b80:	4d5f3832 	.inst	0x4d5f3832 ; undefined
     b84:	455f4e49 	.inst	0x455f4e49 ; undefined
     b88:	5f5f5058 	.inst	0x5f5f5058 ; undefined
     b8c:	312d2820 	adds	w0, w1, #0xb4a
     b90:	31383336 	adds	w22, w25, #0xe0c
     b94:	5f5f0029 	.inst	0x5f5f0029 ; undefined
     b98:	33544c46 	.inst	0x33544c46 ; undefined
     b9c:	41485f32 	.inst	0x41485f32 ; undefined
     ba0:	55515f53 	.inst	0x55515f53 ; undefined
     ba4:	5f544549 	.inst	0x5f544549 ; undefined
     ba8:	5f4e414e 	.inst	0x5f4e414e ; undefined
     bac:	0031205f 	.inst	0x0031205f ; NYI
     bb0:	49555f5f 	.inst	0x49555f5f ; undefined
     bb4:	4c5f544e 	.inst	0x4c5f544e ; undefined
     bb8:	54534145 	b.pl	a73e0 <__bss_end+0xa69d0>  // b.nfrst
     bbc:	4d5f3631 	.inst	0x4d5f3631 ; undefined
     bc0:	5f5f5841 	.inst	0x5f5f5841 ; undefined
     bc4:	66783020 	.inst	0x66783020 ; undefined
     bc8:	00666666 	.inst	0x00666666 ; undefined
     bcc:	49555f5f 	.inst	0x49555f5f ; undefined
     bd0:	465f544e 	.inst	0x465f544e ; undefined
     bd4:	36545341 	tbz	w1, #10, ffffffffffff963c <__bss_end+0xffffffffffff8c2c>
     bd8:	414d5f34 	.inst	0x414d5f34 ; undefined
     bdc:	205f5f58 	.inst	0x205f5f58 ; undefined
     be0:	66667830 	.inst	0x66667830 ; undefined
     be4:	66666666 	.inst	0x66666666 ; undefined
     be8:	66666666 	.inst	0x66666666 ; undefined
     bec:	66666666 	.inst	0x66666666 ; undefined
     bf0:	4c556666 	.inst	0x4c556666 ; undefined
     bf4:	415f5f00 	.inst	0x415f5f00 ; undefined
     bf8:	465f4d52 	.inst	0x465f4d52 ; undefined
     bfc:	55544145 	.inst	0x55544145 ; undefined
     c00:	535f4552 	.inst	0x535f4552 ; undefined
     c04:	00324148 	.inst	0x00324148 ; NYI
     c08:	444c5f5f 	.inst	0x444c5f5f ; undefined
     c0c:	445f4c42 	.inst	0x445f4c42 ; undefined
     c10:	5f5f4749 	.inst	0x5f5f4749 ; undefined
     c14:	00333320 	.inst	0x00333320 ; NYI
     c18:	49555f5f 	.inst	0x49555f5f ; undefined
     c1c:	4c5f544e 	.inst	0x4c5f544e ; undefined
     c20:	54534145 	b.pl	a7448 <__bss_end+0xa6a38>  // b.nfrst
     c24:	414d5f38 	.inst	0x414d5f38 ; undefined
     c28:	205f5f58 	.inst	0x205f5f58 ; undefined
     c2c:	66667830 	.inst	0x66667830 ; undefined
     c30:	445f5f00 	.inst	0x445f5f00 ; undefined
     c34:	32314345 	orr	w5, w26, #0xffff8000
     c38:	494d5f38 	.inst	0x494d5f38 ; undefined
     c3c:	58455f4e 	ldr	x14, 8b824 <__bss_end+0x8ae14>
     c40:	205f5f50 	.inst	0x205f5f50 ; undefined
     c44:	31362d28 	adds	w8, w9, #0xd8b
     c48:	00293234 	.inst	0x00293234 ; NYI
     c4c:	4e495f5f 	.inst	0x4e495f5f ; undefined
     c50:	4d5f3854 	.inst	0x4d5f3854 ; undefined
     c54:	5f5f5841 	.inst	0x5f5f5841 ; undefined
     c58:	37783020 	tbnz	w0, #15, 125c <__bss_end+0x84c>
     c5c:	5f5f0066 	.inst	0x5f5f0066 ; undefined
     c60:	31434544 	adds	w4, w10, #0xd1, lsl #12
     c64:	455f3832 	.inst	0x455f3832 ; undefined
     c68:	4c495350 	.inst	0x4c495350 ; undefined
     c6c:	5f5f4e4f 	.inst	0x5f5f4e4f ; undefined
     c70:	2d453120 	ldp	s0, s12, [x9, #40]
     c74:	4c443333 	.inst	0x4c443333 ; undefined
     c78:	465f5f00 	.inst	0x465f5f00 ; undefined
     c7c:	455f544c 	.inst	0x455f544c ; undefined
     c80:	5f4c4156 	.inst	0x5f4c4156 ; undefined
     c84:	4854454d 	ldxrh	w13, [x10]
     c88:	435f444f 	.inst	0x435f444f ; undefined
     c8c:	5f5f3939 	sqdmlal	s25, h9, v15.h[5]
     c90:	5f003020 	.inst	0x5f003020 ; undefined
     c94:	544c465f 	.inst	0x544c465f ; undefined
     c98:	5f383231 	.inst	0x5f383231 ; undefined
     c9c:	5f58414d 	.inst	0x5f58414d ; undefined
     ca0:	5f505845 	.inst	0x5f505845 ; undefined
     ca4:	3631205f 	tbz	wzr, #6, 30ac <__bss_end+0x269c>
     ca8:	00343833 	.inst	0x00343833 ; NYI
     cac:	4c465f5f 	.inst	0x4c465f5f ; undefined
     cb0:	41525f54 	.inst	0x41525f54 ; undefined
     cb4:	5f584944 	.inst	0x5f584944 ; undefined
     cb8:	0032205f 	.inst	0x0032205f ; NYI
     cbc:	4c465f5f 	.inst	0x4c465f5f ; undefined
     cc0:	58323354 	ldr	x20, 65328 <__bss_end+0x64918>
     cc4:	4e45445f 	.inst	0x4e45445f ; undefined
     cc8:	5f4d524f 	.inst	0x5f4d524f ; undefined
     ccc:	5f4e494d 	.inst	0x5f4e494d ; undefined
     cd0:	2e34205f 	usubl	v31.8h, v2.8b, v20.8b
     cd4:	36303439 	tbz	w25, #6, 1358 <__bss_end+0x948>
     cd8:	35343635 	cbnz	w21, 6939c <__bss_end+0x6898c>
     cdc:	32313438 	orr	w24, w1, #0x1fff8000
     ce0:	34353634 	cbz	w20, 6b3a4 <__bss_end+0x6a994>
     ce4:	36373134 	tbz	w20, #6, fffffffffffff308 <__bss_end+0xffffffffffffe8f8>
     ce8:	37383635 	tbnz	w21, #7, 13ac <__bss_end+0x99c>
     cec:	36383239 	tbz	w25, #7, 1330 <__bss_end+0x920>
     cf0:	31323238 	adds	w24, w17, #0xc8c
     cf4:	65323733 	.inst	0x65323733 ; undefined
     cf8:	3432332d 	cbz	w13, 6535c <__bss_end+0x6494c>
     cfc:	78323346 	ldseth	w18, w6, [x26]
     d00:	53455200 	.inst	0x53455200 ; undefined
     d04:	45565245 	.inst	0x45565245 ; undefined
     d08:	333a2044 	.inst	0x333a2044 ; undefined
     d0c:	5f5f0032 	.inst	0x5f5f0032 ; undefined
     d10:	455a4953 	.inst	0x455a4953 ; undefined
     d14:	4c5f464f 	.inst	0x4c5f464f ; undefined
     d18:	5f474e4f 	.inst	0x5f474e4f ; undefined
     d1c:	42554f44 	.inst	0x42554f44 ; undefined
     d20:	5f5f454c 	.inst	0x5f5f454c ; undefined
     d24:	00363120 	.inst	0x00363120 ; NYI
     d28:	42445f5f 	.inst	0x42445f5f ; undefined
     d2c:	41485f4c 	.inst	0x41485f4c ; undefined
     d30:	55515f53 	.inst	0x55515f53 ; undefined
     d34:	5f544549 	.inst	0x5f544549 ; undefined
     d38:	5f4e414e 	.inst	0x5f4e414e ; undefined
     d3c:	0031205f 	.inst	0x0031205f ; NYI
     d40:	4e495f5f 	.inst	0x4e495f5f ; undefined
     d44:	41465f54 	.inst	0x41465f54 ; undefined
     d48:	5f385453 	.inst	0x5f385453 ; undefined
     d4c:	45505954 	.inst	0x45505954 ; undefined
     d50:	69205f5f 	stgp	xzr, x23, [x26, #-1024]
     d54:	5f00746e 	.inst	0x5f00746e ; undefined
     d58:	544c465f 	.inst	0x544c465f ; undefined
     d5c:	485f3436 	ldxrh	w22, [x1]
     d60:	495f5341 	.inst	0x495f5341 ; undefined
     d64:	4e49464e 	.inst	0x4e49464e ; undefined
     d68:	5f595449 	shl	d9, d2, #25
     d6c:	0031205f 	.inst	0x0031205f ; NYI
     d70:	52415f5f 	.inst	0x52415f5f ; undefined
     d74:	45465f4d 	.inst	0x45465f4d ; undefined
     d78:	52555441 	.inst	0x52555441 ; undefined
     d7c:	56535f45 	.inst	0x56535f45 ; undefined
     d80:	49425f45 	.inst	0x49425f45 ; undefined
     d84:	5f005354 	fmls	h20, h26, v0.h[0]
     d88:	42444c5f 	.inst	0x42444c5f ; undefined
     d8c:	414d5f4c 	.inst	0x414d5f4c ; undefined
     d90:	58455f58 	ldr	x24, 8b978 <__bss_end+0x8af68>
     d94:	205f5f50 	.inst	0x205f5f50 ; undefined
     d98:	38333631 	.inst	0x38333631 ; undefined
     d9c:	5f5f0034 	.inst	0x5f5f0034 ; undefined
     da0:	4d544e49 	.inst	0x4d544e49 ; undefined
     da4:	545f5841 	b.ne	bf8ac <__bss_end+0xbee9c>  // b.any
     da8:	5f455059 	.inst	0x5f455059 ; undefined
     dac:	6f6c205f 	umlal2	v31.4s, v2.8h, v12.h[2]
     db0:	6920676e 	stgp	x14, x25, [x27, #-1024]
     db4:	5f00746e 	.inst	0x5f00746e ; undefined
     db8:	544e495f 	.inst	0x544e495f ; undefined
     dbc:	5f525450 	shl	d16, d2, #18
     dc0:	45505954 	.inst	0x45505954 ; undefined
     dc4:	6c205f5f 	stnp	d31, d23, [x26, #-512]
     dc8:	20676e6f 	.inst	0x20676e6f ; undefined
     dcc:	00746e69 	.inst	0x00746e69 ; undefined
     dd0:	45445f5f 	.inst	0x45445f5f ; undefined
     dd4:	5f343643 	.inst	0x5f343643 ; undefined
     dd8:	5f58414d 	.inst	0x5f58414d ; undefined
     ddc:	2e39205f 	usubl	v31.8h, v2.8b, v25.8b
     de0:	39393939 	strb	w25, [x9, #3662]
     de4:	39393939 	strb	w25, [x9, #3662]
     de8:	39393939 	strb	w25, [x9, #3662]
     dec:	45393939 	.inst	0x45393939 ; undefined
     df0:	44343833 	.inst	0x44343833 ; undefined
     df4:	5f5f0044 	.inst	0x5f5f0044 ; undefined
     df8:	5f4d5241 	.inst	0x5f4d5241 ; undefined
     dfc:	54414546 	b.vs	836a4 <__bss_end+0x82c94>
     e00:	5f455255 	.inst	0x5f455255 ; undefined
     e04:	56494449 	.inst	0x56494449 ; undefined
     e08:	5f003120 	.inst	0x5f003120 ; undefined
     e0c:	4843575f 	ldxrh	wzr, [x26]
     e10:	4d5f5241 	.inst	0x4d5f5241 ; undefined
     e14:	5f5f4e49 	.inst	0x5f5f4e49 ; undefined
     e18:	00553020 	.inst	0x00553020 ; undefined
     e1c:	5f41565f 	shl	d31, d18, #1
     e20:	5453494c 	b.gt	a7748 <__bss_end+0xa6d38>
     e24:	4100205f 	.inst	0x4100205f ; undefined
     e28:	4d5f5855 	.inst	0x4d5f5855 ; undefined
     e2c:	534d5f55 	.inst	0x534d5f55 ; undefined
     e30:	45525f52 	.inst	0x45525f52 ; undefined
     e34:	5f5f0047 	.inst	0x5f5f0047 ; undefined
     e38:	31544c46 	adds	w6, w2, #0x513, lsl #12
     e3c:	4d5f3832 	.inst	0x4d5f3832 ; undefined
     e40:	5f544e41 	.inst	0x5f544e41 ; undefined
     e44:	5f474944 	.inst	0x5f474944 ; undefined
     e48:	3131205f 	cmn	w2, #0xc48
     e4c:	5f5f0033 	.inst	0x5f5f0033 ; undefined
     e50:	4544524f 	.inst	0x4544524f ; undefined
     e54:	494c5f52 	.inst	0x494c5f52 ; undefined
     e58:	454c5454 	.inst	0x454c5454 ; undefined
     e5c:	444e455f 	.inst	0x444e455f ; undefined
     e60:	5f4e4149 	.inst	0x5f4e4149 ; undefined
     e64:	3231205f 	orr	wsp, w2, #0xff8000
     e68:	67003433 	.inst	0x67003433 ; undefined
     e6c:	635f7465 	.inst	0x635f7465 ; undefined
     e70:	5f65726f 	sqdmlsl	s15, h19, v5.h[2]
     e74:	5f006469 	.inst	0x5f006469 ; undefined
     e78:	5a49535f 	.inst	0x5a49535f ; undefined
     e7c:	5f464f45 	.inst	0x5f464f45 ; undefined
     e80:	44525450 	.inst	0x44525450 ; undefined
     e84:	5f464649 	.inst	0x5f464649 ; undefined
     e88:	205f5f54 	.inst	0x205f5f54 ; undefined
     e8c:	5f5f0038 	.inst	0x5f5f0038 ; undefined
     e90:	31434544 	adds	w4, w10, #0xd1, lsl #12
     e94:	4d5f3832 	.inst	0x4d5f3832 ; undefined
     e98:	5f544e41 	.inst	0x5f544e41 ; undefined
     e9c:	5f474944 	.inst	0x5f474944 ; undefined
     ea0:	3433205f 	cbz	wzr, 672a8 <__bss_end+0x66898>
     ea4:	415f5f00 	.inst	0x415f5f00 ; undefined
     ea8:	465f4d52 	.inst	0x465f4d52 ; undefined
     eac:	55544145 	.inst	0x55544145 ; undefined
     eb0:	555f4552 	.inst	0x555f4552 ; undefined
     eb4:	494c414e 	.inst	0x494c414e ; undefined
     eb8:	44454e47 	.inst	0x44454e47 ; undefined
     ebc:	5f003120 	.inst	0x5f003120 ; undefined
     ec0:	544e495f 	.inst	0x544e495f ; undefined
     ec4:	545f3233 	.inst	0x545f3233 ; undefined
     ec8:	5f455059 	.inst	0x5f455059 ; undefined
     ecc:	6e69205f 	usubl2	v31.4s, v2.8h, v9.8h
     ed0:	5f5f0074 	.inst	0x5f5f0074 ; undefined
     ed4:	36544c46 	tbz	w6, #10, ffffffffffff985c <__bss_end+0xffffffffffff8e4c>
     ed8:	445f5834 	.inst	0x445f5834 ; undefined
     edc:	5f5f4749 	.inst	0x5f5f4749 ; undefined
     ee0:	00333320 	.inst	0x00333320 ; NYI
     ee4:	4c465f5f 	.inst	0x4c465f5f ; undefined
     ee8:	58343654 	ldr	x20, 695b0 <__bss_end+0x68ba0>
     eec:	5341485f 	.inst	0x5341485f ; undefined
     ef0:	4e45445f 	.inst	0x4e45445f ; undefined
     ef4:	5f4d524f 	.inst	0x5f4d524f ; undefined
     ef8:	0031205f 	.inst	0x0031205f ; NYI
     efc:	52415f5f 	.inst	0x52415f5f ; undefined
     f00:	34365f4d 	cbz	w13, 6dae8 <__bss_end+0x6d0d8>
     f04:	5f544942 	.inst	0x5f544942 ; undefined
     f08:	54415453 	.inst	0x54415453 ; undefined
     f0c:	00312045 	.inst	0x00312045 ; NYI
     f10:	52415f5f 	.inst	0x52415f5f ; undefined
     f14:	45465f4d 	.inst	0x45465f4d ; undefined
     f18:	52555441 	.inst	0x52555441 ; undefined
     f1c:	4d535f45 	.inst	0x4d535f45 ; undefined
     f20:	5f5f0033 	.inst	0x5f5f0033 ; undefined
     f24:	544e4955 	.inst	0x544e4955 ; undefined
     f28:	4d5f3233 	.inst	0x4d5f3233 ; undefined
     f2c:	5f5f5841 	.inst	0x5f5f5841 ; undefined
     f30:	66783020 	.inst	0x66783020 ; undefined
     f34:	66666666 	.inst	0x66666666 ; undefined
     f38:	55666666 	.inst	0x55666666 ; undefined
     f3c:	465f5f00 	.inst	0x465f5f00 ; undefined
     f40:	3631544c 	tbz	w12, #6, 39c8 <__bss_end+0x2fb8>
     f44:	4e45445f 	.inst	0x4e45445f ; undefined
     f48:	5f4d524f 	.inst	0x5f4d524f ; undefined
     f4c:	5f4e494d 	.inst	0x5f4e494d ; undefined
     f50:	2e35205f 	usubl	v31.8h, v2.8b, v21.8b
     f54:	34303639 	cbz	w25, 61618 <__bss_end+0x60c08>
     f58:	37343436 	tbnz	w22, #6, ffffffffffff95dc <__bss_end+0xffffffffffff8bcc>
     f5c:	39333537 	strb	w23, [x9, #3277]
     f60:	35323630 	cbnz	w16, 65624 <__bss_end+0x64c14>
     f64:	30303030 	adr	x16, 61569 <__bss_end+0x60b59>
     f68:	30303030 	adr	x16, 6156d <__bss_end+0x60b5d>
     f6c:	30303030 	adr	x16, 61571 <__bss_end+0x60b61>
     f70:	30303030 	adr	x16, 61575 <__bss_end+0x60b65>
     f74:	65303030 	.inst	0x65303030 ; undefined
     f78:	3146382d 	adds	w13, w1, #0x18e, lsl #12
     f7c:	5f5f0036 	.inst	0x5f5f0036 ; undefined
     f80:	36544c46 	tbz	w6, #10, ffffffffffff9908 <__bss_end+0xffffffffffff8ef8>
     f84:	4d5f5834 	.inst	0x4d5f5834 ; undefined
     f88:	315f4e49 	adds	w9, w18, #0x7d3, lsl #12
     f8c:	58455f30 	ldr	x16, 8bb70 <__bss_end+0x8b160>
     f90:	205f5f50 	.inst	0x205f5f50 ; undefined
     f94:	39342d28 	strb	w8, [x9, #3339]
     f98:	00293133 	.inst	0x00293133 ; NYI
     f9c:	49555f5f 	.inst	0x49555f5f ; undefined
     fa0:	465f544e 	.inst	0x465f544e ; undefined
     fa4:	38545341 	ldurb	w1, [x26, #-187]
     fa8:	58414d5f 	ldr	xzr, 83950 <__bss_end+0x82f40>
     fac:	30205f5f 	adr	xzr, 41b95 <__bss_end+0x41185>
     fb0:	66666678 	.inst	0x66666678 ; undefined
     fb4:	66666666 	.inst	0x66666666 ; undefined
     fb8:	5f005566 	.inst	0x5f005566 ; undefined
     fbc:	5641485f 	.inst	0x5641485f ; undefined
     fc0:	50535f45 	adr	x5, a7baa <__bss_end+0xa719a>
     fc4:	4c554345 	.inst	0x4c554345 ; undefined
     fc8:	4f495441 	shl	v1.2d, v2.2d, #9
     fcc:	41535f4e 	.inst	0x41535f4e ; undefined
     fd0:	565f4546 	.inst	0x565f4546 ; undefined
     fd4:	45554c41 	.inst	0x45554c41 ; undefined
     fd8:	5f003120 	.inst	0x5f003120 ; undefined
     fdc:	4d52415f 	.inst	0x4d52415f ; undefined
     fe0:	4352415f 	.inst	0x4352415f ; undefined
     fe4:	41385f48 	.inst	0x41385f48 ; undefined
     fe8:	5f003120 	.inst	0x5f003120 ; undefined
     fec:	544c465f 	.inst	0x544c465f ; undefined
     ff0:	5f383231 	.inst	0x5f383231 ; undefined
     ff4:	5f58414d 	.inst	0x5f58414d ; undefined
     ff8:	455f3031 	.inst	0x455f3031 ; undefined
     ffc:	5f5f5058 	.inst	0x5f5f5058 ; undefined
    1000:	33393420 	.inst	0x33393420 ; undefined
    1004:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    1008:	31544c46 	adds	w6, w2, #0x513, lsl #12
    100c:	4d5f3832 	.inst	0x4d5f3832 ; undefined
    1010:	5f5f4e49 	.inst	0x5f5f4e49 ; undefined
    1014:	332e3320 	.inst	0x332e3320 ; undefined
    1018:	30313236 	adr	x22, 6365d <__bss_end+0x62c4d>
    101c:	33343133 	.inst	0x33343133 ; undefined
    1020:	30323131 	adr	x17, 65645 <__bss_end+0x64c35>
    1024:	30353339 	adr	x25, 6b689 <__bss_end+0x6ac79>
    1028:	32363236 	orr	w22, w17, #0x7ffc00
    102c:	38373736 	.inst	0x38373736 ; undefined
    1030:	32333731 	orr	w17, w25, #0x7ffe000
    1034:	32353731 	orr	w17, w25, #0x1fff800
    1038:	2d653036 	ldp	s22, s12, [x1, #-216]
    103c:	32333934 	orr	w20, w9, #0xfffe000
    1040:	38323146 	ldsetb	w18, w6, [x10]
    1044:	58554100 	ldr	x0, ab864 <__bss_end+0xaae54>
    1048:	5f554d5f 	.inst	0x5f554d5f ; undefined
    104c:	41524353 	.inst	0x41524353 ; undefined
    1050:	00484354 	.inst	0x00484354 ; undefined
    1054:	4c465f5f 	.inst	0x4c465f5f ; undefined
    1058:	5f343654 	.inst	0x5f343654 ; undefined
    105c:	5f4e494d 	.inst	0x5f4e494d ; undefined
    1060:	455f3031 	.inst	0x455f3031 ; undefined
    1064:	5f5f5058 	.inst	0x5f5f5058 ; undefined
    1068:	332d2820 	.inst	0x332d2820 ; undefined
    106c:	00293730 	.inst	0x00293730 ; NYI
    1070:	42445f5f 	.inst	0x42445f5f ; undefined
    1074:	414d5f4c 	.inst	0x414d5f4c ; undefined
    1078:	205f5f58 	.inst	0x205f5f58 ; undefined
    107c:	6f642828 	umlal2	v8.4s, v1.8h, v4.h[6]
    1080:	656c6275 	fnmls	z21.h, p0/m, z19.h, z12.h
    1084:	372e3129 	tbnz	w9, #5, ffffffffffffd6a8 <__bss_end+0xffffffffffffcc98>
    1088:	39363739 	strb	w25, [x25, #3469]
    108c:	34333133 	cbz	w19, 676b0 <__bss_end+0x66ca0>
    1090:	33323638 	.inst	0x33323638 ; undefined
    1094:	30373531 	adr	x17, 6f739 <__bss_end+0x6ed29>
    1098:	35343138 	cbnz	w24, 696bc <__bss_end+0x68cac>
    109c:	32343732 	orr	w18, w25, #0x3fff000
    10a0:	31333733 	adds	w19, w25, #0xccd
    10a4:	33343037 	.inst	0x33343037 ; undefined
    10a8:	2b653735 	.inst	0x2b653735 ; undefined
    10ac:	4c383033 	.inst	0x4c383033 ; undefined
    10b0:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    10b4:	5f464c45 	.inst	0x5f464c45 ; undefined
    10b8:	0031205f 	.inst	0x0031205f ; NYI
    10bc:	4e495f5f 	.inst	0x4e495f5f ; undefined
    10c0:	41465f54 	.inst	0x41465f54 ; undefined
    10c4:	36315453 	tbz	w19, #6, 3b4c <__bss_end+0x313c>
    10c8:	5059545f 	adr	xzr, b3b52 <__bss_end+0xb3142>
    10cc:	205f5f45 	.inst	0x205f5f45 ; undefined
    10d0:	00746e69 	.inst	0x00746e69 ; undefined
    10d4:	4c465f5f 	.inst	0x4c465f5f ; undefined
    10d8:	5f363154 	.inst	0x5f363154 ; undefined
    10dc:	5f4e494d 	.inst	0x5f4e494d ; undefined
    10e0:	5f505845 	.inst	0x5f505845 ; undefined
    10e4:	2d28205f 	stp	s31, s8, [x2, #-192]
    10e8:	00293331 	.inst	0x00293331 ; NYI
    10ec:	4c465f5f 	.inst	0x4c465f5f ; undefined
    10f0:	5f323354 	.inst	0x5f323354 ; undefined
    10f4:	49434544 	.inst	0x49434544 ; undefined
    10f8:	5f4c414d 	.inst	0x5f4c414d ; undefined
    10fc:	5f474944 	.inst	0x5f474944 ; undefined
    1100:	0039205f 	.inst	0x0039205f ; NYI
    1104:	4c465f5f 	.inst	0x4c465f5f ; undefined
    1108:	38323154 	ldsetb	w18, w20, [x10]
    110c:	4749445f 	.inst	0x4749445f ; undefined
    1110:	33205f5f 	.inst	0x33205f5f ; undefined
    1114:	5f5f0033 	.inst	0x5f5f0033 ; undefined
    1118:	544e4955 	.inst	0x544e4955 ; undefined
    111c:	545f3631 	.inst	0x545f3631 ; undefined
    1120:	5f455059 	.inst	0x5f455059 ; undefined
    1124:	6873205f 	.inst	0x6873205f ; undefined
    1128:	2074726f 	.inst	0x2074726f ; undefined
    112c:	69736e75 	ldpsw	x21, x27, [x19, #-104]
    1130:	64656e67 	.inst	0x64656e67 ; undefined
    1134:	746e6920 	.inst	0x746e6920 ; undefined
    1138:	4c5f5f00 	.inst	0x4c5f5f00 ; undefined
    113c:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    1140:	5f58414d 	.inst	0x5f58414d ; undefined
    1144:	2e31205f 	usubl	v31.8h, v2.8b, v17.8b
    1148:	37393831 	tbnz	w17, #7, 384c <__bss_end+0x2e3c>
    114c:	39343133 	strb	w19, [x9, #3340]
    1150:	37353335 	tbnz	w21, #6, ffffffffffffb7b4 <__bss_end+0xffffffffffffada4>
    1154:	37313332 	tbnz	w18, #6, 37b8 <__bss_end+0x2da8>
    1158:	38303536 	.inst	0x38303536 ; undefined
    115c:	39353735 	strb	w21, [x25, #3405]
    1160:	36363233 	tbz	w19, #6, ffffffffffffd7a4 <__bss_end+0xffffffffffffcd94>
    1164:	30303832 	adr	x18, 61869 <__bss_end+0x60e59>
    1168:	65323037 	.inst	0x65323037 ; undefined
    116c:	3339342b 	.inst	0x3339342b ; undefined
    1170:	5f004c32 	.inst	0x5f004c32 ; undefined
    1174:	4843575f 	ldxrh	wzr, [x26]
    1178:	575f5241 	.inst	0x575f5241 ; undefined
    117c:	48544449 	ldxrh	w9, [x2]
    1180:	33205f5f 	.inst	0x33205f5f ; undefined
    1184:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    1188:	5f434347 	.inst	0x5f434347 ; undefined
    118c:	4d4f5441 	.inst	0x4d4f5441 ; undefined
    1190:	435f4349 	.inst	0x435f4349 ; undefined
    1194:	5f524148 	.inst	0x5f524148 ; undefined
    1198:	4b434f4c 	sub	w12, w26, w3, lsr #19
    119c:	4552465f 	.inst	0x4552465f ; undefined
    11a0:	00322045 	.inst	0x00322045 ; NYI
    11a4:	52415f5f 	.inst	0x52415f5f ; undefined
    11a8:	45465f4d 	.inst	0x45465f4d ; undefined
    11ac:	52555441 	.inst	0x52555441 ; undefined
    11b0:	4c435f45 	.inst	0x4c435f45 ; undefined
    11b4:	0031205a 	.inst	0x0031205a ; NYI
    11b8:	4f4c5f5f 	.inst	0x4f4c5f5f ; undefined
    11bc:	4c5f474e 	.inst	0x4c5f474e ; undefined
    11c0:	5f474e4f 	.inst	0x5f474e4f ; undefined
    11c4:	5f58414d 	.inst	0x5f58414d ; undefined
    11c8:	7830205f 	steorh	w16, [x2]
    11cc:	66666637 	.inst	0x66666637 ; undefined
    11d0:	66666666 	.inst	0x66666666 ; undefined
    11d4:	66666666 	.inst	0x66666666 ; undefined
    11d8:	66666666 	.inst	0x66666666 ; undefined
    11dc:	5f004c4c 	.inst	0x5f004c4c ; undefined
    11e0:	4d52415f 	.inst	0x4d52415f ; undefined
    11e4:	494c415f 	.inst	0x494c415f ; undefined
    11e8:	4d5f4e47 	.inst	0x4d5f4e47 ; undefined
    11ec:	505f5841 	adr	x1, bfcf6 <__bss_end+0xbf2e6>
    11f0:	32205257 	orr	w23, w18, #0x1fffff
    11f4:	5f5f0038 	.inst	0x5f5f0038 ; undefined
    11f8:	544e4955 	.inst	0x544e4955 ; undefined
    11fc:	41454c5f 	.inst	0x41454c5f ; undefined
    1200:	36315453 	tbz	w19, #6, 3c88 <__bss_end+0x3278>
    1204:	5059545f 	adr	xzr, b3c8e <__bss_end+0xb327e>
    1208:	205f5f45 	.inst	0x205f5f45 ; undefined
    120c:	726f6873 	.inst	0x726f6873 ; undefined
    1210:	6e752074 	usubl2	v20.4s, v3.8h, v21.8h
    1214:	6e676973 	.inst	0x6e676973 ; undefined
    1218:	69206465 	stgp	x5, x25, [x3, #-1024]
    121c:	5f00746e 	.inst	0x5f00746e ; undefined
    1220:	544c465f 	.inst	0x544c465f ; undefined
    1224:	58414d5f 	ldr	xzr, 83bcc <__bss_end+0x831bc>
    1228:	5f30315f 	.inst	0x5f30315f ; undefined
    122c:	5f505845 	.inst	0x5f505845 ; undefined
    1230:	3833205f 	steorb	w19, [x2]
    1234:	4c5f5f00 	.inst	0x4c5f5f00 ; undefined
    1238:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    123c:	49535045 	.inst	0x49535045 ; undefined
    1240:	5f4e4f4c 	.inst	0x5f4e4f4c ; undefined
    1244:	2e31205f 	usubl	v31.8h, v2.8b, v17.8b
    1248:	39353239 	strb	w25, [x17, #3404]
    124c:	34393932 	cbz	w18, 73970 <__bss_end+0x72f60>
    1250:	37383334 	tbnz	w20, #7, 18b4 <__bss_end+0xea4>
    1254:	38353332 	ldsetb	w21, w18, [x25]
    1258:	35303335 	cbnz	w21, 618bc <__bss_end+0x60eac>
    125c:	37373935 	tbnz	w21, #6, fffffffffffff980 <__bss_end+0xffffffffffffef70>
    1260:	35323439 	cbnz	w25, 658e4 <__bss_end+0x64ed4>
    1264:	32393438 	orr	w24, w1, #0x1fff80
    1268:	65323337 	.inst	0x65323337 ; undefined
    126c:	4c34332d 	.inst	0x4c34332d ; undefined
    1270:	415f5f00 	.inst	0x415f5f00 ; undefined
    1274:	465f4d52 	.inst	0x465f4d52 ; undefined
    1278:	55544145 	.inst	0x55544145 ; undefined
    127c:	535f4552 	.inst	0x535f4552 ; undefined
    1280:	5f00344d 	.inst	0x5f00344d ; undefined
    1284:	544c465f 	.inst	0x544c465f ; undefined
    1288:	5f583233 	sqdmlal	s19, h17, v8.h[1]
    128c:	49535045 	.inst	0x49535045 ; undefined
    1290:	5f4e4f4c 	.inst	0x5f4e4f4c ; undefined
    1294:	2e32205f 	usubl	v31.8h, v2.8b, v18.8b
    1298:	34303232 	cbz	w18, 618dc <__bss_end+0x60ecc>
    129c:	34303634 	cbz	w20, 61960 <__bss_end+0x60f50>
    12a0:	30353239 	adr	x25, 6b8e5 <__bss_end+0x6aed5>
    12a4:	30333133 	adr	x19, 678c9 <__bss_end+0x66eb9>
    12a8:	34383038 	cbz	w24, 718ac <__bss_end+0x70e9c>
    12ac:	33363237 	.inst	0x33363237 ; undefined
    12b0:	31363333 	adds	w19, w25, #0xd8c
    12b4:	34363138 	cbz	w24, 6d8d8 <__bss_end+0x6cec8>
    12b8:	65323630 	.inst	0x65323630 ; undefined
    12bc:	4636312d 	.inst	0x4636312d ; undefined
    12c0:	00783233 	.inst	0x00783233 ; undefined
    12c4:	4c465f5f 	.inst	0x4c465f5f ; undefined
    12c8:	5f363154 	.inst	0x5f363154 ; undefined
    12cc:	5f58414d 	.inst	0x5f58414d ; undefined
    12d0:	5f505845 	.inst	0x5f505845 ; undefined
    12d4:	3631205f 	tbz	wzr, #6, 36dc <__bss_end+0x2ccc>
    12d8:	495f5f00 	.inst	0x495f5f00 ; undefined
    12dc:	465f544e 	.inst	0x465f544e ; undefined
    12e0:	31545341 	adds	w1, w26, #0x514, lsl #12
    12e4:	49575f36 	.inst	0x49575f36 ; undefined
    12e8:	5f485444 	shl	d4, d2, #8
    12ec:	3233205f 	orr	wsp, w2, #0x3fe000
    12f0:	58554100 	ldr	x0, abb10 <__bss_end+0xab100>
    12f4:	5f554d5f 	.inst	0x5f554d5f ; undefined
    12f8:	44554142 	.inst	0x44554142 ; undefined
    12fc:	4745525f 	.inst	0x4745525f ; undefined
    1300:	495f5f00 	.inst	0x495f5f00 ; undefined
    1304:	414d544e 	.inst	0x414d544e ; undefined
    1308:	414d5f58 	.inst	0x414d5f58 ; undefined
    130c:	205f5f58 	.inst	0x205f5f58 ; undefined
    1310:	66377830 	.inst	0x66377830 ; undefined
    1314:	66666666 	.inst	0x66666666 ; undefined
    1318:	66666666 	.inst	0x66666666 ; undefined
    131c:	66666666 	.inst	0x66666666 ; undefined
    1320:	004c6666 	.inst	0x004c6666 ; undefined
    1324:	494c5f5f 	.inst	0x494c5f5f ; undefined
    1328:	4f52414e 	.inst	0x4f52414e ; undefined
    132c:	4c45525f 	.inst	0x4c45525f ; undefined
    1330:	45534145 	.inst	0x45534145 ; undefined
    1334:	32205f5f 	orr	wsp, w26, #0xffffff
    1338:	30383130 	adr	x16, 7195d <__bss_end+0x70f4d>
    133c:	5f5f0038 	.inst	0x5f5f0038 ; undefined
    1340:	36544c46 	tbz	w6, #10, ffffffffffff9cc8 <__bss_end+0xffffffffffff92b8>
    1344:	45445f34 	.inst	0x45445f34 ; undefined
    1348:	414d4943 	.inst	0x414d4943 ; undefined
    134c:	49445f4c 	.inst	0x49445f4c ; undefined
    1350:	205f5f47 	.inst	0x205f5f47 ; undefined
    1354:	5f003731 	.inst	0x5f003731 ; undefined
    1358:	4745525f 	.inst	0x4745525f ; undefined
    135c:	45545349 	.inst	0x45545349 ; undefined
    1360:	52505f52 	.inst	0x52505f52 ; undefined
    1364:	58494645 	ldr	x5, 93c2c <__bss_end+0x9321c>
    1368:	00205f5f 	.inst	0x00205f5f ; NYI
    136c:	49535f5f 	.inst	0x49535f5f ; undefined
    1370:	545f455a 	.inst	0x545f455a ; undefined
    1374:	5f455059 	.inst	0x5f455059 ; undefined
    1378:	6f6c205f 	umlal2	v31.4s, v2.8h, v12.h[2]
    137c:	7520676e 	.inst	0x7520676e ; undefined
    1380:	6769736e 	.inst	0x6769736e ; undefined
    1384:	2064656e 	.inst	0x2064656e ; undefined
    1388:	00746e69 	.inst	0x00746e69 ; undefined
    138c:	5f585541 	shl	d1, d10, #24
    1390:	42414e45 	.inst	0x42414e45 ; undefined
    1394:	0053454c 	.inst	0x0053454c ; undefined
    1398:	49555f5f 	.inst	0x49555f5f ; undefined
    139c:	465f544e 	.inst	0x465f544e ; undefined
    13a0:	31545341 	adds	w1, w26, #0x514, lsl #12
    13a4:	414d5f36 	.inst	0x414d5f36 ; undefined
    13a8:	205f5f58 	.inst	0x205f5f58 ; undefined
    13ac:	66667830 	.inst	0x66667830 ; undefined
    13b0:	66666666 	.inst	0x66666666 ; undefined
    13b4:	00556666 	.inst	0x00556666 ; undefined
    13b8:	49555f5f 	.inst	0x49555f5f ; undefined
    13bc:	465f544e 	.inst	0x465f544e ; undefined
    13c0:	31545341 	adds	w1, w26, #0x514, lsl #12
    13c4:	59545f36 	.inst	0x59545f36 ; undefined
    13c8:	5f5f4550 	.inst	0x5f5f4550 ; undefined
    13cc:	736e7520 	.inst	0x736e7520 ; undefined
    13d0:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
    13d4:	6e692064 	usubl2	v4.4s, v3.8h, v9.8h
    13d8:	5f5f0074 	.inst	0x5f5f0074 ; undefined
    13dc:	31544c46 	adds	w6, w2, #0x513, lsl #12
    13e0:	494d5f36 	.inst	0x494d5f36 ; undefined
    13e4:	205f5f4e 	.inst	0x205f5f4e ; undefined
    13e8:	30312e36 	adr	x22, 639ad <__bss_end+0x62f9d>
    13ec:	35313533 	cbnz	w19, 63a90 <__bss_end+0x63080>
    13f0:	30353236 	adr	x22, 6ba35 <__bss_end+0x6b025>
    13f4:	30303030 	adr	x16, 619f9 <__bss_end+0x60fe9>
    13f8:	30303030 	adr	x16, 619fd <__bss_end+0x60fed>
    13fc:	30303030 	adr	x16, 61a01 <__bss_end+0x60ff1>
    1400:	30303030 	adr	x16, 61a05 <__bss_end+0x60ff5>
    1404:	30303030 	adr	x16, 61a09 <__bss_end+0x60ff9>
    1408:	30303030 	adr	x16, 61a0d <__bss_end+0x60ffd>
    140c:	352d6530 	cbnz	w16, 5c0b0 <__bss_end+0x5b6a0>
    1410:	00363146 	.inst	0x00363146 ; NYI
    1414:	42445f5f 	.inst	0x42445f5f ; undefined
    1418:	494d5f4c 	.inst	0x494d5f4c ; undefined
    141c:	30315f4e 	adr	x14, 64005 <__bss_end+0x635f5>
    1420:	5058455f 	adr	xzr, b1cca <__bss_end+0xb12ba>
    1424:	28205f5f 	stnp	wzr, w23, [x26, #-256]
    1428:	3730332d 	tbnz	w13, #6, 1a8c <__bss_end+0x107c>
    142c:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    1430:	33544c46 	.inst	0x33544c46 ; undefined
    1434:	494d5f32 	.inst	0x494d5f32 ; undefined
    1438:	58455f4e 	ldr	x14, 8c020 <__bss_end+0x8b610>
    143c:	205f5f50 	.inst	0x205f5f50 ; undefined
    1440:	32312d28 	orr	w8, w9, #0x7ff8000
    1444:	5f002935 	.inst	0x5f002935 ; undefined
    1448:	5858475f 	ldr	xzr, b1d30 <__bss_end+0xb1320>
    144c:	4942415f 	.inst	0x4942415f ; undefined
    1450:	5245565f 	.inst	0x5245565f ; undefined
    1454:	4e4f4953 	.inst	0x4e4f4953 ; undefined
    1458:	31303120 	adds	w0, w9, #0xc0c
    145c:	5f5f0033 	.inst	0x5f5f0033 ; undefined
    1460:	4c42444c 	.inst	0x4c42444c ; undefined
    1464:	4e494d5f 	.inst	0x4e494d5f ; undefined
    1468:	5f30315f 	.inst	0x5f30315f ; undefined
    146c:	5f505845 	.inst	0x5f505845 ; undefined
    1470:	2d28205f 	stp	s31, s8, [x2, #-192]
    1474:	31333934 	adds	w20, w9, #0xcce
    1478:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    147c:	5f544c46 	.inst	0x5f544c46 ; undefined
    1480:	4c415645 	.inst	0x4c415645 ; undefined
    1484:	54454d5f 	.inst	0x54454d5f ; undefined
    1488:	5f444f48 	.inst	0x5f444f48 ; undefined
    148c:	5f393943 	.inst	0x5f393943 ; undefined
    1490:	5f5f005f 	.inst	0x5f5f005f ; undefined
    1494:	33544c46 	.inst	0x33544c46 ; undefined
    1498:	49445f32 	.inst	0x49445f32 ; undefined
    149c:	205f5f47 	.inst	0x205f5f47 ; undefined
    14a0:	5f5f0036 	.inst	0x5f5f0036 ; undefined
    14a4:	36544c46 	tbz	w6, #10, ffffffffffff9e2c <__bss_end+0xffffffffffff941c>
    14a8:	41485f34 	.inst	0x41485f34 ; undefined
    14ac:	45445f53 	.inst	0x45445f53 ; undefined
    14b0:	4d524f4e 	.inst	0x4d524f4e ; undefined
    14b4:	31205f5f 	cmn	w26, #0x817
    14b8:	465f5f00 	.inst	0x465f5f00 ; undefined
    14bc:	455f544c 	.inst	0x455f544c ; undefined
    14c0:	5f4c4156 	.inst	0x5f4c4156 ; undefined
    14c4:	4854454d 	ldxrh	w13, [x10]
    14c8:	5f5f444f 	.inst	0x5f5f444f ; undefined
    14cc:	5f003020 	.inst	0x5f003020 ; undefined
    14d0:	544c465f 	.inst	0x544c465f ; undefined
    14d4:	5f583233 	sqdmlal	s19, h17, v8.h[1]
    14d8:	5f534148 	.inst	0x5f534148 ; undefined
    14dc:	4f4e4544 	.inst	0x4f4e4544 ; undefined
    14e0:	5f5f4d52 	.inst	0x5f5f4d52 ; undefined
    14e4:	5f003120 	.inst	0x5f003120 ; undefined
    14e8:	4d52415f 	.inst	0x4d52415f ; undefined
    14ec:	4145465f 	.inst	0x4145465f ; undefined
    14f0:	45525554 	.inst	0x45525554 ; undefined
    14f4:	5345415f 	.inst	0x5345415f ; undefined
    14f8:	495f5f00 	.inst	0x495f5f00 ; undefined
    14fc:	414d544e 	.inst	0x414d544e ; undefined
    1500:	28435f58 	ldnp	w24, w23, [x26, #24]
    1504:	63202963 	.inst	0x63202963 ; undefined
    1508:	20232320 	.inst	0x20232320 ; undefined
    150c:	5f5f004c 	.inst	0x5f5f004c ; undefined
    1510:	544e4955 	.inst	0x544e4955 ; undefined
    1514:	5341465f 	.inst	0x5341465f ; undefined
    1518:	545f3854 	.inst	0x545f3854 ; undefined
    151c:	5f455059 	.inst	0x5f455059 ; undefined
    1520:	6e75205f 	usubl2	v31.4s, v2.8h, v21.8h
    1524:	6e676973 	.inst	0x6e676973 ; undefined
    1528:	69206465 	stgp	x5, x25, [x3, #-1024]
    152c:	5f00746e 	.inst	0x5f00746e ; undefined
    1530:	4345445f 	.inst	0x4345445f ; undefined
    1534:	4d5f3436 	.inst	0x4d5f3436 ; undefined
    1538:	455f4e49 	.inst	0x455f4e49 ; undefined
    153c:	5f5f5058 	.inst	0x5f5f5058 ; undefined
    1540:	332d2820 	.inst	0x332d2820 ; undefined
    1544:	00293238 	.inst	0x00293238 ; NYI
    1548:	656e5f5f 	fnmla	z31.h, p7/m, z26.h, z14.h
    154c:	5f5f6465 	.inst	0x5f5f6465 ; undefined
    1550:	5f61765f 	sqshl	d31, d18, #33
    1554:	7473696c 	.inst	0x7473696c ; undefined
    1558:	495f5f00 	.inst	0x495f5f00 ; undefined
    155c:	4c5f544e 	.inst	0x4c5f544e ; undefined
    1560:	54534145 	b.pl	a7d88 <__bss_end+0xa7378>  // b.nfrst
    1564:	4d5f3436 	.inst	0x4d5f3436 ; undefined
    1568:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    156c:	37783020 	tbnz	w0, #15, 1b70 <__bss_end+0x1160>
    1570:	66666666 	.inst	0x66666666 ; undefined
    1574:	66666666 	.inst	0x66666666 ; undefined
    1578:	66666666 	.inst	0x66666666 ; undefined
    157c:	4c666666 	.inst	0x4c666666 ; undefined
    1580:	495f5f00 	.inst	0x495f5f00 ; undefined
    1584:	4c5f544e 	.inst	0x4c5f544e ; undefined
    1588:	54534145 	b.pl	a7db0 <__bss_end+0xa73a0>  // b.nfrst
    158c:	49575f38 	.inst	0x49575f38 ; undefined
    1590:	5f485444 	shl	d4, d2, #8
    1594:	0038205f 	.inst	0x0038205f ; NYI
    1598:	655f6176 	fcmne	p6.h, p0/z, z11.h, z31.h
    159c:	7628646e 	.inst	0x7628646e ; undefined
    15a0:	5f5f2029 	.inst	0x5f5f2029 ; undefined
    15a4:	6c697562 	ldnp	d2, d29, [x11, #-368]
    15a8:	5f6e6974 	.inst	0x5f6e6974 ; undefined
    15ac:	655f6176 	fcmne	p6.h, p0/z, z11.h, z31.h
    15b0:	7628646e 	.inst	0x7628646e ; undefined
    15b4:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    15b8:	544e4955 	.inst	0x544e4955 ; undefined
    15bc:	414d5f38 	.inst	0x414d5f38 ; undefined
    15c0:	205f5f58 	.inst	0x205f5f58 ; undefined
    15c4:	66667830 	.inst	0x66667830 ; undefined
    15c8:	765f5f00 	.inst	0x765f5f00 ; undefined
    15cc:	696c5f61 	ldpsw	x1, x23, [x27, #-160]
    15d0:	5f5f7473 	sqshl	d19, d3, #31
    15d4:	5f5f0020 	.inst	0x5f5f0020 ; undefined
    15d8:	544e4955 	.inst	0x544e4955 ; undefined
    15dc:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    15e0:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    15e4:	66783020 	.inst	0x66783020 ; undefined
    15e8:	00666666 	.inst	0x00666666 ; undefined
    15ec:	5f585541 	shl	d1, d10, #24
    15f0:	535f554d 	.inst	0x535f554d ; undefined
    15f4:	5f544154 	.inst	0x5f544154 ; undefined
    15f8:	00474552 	.inst	0x00474552 ; undefined
    15fc:	4e495f5f 	.inst	0x4e495f5f ; undefined
    1600:	41465f54 	.inst	0x41465f54 ; undefined
    1604:	34365453 	cbz	w19, 6e08c <__bss_end+0x6d67c>
    1608:	5059545f 	adr	xzr, b4092 <__bss_end+0xb3682>
    160c:	205f5f45 	.inst	0x205f5f45 ; undefined
    1610:	676e6f6c 	.inst	0x676e6f6c ; undefined
    1614:	746e6920 	.inst	0x746e6920 ; undefined
    1618:	415f5f00 	.inst	0x415f5f00 ; undefined
    161c:	425f4d52 	.inst	0x425f4d52 ; undefined
    1620:	455f4749 	.inst	0x455f4749 ; undefined
    1624:	4149444e 	.inst	0x4149444e ; undefined
    1628:	5f5f004e 	.inst	0x5f5f004e ; undefined
    162c:	4d544e49 	.inst	0x4d544e49 ; undefined
    1630:	575f5841 	.inst	0x575f5841 ; undefined
    1634:	48544449 	ldxrh	w9, [x2]
    1638:	36205f5f 	tbz	wzr, #4, 2220 <__bss_end+0x1810>
    163c:	5f5f0034 	.inst	0x5f5f0034 ; undefined
    1640:	33434544 	.inst	0x33434544 ; undefined
    1644:	414d5f32 	.inst	0x414d5f32 ; undefined
    1648:	205f5f58 	.inst	0x205f5f58 ; undefined
    164c:	39392e39 	strb	w25, [x17, #3659]
    1650:	39393939 	strb	w25, [x9, #3662]
    1654:	44363945 	.inst	0x44363945 ; undefined
    1658:	5f5f0046 	.inst	0x5f5f0046 ; undefined
    165c:	5f434347 	.inst	0x5f434347 ; undefined
    1660:	5f434549 	.inst	0x5f434549 ; undefined
    1664:	20393535 	.inst	0x20393535 ; undefined
    1668:	5f5f0030 	.inst	0x5f5f0030 ; undefined
    166c:	44525450 	.inst	0x44525450 ; undefined
    1670:	5f464649 	.inst	0x5f464649 ; undefined
    1674:	5f58414d 	.inst	0x5f58414d ; undefined
    1678:	7830205f 	steorh	w16, [x2]
    167c:	66666637 	.inst	0x66666637 ; undefined
    1680:	66666666 	.inst	0x66666666 ; undefined
    1684:	66666666 	.inst	0x66666666 ; undefined
    1688:	66666666 	.inst	0x66666666 ; undefined
    168c:	5f5f004c 	.inst	0x5f5f004c ; undefined
    1690:	5f544e49 	.inst	0x5f544e49 ; undefined
    1694:	5341454c 	.inst	0x5341454c ; undefined
    1698:	5f363154 	.inst	0x5f363154 ; undefined
    169c:	45505954 	.inst	0x45505954 ; undefined
    16a0:	73205f5f 	.inst	0x73205f5f ; undefined
    16a4:	74726f68 	.inst	0x74726f68 ; undefined
    16a8:	746e6920 	.inst	0x746e6920 ; undefined
    16ac:	465f5f00 	.inst	0x465f5f00 ; undefined
    16b0:	3233544c 	orr	w12, w2, #0xffffe007
    16b4:	58414d5f 	ldr	xzr, 8405c <__bss_end+0x8364c>
    16b8:	5058455f 	adr	xzr, b1f62 <__bss_end+0xb1552>
    16bc:	31205f5f 	cmn	w26, #0x817
    16c0:	5f003832 	.inst	0x5f003832 ; undefined
    16c4:	4c42445f 	.inst	0x4c42445f ; undefined
    16c8:	4749445f 	.inst	0x4749445f ; undefined
    16cc:	31205f5f 	cmn	w26, #0x817
    16d0:	5f5f0035 	.inst	0x5f5f0035 ; undefined
    16d4:	5f544e49 	.inst	0x5f544e49 ; undefined
    16d8:	5341454c 	.inst	0x5341454c ; undefined
    16dc:	4d5f3854 	.inst	0x4d5f3854 ; undefined
    16e0:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    16e4:	37783020 	tbnz	w0, #15, 1ce8 <__bss_end+0x12d8>
    16e8:	5f5f0066 	.inst	0x5f5f0066 ; undefined
    16ec:	3436504c 	cbz	w12, 6e0f4 <__bss_end+0x6d6e4>
    16f0:	31205f5f 	cmn	w26, #0x817
    16f4:	475f5f00 	.inst	0x475f5f00 ; undefined
    16f8:	415f4343 	.inst	0x415f4343 ; undefined
    16fc:	494d4f54 	.inst	0x494d4f54 ; undefined
    1700:	4f4c5f43 	.inst	0x4f4c5f43 ; undefined
    1704:	4c5f474e 	.inst	0x4c5f474e ; undefined
    1708:	5f4b434f 	.inst	0x5f4b434f ; undefined
    170c:	45455246 	.inst	0x45455246 ; undefined
    1710:	5f003220 	.inst	0x5f003220 ; undefined
    1714:	544c465f 	.inst	0x544c465f ; undefined
    1718:	5f583233 	sqdmlal	s19, h17, v8.h[1]
    171c:	5f474944 	.inst	0x5f474944 ; undefined
    1720:	3531205f 	cbnz	wzr, 63b28 <__bss_end+0x63118>
    1724:	465f5f00 	.inst	0x465f5f00 ; undefined
    1728:	3233544c 	orr	w12, w2, #0xffffe007
    172c:	414d5f58 	.inst	0x414d5f58 ; undefined
    1730:	445f544e 	.inst	0x445f544e ; undefined
    1734:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    1738:	00333520 	.inst	0x00333520 ; NYI
    173c:	4c465f5f 	.inst	0x4c465f5f ; undefined
    1740:	58343654 	ldr	x20, 69e08 <__bss_end+0x693f8>
    1744:	5341485f 	.inst	0x5341485f ; undefined
    1748:	4955515f 	.inst	0x4955515f ; undefined
    174c:	4e5f5445 	.inst	0x4e5f5445 ; undefined
    1750:	5f5f4e41 	.inst	0x5f5f4e41 ; undefined
    1754:	5f003120 	.inst	0x5f003120 ; undefined
    1758:	3436504c 	cbz	w12, 6e160 <__bss_end+0x6d750>
    175c:	6c003120 	stnp	d0, d12, [x9]
    1760:	20676e6f 	.inst	0x20676e6f ; undefined
    1764:	676e6f6c 	.inst	0x676e6f6c ; undefined
    1768:	746e6920 	.inst	0x746e6920 ; undefined
    176c:	435f5f00 	.inst	0x435f5f00 ; undefined
    1770:	5f524148 	.inst	0x5f524148 ; undefined
    1774:	5f544942 	.inst	0x5f544942 ; undefined
    1778:	0038205f 	.inst	0x0038205f ; NYI
    177c:	42445f5f 	.inst	0x42445f5f ; undefined
    1780:	494d5f4c 	.inst	0x494d5f4c ; undefined
    1784:	205f5f4e 	.inst	0x205f5f4e ; undefined
    1788:	6f642828 	umlal2	v8.4s, v1.8h, v4.h[6]
    178c:	656c6275 	fnmls	z21.h, p0/m, z19.h, z12.h
    1790:	322e3229 	orr	w9, w17, #0x7ffc0000
    1794:	37303532 	tbnz	w18, #6, 1e38 <__bss_end+0x1428>
    1798:	38353833 	.inst	0x38353833 ; undefined
    179c:	32373035 	orr	w21, w1, #0x3ffe00
    17a0:	38333130 	ldsetb	w19, w16, [x9]
    17a4:	30393033 	adr	x19, 73da9 <__bss_end+0x73399>
    17a8:	37323332 	tbnz	w18, #6, 5e0c <__bss_end+0x53fc>
    17ac:	33333731 	.inst	0x33333731 ; undefined
    17b0:	34303432 	cbz	w18, 61e34 <__bss_end+0x61424>
    17b4:	2d653630 	ldp	s16, s13, [x17, #-216]
    17b8:	4c383033 	.inst	0x4c383033 ; undefined
    17bc:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    17c0:	5f4d5241 	.inst	0x5f4d5241 ; undefined
    17c4:	5f005046 	fmls	h6, h2, v0.h[0]
    17c8:	4343475f 	.inst	0x4343475f ; undefined
    17cc:	4f54415f 	.inst	0x4f54415f ; undefined
    17d0:	5f43494d 	.inst	0x5f43494d ; undefined
    17d4:	4c4f4f42 	.inst	0x4c4f4f42 ; undefined
    17d8:	434f4c5f 	.inst	0x434f4c5f ; undefined
    17dc:	52465f4b 	.inst	0x52465f4b ; undefined
    17e0:	32204545 	orr	w5, w10, #0x3ffff
    17e4:	465f5f00 	.inst	0x465f5f00 ; undefined
    17e8:	54494e49 	b.ls	941b0 <__bss_end+0x937a0>  // b.plast
    17ec:	414d5f45 	.inst	0x414d5f45 ; undefined
    17f0:	4f5f4854 	.inst	0x4f5f4854 ; undefined
    17f4:	5f594c4e 	.inst	0x5f594c4e ; undefined
    17f8:	0030205f 	.inst	0x0030205f ; NYI
    17fc:	43575f5f 	.inst	0x43575f5f ; undefined
    1800:	5f524148 	.inst	0x5f524148 ; undefined
    1804:	45505954 	.inst	0x45505954 ; undefined
    1808:	75205f5f 	.inst	0x75205f5f ; undefined
    180c:	6769736e 	.inst	0x6769736e ; undefined
    1810:	2064656e 	.inst	0x2064656e ; undefined
    1814:	00746e69 	.inst	0x00746e69 ; undefined
    1818:	4c465f5f 	.inst	0x4c465f5f ; undefined
    181c:	5f343654 	.inst	0x5f343654 ; undefined
    1820:	5f58414d 	.inst	0x5f58414d ; undefined
    1824:	2e31205f 	usubl	v31.8h, v2.8b, v17.8b
    1828:	36373937 	tbz	w23, #6, ffffffffffffff4c <__bss_end+0xfffffffffffff53c>
    182c:	33313339 	.inst	0x33313339 ; undefined
    1830:	32363834 	orr	w20, w1, #0x1fffc00
    1834:	37353133 	tbnz	w19, #6, ffffffffffffbe58 <__bss_end+0xffffffffffffb448>
    1838:	34313830 	cbz	w16, 63f3c <__bss_end+0x6352c>
    183c:	34373235 	cbz	w21, 6fe80 <__bss_end+0x6f470>
    1840:	33373332 	.inst	0x33373332 ; undefined
    1844:	34303731 	cbz	w17, 61f28 <__bss_end+0x61518>
    1848:	65373533 	.inst	0x65373533 ; undefined
    184c:	3830332b 	ldsetb	w16, w11, [x25]
    1850:	00343646 	.inst	0x00343646 ; NYI
    1854:	49555f5f 	.inst	0x49555f5f ; undefined
    1858:	4c5f544e 	.inst	0x4c5f544e ; undefined
    185c:	54534145 	b.pl	a8084 <__bss_end+0xa7674>  // b.nfrst
    1860:	4d5f3436 	.inst	0x4d5f3436 ; undefined
    1864:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    1868:	66783020 	.inst	0x66783020 ; undefined
    186c:	66666666 	.inst	0x66666666 ; undefined
    1870:	66666666 	.inst	0x66666666 ; undefined
    1874:	66666666 	.inst	0x66666666 ; undefined
    1878:	55666666 	.inst	0x55666666 ; undefined
    187c:	5f5f004c 	.inst	0x5f5f004c ; undefined
    1880:	36544c46 	tbz	w6, #10, ffffffffffffa208 <__bss_end+0xffffffffffff97f8>
    1884:	4d5f5834 	.inst	0x4d5f5834 ; undefined
    1888:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    188c:	312e3120 	adds	w0, w9, #0xb8c
    1890:	33373938 	.inst	0x33373938 ; undefined
    1894:	35393431 	cbnz	w17, 73f18 <__bss_end+0x73508>
    1898:	32373533 	orr	w19, w9, #0x7ffe00
    189c:	36373133 	tbz	w19, #6, fffffffffffffec0 <__bss_end+0xfffffffffffff4b0>
    18a0:	35383035 	cbnz	w21, 71ea4 <__bss_end+0x71494>
    18a4:	33393537 	.inst	0x33393537 ; undefined
    18a8:	32363632 	orr	w18, w17, #0xfffc00
    18ac:	37303038 	tbnz	w24, #6, 1eb0 <__bss_end+0x14a0>
    18b0:	2b653230 	.inst	0x2b653230 ; undefined
    18b4:	32333934 	orr	w20, w9, #0xfffe000
    18b8:	78343646 	.inst	0x78343646 ; undefined
    18bc:	465f5f00 	.inst	0x465f5f00 ; undefined
    18c0:	3233544c 	orr	w12, w2, #0xffffe007
    18c4:	494d5f58 	.inst	0x494d5f58 ; undefined
    18c8:	205f5f4e 	.inst	0x205f5f4e ; undefined
    18cc:	32322e32 	orr	w18, w17, #0x3ffc000
    18d0:	33373035 	.inst	0x33373035 ; undefined
    18d4:	35383538 	cbnz	w24, 71f78 <__bss_end+0x71568>
    18d8:	30323730 	adr	x16, 65fbd <__bss_end+0x655ad>
    18dc:	33383331 	.inst	0x33383331 ; undefined
    18e0:	32303930 	orr	w16, w9, #0x7fff0000
    18e4:	31373233 	adds	w19, w17, #0xdcc
    18e8:	32333337 	orr	w23, w25, #0x3ffe000
    18ec:	30343034 	adr	x20, 69ef1 <__bss_end+0x694e1>
    18f0:	332d6536 	.inst	0x332d6536 ; undefined
    18f4:	33463830 	.inst	0x33463830 ; undefined
    18f8:	5f007832 	.inst	0x5f007832 ; undefined
    18fc:	4e49555f 	.inst	0x4e49555f ; undefined
    1900:	52545054 	.inst	0x52545054 ; undefined
    1904:	5059545f 	adr	xzr, b438e <__bss_end+0xb397e>
    1908:	205f5f45 	.inst	0x205f5f45 ; undefined
    190c:	676e6f6c 	.inst	0x676e6f6c ; undefined
    1910:	736e7520 	.inst	0x736e7520 ; undefined
    1914:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
    1918:	6e692064 	usubl2	v4.4s, v3.8h, v9.8h
    191c:	5f5f0074 	.inst	0x5f5f0074 ; undefined
    1920:	31544e49 	adds	w9, w18, #0x513, lsl #12
    1924:	28435f36 	ldnp	w22, w23, [x25, #24]
    1928:	63202963 	.inst	0x63202963 ; undefined
    192c:	475f5f00 	.inst	0x475f5f00 ; undefined
    1930:	485f4343 	ldxrh	w3, [x26]
    1934:	5f455641 	shl	d1, d18, #5
    1938:	52415744 	.inst	0x52415744 ; undefined
    193c:	435f3246 	.inst	0x435f3246 ; undefined
    1940:	415f4946 	.inst	0x415f4946 ; undefined
    1944:	31204d53 	adds	w19, w10, #0x813
    1948:	535f5f00 	.inst	0x535f5f00 ; undefined
    194c:	4f455a49 	.inst	0x4f455a49 ; undefined
    1950:	4c465f46 	.inst	0x4c465f46 ; undefined
    1954:	5f54414f 	.inst	0x5f54414f ; undefined
    1958:	0034205f 	.inst	0x0034205f ; NYI
    195c:	45445f5f 	.inst	0x45445f5f ; undefined
    1960:	5f323343 	.inst	0x5f323343 ; undefined
    1964:	4e425553 	.inst	0x4e425553 ; undefined
    1968:	414d524f 	.inst	0x414d524f ; undefined
    196c:	494d5f4c 	.inst	0x494d5f4c ; undefined
    1970:	205f5f4e 	.inst	0x205f5f4e ; undefined
    1974:	30302e30 	adr	x16, 61f39 <__bss_end+0x61529>
    1978:	31303030 	adds	w16, w1, #0xc0c
    197c:	35392d45 	cbnz	w5, 73f24 <__bss_end+0x73514>
    1980:	5f004644 	.inst	0x5f004644 ; undefined
    1984:	544e495f 	.inst	0x544e495f ; undefined
    1988:	5341465f 	.inst	0x5341465f ; undefined
    198c:	5f323354 	.inst	0x5f323354 ; undefined
    1990:	5f58414d 	.inst	0x5f58414d ; undefined
    1994:	7830205f 	steorh	w16, [x2]
    1998:	66666637 	.inst	0x66666637 ; undefined
    199c:	66666666 	.inst	0x66666666 ; undefined
    19a0:	415f5f00 	.inst	0x415f5f00 ; undefined
    19a4:	415f4d52 	.inst	0x415f4d52 ; undefined
    19a8:	5f484352 	.inst	0x5f484352 ; undefined
    19ac:	5f415349 	.inst	0x5f415349 ; undefined
    19b0:	20343641 	.inst	0x20343641 ; undefined
    19b4:	5f5f0031 	.inst	0x5f5f0031 ; undefined
    19b8:	5f544c46 	.inst	0x5f544c46 ; undefined
    19bc:	5f534148 	.inst	0x5f534148 ; undefined
    19c0:	49464e49 	.inst	0x49464e49 ; undefined
    19c4:	5954494e 	.inst	0x5954494e ; undefined
    19c8:	31205f5f 	cmn	w26, #0x817
    19cc:	465f5f00 	.inst	0x465f5f00 ; undefined
    19d0:	3631544c 	tbz	w12, #6, 4458 <__bss_end+0x3a48>
    19d4:	5341485f 	.inst	0x5341485f ; undefined
    19d8:	464e495f 	.inst	0x464e495f ; undefined
    19dc:	54494e49 	b.ls	943a4 <__bss_end+0x93994>  // b.plast
    19e0:	205f5f59 	.inst	0x205f5f59 ; undefined
    19e4:	5f5f0031 	.inst	0x5f5f0031 ; undefined
    19e8:	43445453 	.inst	0x43445453 ; undefined
    19ec:	31205f5f 	cmn	w26, #0x817
    19f0:	465f5f00 	.inst	0x465f5f00 ; undefined
    19f4:	4d5f544c 	.inst	0x4d5f544c ; undefined
    19f8:	5f5f4e49 	.inst	0x5f5f4e49 ; undefined
    19fc:	312e3120 	adds	w0, w9, #0xb8c
    1a00:	39343537 	strb	w23, [x9, #3341]
    1a04:	30353334 	adr	x20, 6c069 <__bss_end+0x6b659>
    1a08:	32323238 	orr	w24, w17, #0x7ffc000
    1a0c:	30353738 	adr	x24, 6c0f1 <__bss_end+0x6b6e1>
    1a10:	38363937 	.inst	0x38363937 ; undefined
    1a14:	35363337 	cbnz	w23, 6e078 <__bss_end+0x6d668>
    1a18:	32323733 	orr	w19, w25, #0xfffc000
    1a1c:	35343232 	cbnz	w18, 6a060 <__bss_end+0x69650>
    1a20:	2d653836 	ldp	s22, s14, [x1, #-216]
    1a24:	00463833 	.inst	0x00463833 ; undefined
    1a28:	42445f5f 	.inst	0x42445f5f ; undefined
    1a2c:	414d5f4c 	.inst	0x414d5f4c ; undefined
    1a30:	58455f58 	ldr	x24, 8c618 <__bss_end+0x8bc08>
    1a34:	205f5f50 	.inst	0x205f5f50 ; undefined
    1a38:	34323031 	cbz	w17, 6603c <__bss_end+0x6562c>
    1a3c:	535f5f00 	.inst	0x535f5f00 ; undefined
    1a40:	4f455a49 	.inst	0x4f455a49 ; undefined
    1a44:	4f4c5f46 	.inst	0x4f4c5f46 ; undefined
    1a48:	5f5f474e 	.inst	0x5f5f474e ; undefined
    1a4c:	5f003820 	.inst	0x5f003820 ; undefined
    1a50:	4f54415f 	.inst	0x4f54415f ; undefined
    1a54:	5f43494d 	.inst	0x5f43494d ; undefined
    1a58:	534e4f43 	.inst	0x534e4f43 ; undefined
    1a5c:	20454d55 	.inst	0x20454d55 ; undefined
    1a60:	5f5f0031 	.inst	0x5f5f0031 ; undefined
    1a64:	5f544e49 	.inst	0x5f544e49 ; undefined
    1a68:	54534146 	b.vs	a8290 <__bss_end+0xa7880>
    1a6c:	575f3233 	.inst	0x575f3233 ; undefined
    1a70:	48544449 	ldxrh	w9, [x2]
    1a74:	33205f5f 	.inst	0x33205f5f ; undefined
    1a78:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    1a7c:	36544c46 	tbz	w6, #10, ffffffffffffa404 <__bss_end+0xffffffffffff99f4>
    1a80:	4d5f5834 	.inst	0x4d5f5834 ; undefined
    1a84:	5f544e41 	.inst	0x5f544e41 ; undefined
    1a88:	5f474944 	.inst	0x5f474944 ; undefined
    1a8c:	3131205f 	cmn	w2, #0xc48
    1a90:	5f5f0033 	.inst	0x5f5f0033 ; undefined
    1a94:	544e4957 	.inst	0x544e4957 ; undefined
    1a98:	5059545f 	adr	xzr, b4522 <__bss_end+0xb3b12>
    1a9c:	205f5f45 	.inst	0x205f5f45 ; undefined
    1aa0:	69736e75 	ldpsw	x21, x27, [x19, #-104]
    1aa4:	64656e67 	.inst	0x64656e67 ; undefined
    1aa8:	746e6920 	.inst	0x746e6920 ; undefined
    1aac:	765f5f00 	.inst	0x765f5f00 ; undefined
    1ab0:	6f635f61 	.inst	0x6f635f61 ; undefined
    1ab4:	64287970 	.inst	0x64287970 ; undefined
    1ab8:	2029732c 	.inst	0x2029732c ; undefined
    1abc:	75625f5f 	.inst	0x75625f5f ; undefined
    1ac0:	69746c69 	ldpsw	x9, x27, [x3, #-96]
    1ac4:	61765f6e 	.inst	0x61765f6e ; undefined
    1ac8:	706f635f 	adr	xzr, e0733 <__bss_end+0xdfd23>
    1acc:	2c642879 	ldnp	s25, s10, [x3, #-224]
    1ad0:	5f002973 	.inst	0x5f002973 ; undefined
    1ad4:	544e495f 	.inst	0x544e495f ; undefined
    1ad8:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    1adc:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    1ae0:	37783020 	tbnz	w0, #15, 20e4 <__bss_end+0x16d4>
    1ae4:	00666666 	.inst	0x00666666 ; undefined
    1ae8:	43535f5f 	.inst	0x43535f5f ; undefined
    1aec:	5f524148 	.inst	0x5f524148 ; undefined
    1af0:	54444957 	.inst	0x54444957 ; undefined
    1af4:	205f5f48 	.inst	0x205f5f48 ; undefined
    1af8:	5f5f0038 	.inst	0x5f5f0038 ; undefined
    1afc:	544e4955 	.inst	0x544e4955 ; undefined
    1b00:	435f3233 	.inst	0x435f3233 ; undefined
    1b04:	20296328 	.inst	0x20296328 ; undefined
    1b08:	23232063 	.inst	0x23232063 ; undefined
    1b0c:	5f005520 	.inst	0x5f005520 ; undefined
    1b10:	4d52415f 	.inst	0x4d52415f ; undefined
    1b14:	5f50465f 	.inst	0x5f50465f ; undefined
    1b18:	54534146 	b.vs	a8340 <__bss_end+0xa7930>
    1b1c:	535f5f00 	.inst	0x535f5f00 ; undefined
    1b20:	4f455a49 	.inst	0x4f455a49 ; undefined
    1b24:	4f445f46 	.inst	0x4f445f46 ; undefined
    1b28:	454c4255 	.inst	0x454c4255 ; undefined
    1b2c:	38205f5f 	.inst	0x38205f5f ; undefined
    1b30:	475f5f00 	.inst	0x475f5f00 ; undefined
    1b34:	5f43554e 	shl	d14, d10, #3
    1b38:	43544150 	.inst	0x43544150 ; undefined
    1b3c:	56454c48 	.inst	0x56454c48 ; undefined
    1b40:	5f5f4c45 	.inst	0x5f5f4c45 ; undefined
    1b44:	5f003020 	.inst	0x5f003020 ; undefined
    1b48:	4e49555f 	.inst	0x4e49555f ; undefined
    1b4c:	435f3854 	.inst	0x435f3854 ; undefined
    1b50:	20296328 	.inst	0x20296328 ; undefined
    1b54:	5f5f0063 	.inst	0x5f5f0063 ; undefined
    1b58:	31544c46 	adds	w6, w2, #0x513, lsl #12
    1b5c:	45445f36 	.inst	0x45445f36 ; undefined
    1b60:	414d4943 	.inst	0x414d4943 ; undefined
    1b64:	49445f4c 	.inst	0x49445f4c ; undefined
    1b68:	205f5f47 	.inst	0x205f5f47 ; undefined
    1b6c:	5f5f0035 	.inst	0x5f5f0035 ; undefined
    1b70:	544e4957 	.inst	0x544e4957 ; undefined
    1b74:	4e494d5f 	.inst	0x4e494d5f ; undefined
    1b78:	30205f5f 	adr	xzr, 42761 <__bss_end+0x41d51>
    1b7c:	5f5f0055 	.inst	0x5f5f0055 ; undefined
    1b80:	43445453 	.inst	0x43445453 ; undefined
    1b84:	4654555f 	.inst	0x4654555f ; undefined
    1b88:	5f36315f 	.inst	0x5f36315f ; undefined
    1b8c:	0031205f 	.inst	0x0031205f ; NYI
    1b90:	444c5f5f 	.inst	0x444c5f5f ; undefined
    1b94:	485f4c42 	ldxrh	w2, [x2]
    1b98:	495f5341 	.inst	0x495f5341 ; undefined
    1b9c:	4e49464e 	.inst	0x4e49464e ; undefined
    1ba0:	5f595449 	shl	d9, d2, #25
    1ba4:	0031205f 	.inst	0x0031205f ; NYI
    1ba8:	43475f5f 	.inst	0x43475f5f ; undefined
    1bac:	45495f43 	.inst	0x45495f43 ; undefined
    1bb0:	35355f43 	cbnz	w3, 6c798 <__bss_end+0x6bd88>
    1bb4:	4f435f39 	.inst	0x4f435f39 ; undefined
    1bb8:	454c504d 	.inst	0x454c504d ; undefined
    1bbc:	00302058 	.inst	0x00302058 ; NYI
    1bc0:	4c465f5f 	.inst	0x4c465f5f ; undefined
    1bc4:	58343654 	ldr	x20, 6a28c <__bss_end+0x6987c>
    1bc8:	58414d5f 	ldr	xzr, 84570 <__bss_end+0x83b60>
    1bcc:	5f30315f 	.inst	0x5f30315f ; undefined
    1bd0:	5f505845 	.inst	0x5f505845 ; undefined
    1bd4:	3934205f 	strb	wzr, [x2, #3336]
    1bd8:	5f003233 	.inst	0x5f003233 ; undefined
    1bdc:	5a49535f 	.inst	0x5a49535f ; undefined
    1be0:	5f464f45 	.inst	0x5f464f45 ; undefined
    1be4:	41484357 	.inst	0x41484357 ; undefined
    1be8:	5f545f52 	.inst	0x5f545f52 ; undefined
    1bec:	0034205f 	.inst	0x0034205f ; NYI
    1bf0:	4c465f5f 	.inst	0x4c465f5f ; undefined
    1bf4:	38323154 	ldsetb	w18, w20, [x10]
    1bf8:	4e494d5f 	.inst	0x4e494d5f ; undefined
    1bfc:	5f30315f 	.inst	0x5f30315f ; undefined
    1c00:	5f505845 	.inst	0x5f505845 ; undefined
    1c04:	2d28205f 	stp	s31, s8, [x2, #-192]
    1c08:	31333934 	adds	w20, w9, #0xcce
    1c0c:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    1c10:	414f4c46 	.inst	0x414f4c46 ; undefined
    1c14:	4f575f54 	.inst	0x4f575f54 ; undefined
    1c18:	4f5f4452 	.inst	0x4f5f4452 ; undefined
    1c1c:	52454452 	.inst	0x52454452 ; undefined
    1c20:	5f205f5f 	.inst	0x5f205f5f ; undefined
    1c24:	44524f5f 	.inst	0x44524f5f ; undefined
    1c28:	4c5f5245 	.inst	0x4c5f5245 ; undefined
    1c2c:	4c545449 	.inst	0x4c545449 ; undefined
    1c30:	4e455f45 	.inst	0x4e455f45 ; undefined
    1c34:	4e414944 	.inst	0x4e414944 ; undefined
    1c38:	5f005f5f 	.inst	0x5f005f5f ; undefined
    1c3c:	4343475f 	.inst	0x4343475f ; undefined
    1c40:	5641485f 	.inst	0x5641485f ; undefined
    1c44:	59535f45 	.inst	0x59535f45 ; undefined
    1c48:	435f434e 	.inst	0x435f434e ; undefined
    1c4c:	41504d4f 	.inst	0x41504d4f ; undefined
    1c50:	415f4552 	.inst	0x415f4552 ; undefined
    1c54:	535f444e 	.inst	0x535f444e ; undefined
    1c58:	5f504157 	.inst	0x5f504157 ; undefined
    1c5c:	00312032 	.inst	0x00312032 ; NYI
    1c60:	45445f5f 	.inst	0x45445f5f ; undefined
    1c64:	5f323343 	.inst	0x5f323343 ; undefined
    1c68:	544e414d 	b.le	9e490 <__bss_end+0x9da80>
    1c6c:	4749445f 	.inst	0x4749445f ; undefined
    1c70:	37205f5f 	tbnz	wzr, #4, 2858 <__bss_end+0x1e48>
    1c74:	58554100 	ldr	x0, ac494 <__bss_end+0xaba84>
    1c78:	5f554d5f 	.inst	0x5f554d5f ; undefined
    1c7c:	5f52434d 	.inst	0x5f52434d ; undefined
    1c80:	00474552 	.inst	0x00474552 ; undefined
    1c84:	4c465f5f 	.inst	0x4c465f5f ; undefined
    1c88:	5f323354 	.inst	0x5f323354 ; undefined
    1c8c:	4f4e4544 	.inst	0x4f4e4544 ; undefined
    1c90:	4d5f4d52 	.inst	0x4d5f4d52 ; undefined
    1c94:	5f5f4e49 	.inst	0x5f5f4e49 ; undefined
    1c98:	342e3120 	cbz	w0, 5e2bc <__bss_end+0x5d8ac>
    1c9c:	39323130 	strb	w16, [x9, #3212]
    1ca0:	34363438 	cbz	w24, 6e324 <__bss_end+0x6d914>
    1ca4:	38343233 	ldsetb	w20, w19, [x17]
    1ca8:	37303731 	tbnz	w17, #6, 238c <__bss_end+0x197c>
    1cac:	33323930 	.inst	0x33323930 ; undefined
    1cb0:	35393237 	cbnz	w23, 742f4 <__bss_end+0x738e4>
    1cb4:	38323338 	ldsetb	w18, w24, [x25]
    1cb8:	36313939 	tbz	w25, #6, 43dc <__bss_end+0x39cc>
    1cbc:	2d653331 	ldp	s17, s12, [x25, #-216]
    1cc0:	33463534 	.inst	0x33463534 ; undefined
    1cc4:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    1cc8:	5f474953 	.inst	0x5f474953 ; undefined
    1ccc:	4d4f5441 	.inst	0x4d4f5441 ; undefined
    1cd0:	4d5f4349 	.inst	0x4d5f4349 ; undefined
    1cd4:	5f5f4e49 	.inst	0x5f5f4e49 ; undefined
    1cd8:	5f2d2820 	.inst	0x5f2d2820 ; undefined
    1cdc:	4749535f 	.inst	0x4749535f ; undefined
    1ce0:	4f54415f 	.inst	0x4f54415f ; undefined
    1ce4:	5f43494d 	.inst	0x5f43494d ; undefined
    1ce8:	5f58414d 	.inst	0x5f58414d ; undefined
    1cec:	202d205f 	.inst	0x202d205f ; undefined
    1cf0:	5f002931 	.inst	0x5f002931 ; undefined
    1cf4:	544e495f 	.inst	0x544e495f ; undefined
    1cf8:	4d5f3233 	.inst	0x4d5f3233 ; undefined
    1cfc:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    1d00:	37783020 	tbnz	w0, #15, 2304 <__bss_end+0x18f4>
    1d04:	66666666 	.inst	0x66666666 ; undefined
    1d08:	00666666 	.inst	0x00666666 ; undefined
    1d0c:	54415f5f 	.inst	0x54415f5f ; undefined
    1d10:	43494d4f 	.inst	0x43494d4f ; undefined
    1d14:	5143415f 	sub	wsp, w10, #0xd0, lsl #12
    1d18:	45524955 	.inst	0x45524955 ; undefined
    1d1c:	5f003220 	.inst	0x5f003220 ; undefined
    1d20:	4e49555f 	.inst	0x4e49555f ; undefined
    1d24:	5f363154 	.inst	0x5f363154 ; undefined
    1d28:	29632843 	ldp	w3, w10, [x2, #-232]
    1d2c:	5f006320 	.inst	0x5f006320 ; undefined
    1d30:	544e495f 	.inst	0x544e495f ; undefined
    1d34:	4d5f3436 	.inst	0x4d5f3436 ; undefined
    1d38:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    1d3c:	37783020 	tbnz	w0, #15, 2340 <__bss_end+0x1930>
    1d40:	66666666 	.inst	0x66666666 ; undefined
    1d44:	66666666 	.inst	0x66666666 ; undefined
    1d48:	66666666 	.inst	0x66666666 ; undefined
    1d4c:	4c666666 	.inst	0x4c666666 ; undefined
    1d50:	465f5f00 	.inst	0x465f5f00 ; undefined
    1d54:	3436544c 	cbz	w12, 6e7dc <__bss_end+0x6ddcc>
    1d58:	45445f58 	.inst	0x45445f58 ; undefined
    1d5c:	414d4943 	.inst	0x414d4943 ; undefined
    1d60:	49445f4c 	.inst	0x49445f4c ; undefined
    1d64:	205f5f47 	.inst	0x205f5f47 ; undefined
    1d68:	41003633 	.inst	0x41003633 ; undefined
    1d6c:	4d5f5855 	.inst	0x4d5f5855 ; undefined
    1d70:	45495f55 	.inst	0x45495f55 ; undefined
    1d74:	45525f52 	.inst	0x45525f52 ; undefined
    1d78:	5f5f0047 	.inst	0x5f5f0047 ; undefined
    1d7c:	544e4955 	.inst	0x544e4955 ; undefined
    1d80:	5f58414d 	.inst	0x5f58414d ; undefined
    1d84:	45505954 	.inst	0x45505954 ; undefined
    1d88:	6c205f5f 	stnp	d31, d23, [x26, #-512]
    1d8c:	20676e6f 	.inst	0x20676e6f ; undefined
    1d90:	69736e75 	ldpsw	x21, x27, [x19, #-104]
    1d94:	64656e67 	.inst	0x64656e67 ; undefined
    1d98:	746e6920 	.inst	0x746e6920 ; undefined
    1d9c:	465f5f00 	.inst	0x465f5f00 ; undefined
    1da0:	3631544c 	tbz	w12, #6, 4828 <__bss_end+0x3e18>
    1da4:	5341485f 	.inst	0x5341485f ; undefined
    1da8:	4e45445f 	.inst	0x4e45445f ; undefined
    1dac:	5f4d524f 	.inst	0x5f4d524f ; undefined
    1db0:	0031205f 	.inst	0x0031205f ; NYI
    1db4:	33676572 	.inst	0x33676572 ; undefined
    1db8:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    1dbc:	31434544 	adds	w4, w10, #0xd1, lsl #12
    1dc0:	4d5f3832 	.inst	0x4d5f3832 ; undefined
    1dc4:	455f5841 	.inst	0x455f5841 ; undefined
    1dc8:	5f5f5058 	.inst	0x5f5f5058 ; undefined
    1dcc:	34313620 	cbz	w0, 64490 <__bss_end+0x63a80>
    1dd0:	5f5f0035 	.inst	0x5f5f0035 ; undefined
    1dd4:	5f544c46 	.inst	0x5f544c46 ; undefined
    1dd8:	49535045 	.inst	0x49535045 ; undefined
    1ddc:	5f4e4f4c 	.inst	0x5f4e4f4c ; undefined
    1de0:	2e31205f 	usubl	v31.8h, v2.8b, v17.8b
    1de4:	30323931 	adr	x17, 66509 <__bss_end+0x65af9>
    1de8:	39383239 	strb	w25, [x17, #3596]
    1dec:	37303535 	tbnz	w21, #6, 2490 <__bss_end+0x1a80>
    1df0:	35323138 	cbnz	w24, 66414 <__bss_end+0x65a04>
    1df4:	30303030 	adr	x16, 623f9 <__bss_end+0x619e9>
    1df8:	30303030 	adr	x16, 623fd <__bss_end+0x619ed>
    1dfc:	30303030 	adr	x16, 62401 <__bss_end+0x619f1>
    1e00:	30303030 	adr	x16, 62405 <__bss_end+0x619f5>
    1e04:	65303030 	.inst	0x65303030 ; undefined
    1e08:	0046372d 	.inst	0x0046372d ; undefined
    1e0c:	49535f5f 	.inst	0x49535f5f ; undefined
    1e10:	54415f47 	b.vc	849f8 <__bss_end+0x83fe8>
    1e14:	43494d4f 	.inst	0x43494d4f ; undefined
    1e18:	4449575f 	.inst	0x4449575f ; undefined
    1e1c:	5f5f4854 	.inst	0x5f5f4854 ; undefined
    1e20:	00323320 	.inst	0x00323320 ; NYI
    1e24:	48535f5f 	ldxrh	wzr, [x26]
    1e28:	4d5f5452 	.inst	0x4d5f5452 ; undefined
    1e2c:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    1e30:	37783020 	tbnz	w0, #15, 2434 <__bss_end+0x1a24>
    1e34:	00666666 	.inst	0x00666666 ; undefined
    1e38:	43475f5f 	.inst	0x43475f5f ; undefined
    1e3c:	54415f43 	b.cc	84a24 <__bss_end+0x84014>  // b.lo, b.ul, b.last
    1e40:	43494d4f 	.inst	0x43494d4f ; undefined
    1e44:	4843575f 	ldxrh	wzr, [x26]
    1e48:	545f5241 	b.ne	c0890 <__bss_end+0xbfe80>  // b.any
    1e4c:	434f4c5f 	.inst	0x434f4c5f ; undefined
    1e50:	52465f4b 	.inst	0x52465f4b ; undefined
    1e54:	32204545 	orr	w5, w10, #0x3ffff
    1e58:	4f5f5f00 	.inst	0x4f5f5f00 ; undefined
    1e5c:	52454452 	.inst	0x52454452 ; undefined
    1e60:	5044505f 	adr	xzr, 8a86a <__bss_end+0x89e5a>
    1e64:	444e455f 	.inst	0x444e455f ; undefined
    1e68:	5f4e4149 	.inst	0x5f4e4149 ; undefined
    1e6c:	3433205f 	cbz	wzr, 68274 <__bss_end+0x67864>
    1e70:	5f003231 	.inst	0x5f003231 ; undefined
    1e74:	504c495f 	adr	xzr, 9a79e <__bss_end+0x99d8e>
    1e78:	5f5f3233 	sqdmlal	s19, h17, v15.h[1]
    1e7c:	465f5f00 	.inst	0x465f5f00 ; undefined
    1e80:	445f544c 	.inst	0x445f544c ; undefined
    1e84:	4d494345 	.inst	0x4d494345 ; undefined
    1e88:	445f4c41 	.inst	0x445f4c41 ; undefined
    1e8c:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    1e90:	5f003920 	.inst	0x5f003920 ; undefined
    1e94:	544c465f 	.inst	0x544c465f ; undefined
    1e98:	4d5f3436 	.inst	0x4d5f3436 ; undefined
    1e9c:	315f5841 	adds	w1, w2, #0x7d6, lsl #12
    1ea0:	58455f30 	ldr	x16, 8ca84 <__bss_end+0x8c074>
    1ea4:	205f5f50 	.inst	0x205f5f50 ; undefined
    1ea8:	00383033 	.inst	0x00383033 ; NYI
    1eac:	444c5f5f 	.inst	0x444c5f5f ; undefined
    1eb0:	4d5f4c42 	.inst	0x4d5f4c42 ; undefined
    1eb4:	455f4e49 	.inst	0x455f4e49 ; undefined
    1eb8:	5f5f5058 	.inst	0x5f5f5058 ; undefined
    1ebc:	312d2820 	adds	w0, w1, #0xb4a
    1ec0:	31383336 	adds	w22, w25, #0xe0c
    1ec4:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    1ec8:	544e4957 	.inst	0x544e4957 ; undefined
    1ecc:	4449575f 	.inst	0x4449575f ; undefined
    1ed0:	5f5f4854 	.inst	0x5f5f4854 ; undefined
    1ed4:	00323320 	.inst	0x00323320 ; NYI
    1ed8:	4c465f5f 	.inst	0x4c465f5f ; undefined
    1edc:	58343654 	ldr	x20, 6a5a4 <__bss_end+0x69b94>
    1ee0:	4e494d5f 	.inst	0x4e494d5f ; undefined
    1ee4:	33205f5f 	.inst	0x33205f5f ; undefined
    1ee8:	3236332e 	orr	w14, w25, #0x7ffc00
    1eec:	31333031 	adds	w17, w1, #0xccc
    1ef0:	31313334 	adds	w20, w25, #0xc4c
    1ef4:	33393032 	.inst	0x33393032 ; undefined
    1ef8:	32363035 	orr	w21, w1, #0x7ffc00
    1efc:	37363236 	tbnz	w22, #6, ffffffffffffe540 <__bss_end+0xffffffffffffdb30>
    1f00:	37313837 	tbnz	w23, #6, 4604 <__bss_end+0x3bf4>
    1f04:	37313233 	tbnz	w19, #6, 4548 <__bss_end+0x3b38>
    1f08:	30363235 	adr	x21, 6e54d <__bss_end+0x6db3d>
    1f0c:	39342d65 	strb	w5, [x11, #3339]
    1f10:	36463233 	tbz	w19, #8, ffffffffffffe554 <__bss_end+0xffffffffffffdb44>
    1f14:	5f007834 	.inst	0x5f007834 ; undefined
    1f18:	5a49535f 	.inst	0x5a49535f ; undefined
    1f1c:	5f464f45 	.inst	0x5f464f45 ; undefined
    1f20:	5f544e49 	.inst	0x5f544e49 ; undefined
    1f24:	0034205f 	.inst	0x0034205f ; NYI
    1f28:	4c465f5f 	.inst	0x4c465f5f ; undefined
    1f2c:	5f323354 	.inst	0x5f323354 ; undefined
    1f30:	49535045 	.inst	0x49535045 ; undefined
    1f34:	5f4e4f4c 	.inst	0x5f4e4f4c ; undefined
    1f38:	2e31205f 	usubl	v31.8h, v2.8b, v17.8b
    1f3c:	30323931 	adr	x17, 66661 <__bss_end+0x65c51>
    1f40:	39383239 	strb	w25, [x17, #3596]
    1f44:	37303535 	tbnz	w21, #6, 25e8 <__bss_end+0x1bd8>
    1f48:	35323138 	cbnz	w24, 6656c <__bss_end+0x65b5c>
    1f4c:	30303030 	adr	x16, 62551 <__bss_end+0x61b41>
    1f50:	30303030 	adr	x16, 62555 <__bss_end+0x61b45>
    1f54:	30303030 	adr	x16, 62559 <__bss_end+0x61b49>
    1f58:	30303030 	adr	x16, 6255d <__bss_end+0x61b4d>
    1f5c:	65303030 	.inst	0x65303030 ; undefined
    1f60:	3346372d 	.inst	0x3346372d ; undefined
    1f64:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    1f68:	474e4f4c 	.inst	0x474e4f4c ; undefined
    1f6c:	58414d5f 	ldr	xzr, 84914 <__bss_end+0x83f04>
    1f70:	30205f5f 	adr	xzr, 42b59 <__bss_end+0x42149>
    1f74:	66663778 	.inst	0x66663778 ; undefined
    1f78:	66666666 	.inst	0x66666666 ; undefined
    1f7c:	66666666 	.inst	0x66666666 ; undefined
    1f80:	66666666 	.inst	0x66666666 ; undefined
    1f84:	5f004c66 	.inst	0x5f004c66 ; undefined
    1f88:	544c465f 	.inst	0x544c465f ; undefined
    1f8c:	5f383231 	.inst	0x5f383231 ; undefined
    1f90:	5f534148 	.inst	0x5f534148 ; undefined
    1f94:	45495551 	.inst	0x45495551 ; undefined
    1f98:	414e5f54 	.inst	0x414e5f54 ; undefined
    1f9c:	205f5f4e 	.inst	0x205f5f4e ; undefined
    1fa0:	5f5f0031 	.inst	0x5f5f0031 ; undefined
    1fa4:	36434544 	tbz	w4, #8, 884c <__bss_end+0x7e3c>
    1fa8:	414d5f34 	.inst	0x414d5f34 ; undefined
    1fac:	58455f58 	ldr	x24, 8cb94 <__bss_end+0x8c184>
    1fb0:	205f5f50 	.inst	0x205f5f50 ; undefined
    1fb4:	00353833 	.inst	0x00353833 ; NYI
    1fb8:	43475f5f 	.inst	0x43475f5f ; undefined
    1fbc:	41485f43 	.inst	0x41485f43 ; undefined
    1fc0:	535f4556 	.inst	0x535f4556 ; undefined
    1fc4:	5f434e59 	.inst	0x5f434e59 ; undefined
    1fc8:	504d4f43 	adr	x3, 9c9b2 <__bss_end+0x9bfa2>
    1fcc:	5f455241 	.inst	0x5f455241 ; undefined
    1fd0:	5f444e41 	.inst	0x5f444e41 ; undefined
    1fd4:	50415753 	adr	x19, 84abe <__bss_end+0x840ae>
    1fd8:	3120345f 	cmn	w2, #0x80d
    1fdc:	72617500 	.inst	0x72617500 ; undefined
    1fe0:	6e695f74 	uqrshl	v20.8h, v27.8h, v9.8h
    1fe4:	5f007469 	.inst	0x5f007469 ; undefined
    1fe8:	544c465f 	.inst	0x544c465f ; undefined
    1fec:	5f583233 	sqdmlal	s19, h17, v8.h[1]
    1ff0:	5f4e494d 	.inst	0x5f4e494d ; undefined
    1ff4:	455f3031 	.inst	0x455f3031 ; undefined
    1ff8:	5f5f5058 	.inst	0x5f5f5058 ; undefined
    1ffc:	332d2820 	.inst	0x332d2820 ; undefined
    2000:	00293730 	.inst	0x00293730 ; NYI
    2004:	49555f5f 	.inst	0x49555f5f ; undefined
    2008:	465f544e 	.inst	0x465f544e ; undefined
    200c:	33545341 	.inst	0x33545341 ; undefined
    2010:	59545f32 	.inst	0x59545f32 ; undefined
    2014:	5f5f4550 	.inst	0x5f5f4550 ; undefined
    2018:	736e7520 	.inst	0x736e7520 ; undefined
    201c:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
    2020:	6e692064 	usubl2	v4.4s, v3.8h, v9.8h
    2024:	5f5f0074 	.inst	0x5f5f0074 ; undefined
    2028:	544e4955 	.inst	0x544e4955 ; undefined
    202c:	5f58414d 	.inst	0x5f58414d ; undefined
    2030:	29632843 	ldp	w3, w10, [x2, #-232]
    2034:	23206320 	.inst	0x23206320 ; undefined
    2038:	4c552023 	.inst	0x4c552023 ; undefined
    203c:	435f5f00 	.inst	0x435f5f00 ; undefined
    2040:	33524148 	.inst	0x33524148 ; undefined
    2044:	59545f32 	.inst	0x59545f32 ; undefined
    2048:	5f5f4550 	.inst	0x5f5f4550 ; undefined
    204c:	736e7520 	.inst	0x736e7520 ; undefined
    2050:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
    2054:	6e692064 	usubl2	v4.4s, v3.8h, v9.8h
    2058:	5f5f0074 	.inst	0x5f5f0074 ; undefined
    205c:	36544c46 	tbz	w6, #10, ffffffffffffa9e4 <__bss_end+0xffffffffffff9fd4>
    2060:	485f5834 	ldxrh	w20, [x1]
    2064:	495f5341 	.inst	0x495f5341 ; undefined
    2068:	4e49464e 	.inst	0x4e49464e ; undefined
    206c:	5f595449 	shl	d9, d2, #25
    2070:	0031205f 	.inst	0x0031205f ; NYI
    2074:	4c465f5f 	.inst	0x4c465f5f ; undefined
    2078:	56455f54 	.inst	0x56455f54 ; undefined
    207c:	4d5f4c41 	.inst	0x4d5f4c41 ; undefined
    2080:	4f485445 	shl	v5.2d, v2.2d, #8
    2084:	005f5f44 	.inst	0x005f5f44 ; undefined
    2088:	45445f5f 	.inst	0x45445f5f ; undefined
    208c:	38323143 	ldsetb	w18, w3, [x10]
    2090:	4e494d5f 	.inst	0x4e494d5f ; undefined
    2094:	31205f5f 	cmn	w26, #0x817
    2098:	31362d45 	adds	w5, w10, #0xd8b
    209c:	4c443334 	.inst	0x4c443334 ; undefined
    20a0:	465f5f00 	.inst	0x465f5f00 ; undefined
    20a4:	3233544c 	orr	w12, w2, #0xffffe007
    20a8:	494d5f58 	.inst	0x494d5f58 ; undefined
    20ac:	58455f4e 	ldr	x14, 8cc94 <__bss_end+0x8c284>
    20b0:	205f5f50 	.inst	0x205f5f50 ; undefined
    20b4:	30312d28 	adr	x8, 64659 <__bss_end+0x63c49>
    20b8:	00293132 	.inst	0x00293132 ; NYI
    20bc:	5f585541 	shl	d1, d10, #24
    20c0:	435f554d 	.inst	0x435f554d ; undefined
    20c4:	5f4c544e 	shl	d14, d2, #12
    20c8:	00474552 	.inst	0x00474552 ; undefined
    20cc:	4e495f5f 	.inst	0x4e495f5f ; undefined
    20d0:	52545054 	.inst	0x52545054 ; undefined
    20d4:	4449575f 	.inst	0x4449575f ; undefined
    20d8:	5f5f4854 	.inst	0x5f5f4854 ; undefined
    20dc:	00343620 	.inst	0x00343620 ; NYI
    20e0:	4e495f5f 	.inst	0x4e495f5f ; undefined
    20e4:	5f323354 	.inst	0x5f323354 ; undefined
    20e8:	29632843 	ldp	w3, w10, [x2, #-232]
    20ec:	5f006320 	.inst	0x5f006320 ; undefined
    20f0:	42444c5f 	.inst	0x42444c5f ; undefined
    20f4:	41485f4c 	.inst	0x41485f4c ; undefined
    20f8:	55515f53 	.inst	0x55515f53 ; undefined
    20fc:	5f544549 	.inst	0x5f544549 ; undefined
    2100:	5f4e414e 	.inst	0x5f4e414e ; undefined
    2104:	0031205f 	.inst	0x0031205f ; NYI
    2108:	4e495f5f 	.inst	0x4e495f5f ; undefined
    210c:	545f3854 	.inst	0x545f3854 ; undefined
    2110:	5f455059 	.inst	0x5f455059 ; undefined
    2114:	6973205f 	ldpsw	xzr, x8, [x2, #-104]
    2118:	64656e67 	.inst	0x64656e67 ; undefined
    211c:	61686320 	.inst	0x61686320 ; undefined
    2120:	5f5f0072 	.inst	0x5f5f0072 ; undefined
    2124:	544e4957 	.inst	0x544e4957 ; undefined
    2128:	58414d5f 	ldr	xzr, 84ad0 <__bss_end+0x840c0>
    212c:	30205f5f 	adr	xzr, 42d15 <__bss_end+0x42305>
    2130:	66666678 	.inst	0x66666678 ; undefined
    2134:	66666666 	.inst	0x66666666 ; undefined
    2138:	5f005566 	.inst	0x5f005566 ; undefined
    213c:	5241415f 	.inst	0x5241415f ; undefined
    2140:	34364843 	cbz	w3, 6ea48 <__bss_end+0x6e038>
    2144:	4f4d435f 	.inst	0x4f4d435f ; undefined
    2148:	5f4c4544 	.inst	0x5f4c4544 ; undefined
    214c:	4c414d53 	.inst	0x4c414d53 ; undefined
    2150:	005f5f4c 	.inst	0x005f5f4c ; undefined
    2154:	49555f5f 	.inst	0x49555f5f ; undefined
    2158:	3233544e 	orr	w14, w2, #0xffffe007
    215c:	5059545f 	adr	xzr, b4be6 <__bss_end+0xb41d6>
    2160:	205f5f45 	.inst	0x205f5f45 ; undefined
    2164:	69736e75 	ldpsw	x21, x27, [x19, #-104]
    2168:	64656e67 	.inst	0x64656e67 ; undefined
    216c:	746e6920 	.inst	0x746e6920 ; undefined
    2170:	445f5f00 	.inst	0x445f5f00 ; undefined
    2174:	32334345 	orr	w5, w26, #0x3fffe000
    2178:	4e494d5f 	.inst	0x4e494d5f ; undefined
    217c:	31205f5f 	cmn	w26, #0x817
    2180:	35392d45 	cbnz	w5, 74728 <__bss_end+0x73d18>
    2184:	5f004644 	.inst	0x5f004644 ; undefined
    2188:	4e49555f 	.inst	0x4e49555f ; undefined
    218c:	41465f54 	.inst	0x41465f54 ; undefined
    2190:	32335453 	orr	w19, w2, #0xffffe007
    2194:	58414d5f 	ldr	xzr, 84b3c <__bss_end+0x8412c>
    2198:	30205f5f 	adr	xzr, 42d81 <__bss_end+0x42371>
    219c:	66666678 	.inst	0x66666678 ; undefined
    21a0:	66666666 	.inst	0x66666666 ; undefined
    21a4:	5f005566 	.inst	0x5f005566 ; undefined
    21a8:	4d52415f 	.inst	0x4d52415f ; undefined
    21ac:	4145465f 	.inst	0x4145465f ; undefined
    21b0:	45525554 	.inst	0x45525554 ; undefined
    21b4:	4148535f 	.inst	0x4148535f ; undefined
    21b8:	00323135 	.inst	0x00323135 ; NYI
    21bc:	5f585541 	shl	d1, d10, #24
    21c0:	4c5f554d 	.inst	0x4c5f554d ; undefined
    21c4:	525f5253 	.inst	0x525f5253 ; undefined
    21c8:	5f004745 	.inst	0x5f004745 ; undefined
    21cc:	544c465f 	.inst	0x544c465f ; undefined
    21d0:	5f383231 	.inst	0x5f383231 ; undefined
    21d4:	49535045 	.inst	0x49535045 ; undefined
    21d8:	5f4e4f4c 	.inst	0x5f4e4f4c ; undefined
    21dc:	2e31205f 	usubl	v31.8h, v2.8b, v17.8b
    21e0:	39353239 	strb	w25, [x17, #3404]
    21e4:	34393932 	cbz	w18, 74908 <__bss_end+0x73ef8>
    21e8:	37383334 	tbnz	w20, #7, 284c <__bss_end+0x1e3c>
    21ec:	38353332 	ldsetb	w21, w18, [x25]
    21f0:	35303335 	cbnz	w21, 62854 <__bss_end+0x61e44>
    21f4:	37373935 	tbnz	w21, #6, 918 <__data_start+0x2c>
    21f8:	35323439 	cbnz	w25, 6687c <__bss_end+0x65e6c>
    21fc:	32393438 	orr	w24, w1, #0x1fff80
    2200:	65323337 	.inst	0x65323337 ; undefined
    2204:	4634332d 	.inst	0x4634332d ; undefined
    2208:	00383231 	.inst	0x00383231 ; NYI
    220c:	43575f5f 	.inst	0x43575f5f ; undefined
    2210:	5f524148 	.inst	0x5f524148 ; undefined
    2214:	5f58414d 	.inst	0x5f58414d ; undefined
    2218:	7830205f 	steorh	w16, [x2]
    221c:	66666666 	.inst	0x66666666 ; undefined
    2220:	66666666 	.inst	0x66666666 ; undefined
    2224:	5f5f0055 	.inst	0x5f5f0055 ; undefined
    2228:	455a4953 	.inst	0x455a4953 ; undefined
    222c:	4c5f464f 	.inst	0x4c5f464f ; undefined
    2230:	5f474e4f 	.inst	0x5f474e4f ; undefined
    2234:	474e4f4c 	.inst	0x474e4f4c ; undefined
    2238:	38205f5f 	.inst	0x38205f5f ; undefined
    223c:	465f5f00 	.inst	0x465f5f00 ; undefined
    2240:	3631544c 	tbz	w12, #6, 4cc8 <__bss_end+0x42b8>
    2244:	5350455f 	.inst	0x5350455f ; undefined
    2248:	4e4f4c49 	.inst	0x4e4f4c49 ; undefined
    224c:	39205f5f 	strb	wzr, [x26, #2071]
    2250:	3536372e 	cbnz	w14, 6e934 <__bss_end+0x6df24>
    2254:	30353236 	adr	x22, 6c899 <__bss_end+0x6be89>
    2258:	30303030 	adr	x16, 6285d <__bss_end+0x61e4d>
    225c:	30303030 	adr	x16, 62861 <__bss_end+0x61e51>
    2260:	30303030 	adr	x16, 62865 <__bss_end+0x61e55>
    2264:	30303030 	adr	x16, 62869 <__bss_end+0x61e59>
    2268:	30303030 	adr	x16, 6286d <__bss_end+0x61e5d>
    226c:	30303030 	adr	x16, 62871 <__bss_end+0x61e61>
    2270:	30303030 	adr	x16, 62875 <__bss_end+0x61e65>
    2274:	46342d65 	.inst	0x46342d65 ; undefined
    2278:	5f003631 	.inst	0x5f003631 ; undefined
    227c:	4e49555f 	.inst	0x4e49555f ; undefined
    2280:	545f3854 	.inst	0x545f3854 ; undefined
    2284:	5f455059 	.inst	0x5f455059 ; undefined
    2288:	6e75205f 	usubl2	v31.4s, v2.8h, v21.8h
    228c:	6e676973 	.inst	0x6e676973 ; undefined
    2290:	63206465 	.inst	0x63206465 ; undefined
    2294:	00726168 	.inst	0x00726168 ; undefined
    2298:	48535f5f 	ldxrh	wzr, [x26]
    229c:	575f5452 	.inst	0x575f5452 ; undefined
    22a0:	48544449 	ldxrh	w9, [x2]
    22a4:	31205f5f 	cmn	w26, #0x817
    22a8:	5f5f0036 	.inst	0x5f5f0036 ; undefined
    22ac:	53524556 	.inst	0x53524556 ; undefined
    22b0:	5f4e4f49 	.inst	0x5f4e4f49 ; undefined
    22b4:	3822205f 	steorb	w2, [x2]
    22b8:	302e332e 	adr	x14, 5e91d <__bss_end+0x5df0d>
    22bc:	5f5f0022 	.inst	0x5f5f0022 ; undefined
    22c0:	5f544e49 	.inst	0x5f544e49 ; undefined
    22c4:	5341454c 	.inst	0x5341454c ; undefined
    22c8:	5f343654 	.inst	0x5f343654 ; undefined
    22cc:	54444957 	.inst	0x54444957 ; undefined
    22d0:	205f5f48 	.inst	0x205f5f48 ; undefined
    22d4:	5f003436 	.inst	0x5f003436 ; undefined
    22d8:	49534e41 	.inst	0x49534e41 ; undefined
    22dc:	4454535f 	.inst	0x4454535f ; undefined
    22e0:	5f475241 	.inst	0x5f475241 ; undefined
    22e4:	00205f48 	.inst	0x00205f48 ; NYI
    22e8:	49535f5f 	.inst	0x49535f5f ; undefined
    22ec:	464f455a 	.inst	0x464f455a ; undefined
    22f0:	494f505f 	.inst	0x494f505f ; undefined
    22f4:	5245544e 	.inst	0x5245544e ; undefined
    22f8:	38205f5f 	.inst	0x38205f5f ; undefined
    22fc:	465f5f00 	.inst	0x465f5f00 ; undefined
    2300:	3436544c 	cbz	w12, 6ed88 <__bss_end+0x6e378>
    2304:	5350455f 	.inst	0x5350455f ; undefined
    2308:	4e4f4c49 	.inst	0x4e4f4c49 ; undefined
    230c:	32205f5f 	orr	wsp, w26, #0xffffff
    2310:	3032322e 	adr	x14, 66955 <__bss_end+0x65f45>
    2314:	30363434 	adr	x20, 6e999 <__bss_end+0x6df89>
    2318:	35323934 	cbnz	w20, 66a3c <__bss_end+0x6602c>
    231c:	33313330 	.inst	0x33313330 ; undefined
    2320:	38303830 	.inst	0x38303830 ; undefined
    2324:	36323734 	tbz	w20, #6, 6a08 <__bss_end+0x5ff8>
    2328:	36333333 	tbz	w19, #6, 898c <__bss_end+0x7f7c>
    232c:	36313831 	tbz	w17, #6, 4a30 <__bss_end+0x4020>
    2330:	32363034 	orr	w20, w1, #0x7ffc00
    2334:	36312d65 	tbz	w5, #6, 48e0 <__bss_end+0x3ed0>
    2338:	00343646 	.inst	0x00343646 ; NYI
    233c:	4e475f5f 	.inst	0x4e475f5f ; undefined
    2340:	565f4355 	.inst	0x565f4355 ; undefined
    2344:	494c5f41 	.inst	0x494c5f41 ; undefined
    2348:	00205453 	.inst	0x00205453 ; NYI
    234c:	5f787561 	sqshl	d1, d11, #56
    2350:	696e696d 	ldpsw	x13, x26, [x11, #-144]
    2354:	7261755f 	.inst	0x7261755f ; undefined
    2358:	65725f74 	fnmla	z20.h, p7/m, z27.h, z18.h
    235c:	745f7367 	.inst	0x745f7367 ; undefined
    2360:	615f5f00 	.inst	0x615f5f00 ; undefined
    2364:	68637261 	.inst	0x68637261 ; undefined
    2368:	5f5f3436 	srsra	d22, d1, #33
    236c:	5f003120 	.inst	0x5f003120 ; undefined
    2370:	544c465f 	.inst	0x544c465f ; undefined
    2374:	4e45445f 	.inst	0x4e45445f ; undefined
    2378:	5f4d524f 	.inst	0x5f4d524f ; undefined
    237c:	5f4e494d 	.inst	0x5f4e494d ; undefined
    2380:	2e31205f 	usubl	v31.8h, v2.8b, v17.8b
    2384:	32313034 	orr	w20, w1, #0xfff8000
    2388:	36343839 	tbz	w25, #6, ffffffffffffaa8c <__bss_end+0xffffffffffffa07c>
    238c:	34323334 	cbz	w20, 669f0 <__bss_end+0x65fe0>
    2390:	30373138 	adr	x24, 709b5 <__bss_end+0x6ffa5>
    2394:	32393037 	orr	w23, w1, #0xfff80
    2398:	39323733 	strb	w19, [x25, #3213]
    239c:	32333835 	orr	w21, w1, #0xfffe000
    23a0:	31393938 	adds	w24, w9, #0xe4e
    23a4:	65333136 	.inst	0x65333136 ; undefined
    23a8:	4635342d 	.inst	0x4635342d ; undefined
    23ac:	495f5f00 	.inst	0x495f5f00 ; undefined
    23b0:	575f544e 	.inst	0x575f544e ; undefined
    23b4:	48544449 	ldxrh	w9, [x2]
    23b8:	33205f5f 	.inst	0x33205f5f ; undefined
    23bc:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    23c0:	31544c46 	adds	w6, w2, #0x513, lsl #12
    23c4:	445f3832 	.inst	0x445f3832 ; undefined
    23c8:	4d494345 	.inst	0x4d494345 ; undefined
    23cc:	445f4c41 	.inst	0x445f4c41 ; undefined
    23d0:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    23d4:	00363320 	.inst	0x00363320 ; NYI
    23d8:	43475f5f 	.inst	0x43475f5f ; undefined
    23dc:	54415f43 	b.cc	84fc4 <__bss_end+0x845b4>  // b.lo, b.ul, b.last
    23e0:	43494d4f 	.inst	0x43494d4f ; undefined
    23e4:	494f505f 	.inst	0x494f505f ; undefined
    23e8:	5245544e 	.inst	0x5245544e ; undefined
    23ec:	434f4c5f 	.inst	0x434f4c5f ; undefined
    23f0:	52465f4b 	.inst	0x52465f4b ; undefined
    23f4:	32204545 	orr	w5, w10, #0x3ffff
    23f8:	6e696d00 	umin	v0.8h, v8.8h, v9.8h
    23fc:	61755f69 	.inst	0x61755f69 ; undefined
    2400:	5f007472 	.inst	0x5f007472 ; undefined
    2404:	4553555f 	.inst	0x4553555f ; undefined
    2408:	414c5f52 	.inst	0x414c5f52 ; undefined
    240c:	5f4c4542 	.inst	0x5f4c4542 ; undefined
    2410:	46455250 	.inst	0x46455250 ; undefined
    2414:	5f5f5849 	.inst	0x5f5f5849 ; undefined
    2418:	5f5f0020 	.inst	0x5f5f0020 ; undefined
    241c:	5f434347 	.inst	0x5f434347 ; undefined
    2420:	4d4f5441 	.inst	0x4d4f5441 ; undefined
    2424:	435f4349 	.inst	0x435f4349 ; undefined
    2428:	33524148 	.inst	0x33524148 ; undefined
    242c:	5f545f32 	.inst	0x5f545f32 ; undefined
    2430:	4b434f4c 	sub	w12, w26, w3, lsr #19
    2434:	4552465f 	.inst	0x4552465f ; undefined
    2438:	00322045 	.inst	0x00322045 ; NYI
    243c:	52415f5f 	.inst	0x52415f5f ; undefined
    2440:	52415f4d 	.inst	0x52415f4d ; undefined
    2444:	505f4843 	adr	x3, c0d4e <__bss_end+0xc033e>
    2448:	49464f52 	.inst	0x49464f52 ; undefined
    244c:	3620454c 	tbz	w12, #4, 2cf4 <__bss_end+0x22e4>
    2450:	5f5f0035 	.inst	0x5f5f0035 ; undefined
    2454:	43445453 	.inst	0x43445453 ; undefined
    2458:	534f485f 	.inst	0x534f485f ; undefined
    245c:	5f444554 	.inst	0x5f444554 ; undefined
    2460:	0030205f 	.inst	0x0030205f ; NYI
    2464:	49535f5f 	.inst	0x49535f5f ; undefined
    2468:	575f455a 	.inst	0x575f455a ; undefined
    246c:	48544449 	ldxrh	w9, [x2]
    2470:	36205f5f 	tbz	wzr, #4, 3058 <__bss_end+0x2648>
    2474:	5f5f0034 	.inst	0x5f5f0034 ; undefined
    2478:	50534152 	adr	x18, a8ca2 <__bss_end+0xa8292>
    247c:	5f534f49 	.inst	0x5f534f49 ; undefined
    2480:	45505954 	.inst	0x45505954 ; undefined
    2484:	205f5f53 	.inst	0x205f5f53 ; undefined
    2488:	685f5f00 	.inst	0x685f5f00 ; undefined
    248c:	695f7361 	ldpsw	x1, x28, [x27, #248]
    2490:	756c636e 	.inst	0x756c636e ; undefined
    2494:	53286564 	.inst	0x53286564 ; undefined
    2498:	20295254 	.inst	0x20295254 ; undefined
    249c:	61685f5f 	.inst	0x61685f5f ; undefined
    24a0:	6e695f73 	uqrshl	v19.8h, v27.8h, v9.8h
    24a4:	64756c63 	.inst	0x64756c63 ; undefined
    24a8:	285f5f65 	ldnp	w5, w23, [x27, #248]
    24ac:	29525453 	ldp	w19, w21, [x2, #144]
    24b0:	465f5f00 	.inst	0x465f5f00 ; undefined
    24b4:	3631544c 	tbz	w12, #6, 4f3c <__bss_end+0x452c>
    24b8:	5341485f 	.inst	0x5341485f ; undefined
    24bc:	4955515f 	.inst	0x4955515f ; undefined
    24c0:	4e5f5445 	.inst	0x4e5f5445 ; undefined
    24c4:	5f5f4e41 	.inst	0x5f5f4e41 ; undefined
    24c8:	5f003120 	.inst	0x5f003120 ; undefined
    24cc:	4e4f4c5f 	.inst	0x4e4f4c5f ; undefined
    24d0:	49575f47 	.inst	0x49575f47 ; undefined
    24d4:	5f485444 	shl	d4, d2, #8
    24d8:	3436205f 	cbz	wzr, 6e8e0 <__bss_end+0x6ded0>
    24dc:	415f5f00 	.inst	0x415f5f00 ; undefined
    24e0:	48435241 	ldxrh	w1, [x18]
    24e4:	42453436 	.inst	0x42453436 ; undefined
    24e8:	5f005f5f 	.inst	0x5f005f5f ; undefined
    24ec:	4343475f 	.inst	0x4343475f ; undefined
    24f0:	4f54415f 	.inst	0x4f54415f ; undefined
    24f4:	5f43494d 	.inst	0x5f43494d ; undefined
    24f8:	4e4f4c4c 	.inst	0x4e4f4c4c ; undefined
    24fc:	4f4c5f47 	.inst	0x4f4c5f47 ; undefined
    2500:	465f4b43 	.inst	0x465f4b43 ; undefined
    2504:	20454552 	.inst	0x20454552 ; undefined
    2508:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    250c:	5f544c46 	.inst	0x5f544c46 ; undefined
    2510:	5f58414d 	.inst	0x5f58414d ; undefined
    2514:	5f505845 	.inst	0x5f505845 ; undefined
    2518:	3231205f 	orr	wsp, w2, #0xff8000
    251c:	72700038 	.inst	0x72700038 ; undefined
    2520:	66746e69 	.inst	0x66746e69 ; undefined
    2524:	70667420 	adr	x0, cf3ab <__bss_end+0xce99b>
    2528:	6972705f 	ldpsw	xzr, x28, [x2, #-112]
    252c:	0066746e 	.inst	0x0066746e ; undefined
    2530:	54415f5f 	.inst	0x54415f5f ; undefined
    2534:	43494d4f 	.inst	0x43494d4f ; undefined
    2538:	5143415f 	sub	wsp, w10, #0xd0, lsl #12
    253c:	4c45525f 	.inst	0x4c45525f ; undefined
    2540:	5f003420 	.inst	0x5f003420 ; undefined
    2544:	4345445f 	.inst	0x4345445f ; undefined
    2548:	4d5f3233 	.inst	0x4d5f3233 ; undefined
    254c:	455f4e49 	.inst	0x455f4e49 ; undefined
    2550:	5f5f5058 	.inst	0x5f5f5058 ; undefined
    2554:	392d2820 	strb	w0, [x1, #2890]
    2558:	5f002934 	.inst	0x5f002934 ; undefined
    255c:	4345445f 	.inst	0x4345445f ; undefined
    2560:	4d5f3233 	.inst	0x4d5f3233 ; undefined
    2564:	455f5841 	.inst	0x455f5841 ; undefined
    2568:	5f5f5058 	.inst	0x5f5f5058 ; undefined
    256c:	00373920 	.inst	0x00373920 ; NYI
    2570:	4e495f5f 	.inst	0x4e495f5f ; undefined
    2574:	5f343654 	.inst	0x5f343654 ; undefined
    2578:	45505954 	.inst	0x45505954 ; undefined
    257c:	6c205f5f 	stnp	d31, d23, [x26, #-512]
    2580:	20676e6f 	.inst	0x20676e6f ; undefined
    2584:	00746e69 	.inst	0x00746e69 ; undefined
    2588:	6e72656b 	umax	v11.8h, v11.8h, v18.8h
    258c:	6d5f6c65 	ldp	d5, d27, [x3, #496]
    2590:	006e6961 	.inst	0x006e6961 ; undefined
    2594:	45445f5f 	.inst	0x45445f5f ; undefined
    2598:	56455f43 	.inst	0x56455f43 ; undefined
    259c:	4d5f4c41 	.inst	0x4d5f4c41 ; undefined
    25a0:	4f485445 	shl	v5.2d, v2.2d, #8
    25a4:	205f5f44 	.inst	0x205f5f44 ; undefined
    25a8:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    25ac:	4c42444c 	.inst	0x4c42444c ; undefined
    25b0:	4345445f 	.inst	0x4345445f ; undefined
    25b4:	4c414d49 	.inst	0x4c414d49 ; undefined
    25b8:	4749445f 	.inst	0x4749445f ; undefined
    25bc:	33205f5f 	.inst	0x33205f5f ; undefined
    25c0:	5f5f0036 	.inst	0x5f5f0036 ; undefined
    25c4:	5f4d5241 	.inst	0x5f4d5241 ; undefined
    25c8:	54414546 	b.vs	84e70 <__bss_end+0x84460>
    25cc:	5f455255 	.inst	0x5f455255 ; undefined
    25d0:	33435243 	.inst	0x33435243 ; undefined
    25d4:	00312032 	.inst	0x00312032 ; NYI
    25d8:	4e495f5f 	.inst	0x4e495f5f ; undefined
    25dc:	454c5f54 	.inst	0x454c5f54 ; undefined
    25e0:	33545341 	.inst	0x33545341 ; undefined
    25e4:	49575f32 	.inst	0x49575f32 ; undefined
    25e8:	5f485444 	shl	d4, d2, #8
    25ec:	3233205f 	orr	wsp, w2, #0x3fe000
    25f0:	555f5f00 	.inst	0x555f5f00 ; undefined
    25f4:	5f544e49 	.inst	0x5f544e49 ; undefined
    25f8:	5341454c 	.inst	0x5341454c ; undefined
    25fc:	545f3854 	.inst	0x545f3854 ; undefined
    2600:	5f455059 	.inst	0x5f455059 ; undefined
    2604:	6e75205f 	usubl2	v31.4s, v2.8h, v21.8h
    2608:	6e676973 	.inst	0x6e676973 ; undefined
    260c:	63206465 	.inst	0x63206465 ; undefined
    2610:	00726168 	.inst	0x00726168 ; undefined
    2614:	49555f5f 	.inst	0x49555f5f ; undefined
    2618:	414d544e 	.inst	0x414d544e ; undefined
    261c:	414d5f58 	.inst	0x414d5f58 ; undefined
    2620:	205f5f58 	.inst	0x205f5f58 ; undefined
    2624:	66667830 	.inst	0x66667830 ; undefined
    2628:	66666666 	.inst	0x66666666 ; undefined
    262c:	66666666 	.inst	0x66666666 ; undefined
    2630:	66666666 	.inst	0x66666666 ; undefined
    2634:	4c556666 	.inst	0x4c556666 ; undefined
    2638:	505f5f00 	adr	x0, c121a <__bss_end+0xc080a>
    263c:	5f5f4349 	.inst	0x5f5f4349 ; undefined
    2640:	5f003220 	.inst	0x5f003220 ; undefined
    2644:	4e49555f 	.inst	0x4e49555f ; undefined
    2648:	454c5f54 	.inst	0x454c5f54 ; undefined
    264c:	36545341 	tbz	w1, #10, ffffffffffffb0b4 <__bss_end+0xffffffffffffa6a4>
    2650:	59545f34 	.inst	0x59545f34 ; undefined
    2654:	5f5f4550 	.inst	0x5f5f4550 ; undefined
    2658:	6e6f6c20 	umin	v0.8h, v1.8h, v15.8h
    265c:	6e752067 	usubl2	v7.4s, v3.8h, v21.8h
    2660:	6e676973 	.inst	0x6e676973 ; undefined
    2664:	69206465 	stgp	x5, x25, [x3, #-1024]
    2668:	5f00746e 	.inst	0x5f00746e ; undefined
    266c:	5a49535f 	.inst	0x5a49535f ; undefined
    2670:	414d5f45 	.inst	0x414d5f45 ; undefined
    2674:	205f5f58 	.inst	0x205f5f58 ; undefined
    2678:	66667830 	.inst	0x66667830 ; undefined
    267c:	66666666 	.inst	0x66666666 ; undefined
    2680:	66666666 	.inst	0x66666666 ; undefined
    2684:	66666666 	.inst	0x66666666 ; undefined
    2688:	4c556666 	.inst	0x4c556666 ; undefined
    268c:	4c5f5f00 	.inst	0x4c5f5f00 ; undefined
    2690:	52414e49 	.inst	0x52414e49 ; undefined
    2694:	50535f4f 	adr	x15, a927e <__bss_end+0xa886e>
    2698:	5f5f4e49 	.inst	0x5f5f4e49 ; undefined
    269c:	5f003020 	.inst	0x5f003020 ; undefined
    26a0:	4d52415f 	.inst	0x4d52415f ; undefined
    26a4:	494c415f 	.inst	0x494c415f ; undefined
    26a8:	4d5f4e47 	.inst	0x4d5f4e47 ; undefined
    26ac:	535f5841 	.inst	0x535f5841 ; undefined
    26b0:	4b434154 	sub	w20, w10, w3, lsr #16
    26b4:	5257505f 	.inst	0x5257505f ; undefined
    26b8:	00363120 	.inst	0x00363120 ; NYI
    26bc:	43475f5f 	.inst	0x43475f5f ; undefined
    26c0:	54415f43 	b.cc	852a8 <__bss_end+0x84898>  // b.lo, b.ul, b.last
    26c4:	43494d4f 	.inst	0x43494d4f ; undefined
    26c8:	4f48535f 	.inst	0x4f48535f ; undefined
    26cc:	4c5f5452 	.inst	0x4c5f5452 ; undefined
    26d0:	5f4b434f 	.inst	0x5f4b434f ; undefined
    26d4:	45455246 	.inst	0x45455246 ; undefined
    26d8:	5f003220 	.inst	0x5f003220 ; undefined
    26dc:	544c465f 	.inst	0x544c465f ; undefined
    26e0:	4e494d5f 	.inst	0x4e494d5f ; undefined
    26e4:	5f30315f 	.inst	0x5f30315f ; undefined
    26e8:	5f505845 	.inst	0x5f505845 ; undefined
    26ec:	2d28205f 	stp	s31, s8, [x2, #-192]
    26f0:	00293733 	.inst	0x00293733 ; NYI
    26f4:	4c465f5f 	.inst	0x4c465f5f ; undefined
    26f8:	5f343654 	.inst	0x5f343654 ; undefined
    26fc:	5f4e494d 	.inst	0x5f4e494d ; undefined
    2700:	5f505845 	.inst	0x5f505845 ; undefined
    2704:	2d28205f 	stp	s31, s8, [x2, #-192]
    2708:	31323031 	adds	w17, w1, #0xc8c
    270c:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    2710:	5f4d5241 	.inst	0x5f4d5241 ; undefined
    2714:	54414546 	b.vs	84fbc <__bss_end+0x845ac>
    2718:	5f455255 	.inst	0x5f455255 ; undefined
    271c:	00414d46 	.inst	0x00414d46 ; undefined
    2720:	4c465f5f 	.inst	0x4c465f5f ; undefined
    2724:	56455f54 	.inst	0x56455f54 ; undefined
    2728:	4d5f4c41 	.inst	0x4d5f4c41 ; undefined
    272c:	4f485445 	shl	v5.2d, v2.2d, #8
    2730:	53545f44 	.inst	0x53545f44 ; undefined
    2734:	3638315f 	tbz	wzr, #7, 2d5c <__bss_end+0x234c>
    2738:	335f3136 	.inst	0x335f3136 ; undefined
    273c:	30205f5f 	adr	xzr, 43325 <__bss_end+0x42915>
    2740:	445f5f00 	.inst	0x445f5f00 ; undefined
    2744:	485f4c42 	ldxrh	w2, [x2]
    2748:	495f5341 	.inst	0x495f5341 ; undefined
    274c:	4e49464e 	.inst	0x4e49464e ; undefined
    2750:	5f595449 	shl	d9, d2, #25
    2754:	0031205f 	.inst	0x0031205f ; NYI
    2758:	5f585541 	shl	d1, d10, #24
    275c:	49524550 	.inst	0x49524550 ; undefined
    2760:	5341425f 	.inst	0x5341425f ; undefined
    2764:	50282045 	adr	x5, 52b6e <__bss_end+0x5215e>
    2768:	5f495245 	.inst	0x5f495245 ; undefined
    276c:	45534142 	.inst	0x45534142 ; undefined
    2770:	30202b20 	adr	x0, 42cd5 <__bss_end+0x422c5>
    2774:	32303078 	orr	w24, w3, #0x1fff0000
    2778:	30303531 	adr	x17, 62e1d <__bss_end+0x6240d>
    277c:	5f002930 	.inst	0x5f002930 ; undefined
    2780:	544e495f 	.inst	0x544e495f ; undefined
    2784:	435f3436 	.inst	0x435f3436 ; undefined
    2788:	20296328 	.inst	0x20296328 ; undefined
    278c:	23232063 	.inst	0x23232063 ; undefined
    2790:	5f004c20 	.inst	0x5f004c20 ; undefined
    2794:	544e495f 	.inst	0x544e495f ; undefined
    2798:	5341465f 	.inst	0x5341465f ; undefined
    279c:	5f323354 	.inst	0x5f323354 ; undefined
    27a0:	45505954 	.inst	0x45505954 ; undefined
    27a4:	69205f5f 	stgp	xzr, x23, [x26, #-1024]
    27a8:	5f00746e 	.inst	0x5f00746e ; undefined
    27ac:	544c465f 	.inst	0x544c465f ; undefined
    27b0:	58414d5f 	ldr	xzr, 85158 <__bss_end+0x84748>
    27b4:	33205f5f 	.inst	0x33205f5f ; undefined
    27b8:	3230342e 	orr	w14, w1, #0x3fff0000
    27bc:	34333238 	cbz	w24, 68e00 <__bss_end+0x683f0>
    27c0:	38333636 	.inst	0x38333636 ; undefined
    27c4:	38383235 	ldsetb	w24, w21, [x17]
    27c8:	31383935 	adds	w21, w9, #0xe0e
    27cc:	34303731 	cbz	w17, 62eb0 <__bss_end+0x624a0>
    27d0:	34333831 	cbz	w17, 68ed4 <__bss_end+0x684c4>
    27d4:	31353438 	adds	w24, w1, #0xd4d
    27d8:	35323936 	cbnz	w22, 66efc <__bss_end+0x664ec>
    27dc:	38332b65 	.inst	0x38332b65 ; undefined
    27e0:	5f5f0046 	.inst	0x5f5f0046 ; undefined
    27e4:	5f544c46 	.inst	0x5f544c46 ; undefined
    27e8:	5f534148 	.inst	0x5f534148 ; undefined
    27ec:	45495551 	.inst	0x45495551 ; undefined
    27f0:	414e5f54 	.inst	0x414e5f54 ; undefined
    27f4:	205f5f4e 	.inst	0x205f5f4e ; undefined
    27f8:	5f5f0031 	.inst	0x5f5f0031 ; undefined
    27fc:	44525450 	.inst	0x44525450 ; undefined
    2800:	5f464649 	.inst	0x5f464649 ; undefined
    2804:	45505954 	.inst	0x45505954 ; undefined
    2808:	6c205f5f 	stnp	d31, d23, [x26, #-512]
    280c:	20676e6f 	.inst	0x20676e6f ; undefined
    2810:	00746e69 	.inst	0x00746e69 ; undefined
    2814:	52415f5f 	.inst	0x52415f5f ; undefined
    2818:	45465f4d 	.inst	0x45465f4d ; undefined
    281c:	52555441 	.inst	0x52555441 ; undefined
    2820:	48535f45 	ldxrh	w5, [x26]
    2824:	5f003341 	.inst	0x5f003341 ; undefined
    2828:	4454535f 	.inst	0x4454535f ; undefined
    282c:	45565f43 	.inst	0x45565f43 ; undefined
    2830:	4f495352 	.inst	0x4f495352 ; undefined
    2834:	205f5f4e 	.inst	0x205f5f4e ; undefined
    2838:	37313032 	tbnz	w18, #6, 4e3c <__bss_end+0x442c>
    283c:	004c3031 	.inst	0x004c3031 ; undefined
    2840:	45445f5f 	.inst	0x45445f5f ; undefined
    2844:	38323143 	ldsetb	w18, w3, [x10]
    2848:	4255535f 	.inst	0x4255535f ; undefined
    284c:	4d524f4e 	.inst	0x4d524f4e ; undefined
    2850:	4d5f4c41 	.inst	0x4d5f4c41 ; undefined
    2854:	5f5f4e49 	.inst	0x5f5f4e49 ; undefined
    2858:	302e3020 	adr	x0, 5ee5d <__bss_end+0x5e44d>
    285c:	30303030 	adr	x16, 62e61 <__bss_end+0x62451>
    2860:	30303030 	adr	x16, 62e65 <__bss_end+0x62455>
    2864:	30303030 	adr	x16, 62e69 <__bss_end+0x62459>
    2868:	30303030 	adr	x16, 62e6d <__bss_end+0x6245d>
    286c:	30303030 	adr	x16, 62e71 <__bss_end+0x62461>
    2870:	30303030 	adr	x16, 62e75 <__bss_end+0x62465>
    2874:	30303030 	adr	x16, 62e79 <__bss_end+0x62469>
    2878:	31303030 	adds	w16, w1, #0xc0c
    287c:	31362d45 	adds	w5, w10, #0xd8b
    2880:	4c443334 	.inst	0x4c443334 ; undefined
    2884:	465f5f00 	.inst	0x465f5f00 ; undefined
    2888:	3233544c 	orr	w12, w2, #0xffffe007
    288c:	41485f58 	.inst	0x41485f58 ; undefined
    2890:	55515f53 	.inst	0x55515f53 ; undefined
    2894:	5f544549 	.inst	0x5f544549 ; undefined
    2898:	5f4e414e 	.inst	0x5f4e414e ; undefined
    289c:	0031205f 	.inst	0x0031205f ; NYI
    28a0:	42445f5f 	.inst	0x42445f5f ; undefined
    28a4:	414d5f4c 	.inst	0x414d5f4c ; undefined
    28a8:	30315f58 	adr	x24, 65491 <__bss_end+0x64a81>
    28ac:	5058455f 	adr	xzr, b3156 <__bss_end+0xb2746>
    28b0:	33205f5f 	.inst	0x33205f5f ; undefined
    28b4:	5f003830 	.inst	0x5f003830 ; undefined
    28b8:	4343475f 	.inst	0x4343475f ; undefined
    28bc:	4f54415f 	.inst	0x4f54415f ; undefined
    28c0:	5f43494d 	.inst	0x5f43494d ; undefined
    28c4:	5f544e49 	.inst	0x5f544e49 ; undefined
    28c8:	4b434f4c 	sub	w12, w26, w3, lsr #19
    28cc:	4552465f 	.inst	0x4552465f ; undefined
    28d0:	00322045 	.inst	0x00322045 ; NYI
    28d4:	69705f5f 	ldpsw	xzr, x23, [x26, #-128]
    28d8:	205f5f63 	.inst	0x205f5f63 ; undefined
    28dc:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    28e0:	43554e47 	.inst	0x43554e47 ; undefined
    28e4:	4454535f 	.inst	0x4454535f ; undefined
    28e8:	4e495f43 	.inst	0x4e495f43 ; undefined
    28ec:	454e494c 	.inst	0x454e494c ; undefined
    28f0:	31205f5f 	cmn	w26, #0x817
    28f4:	425f5f00 	.inst	0x425f5f00 ; undefined
    28f8:	45474749 	.inst	0x45474749 ; undefined
    28fc:	415f5453 	.inst	0x415f5453 ; undefined
    2900:	4e47494c 	.inst	0x4e47494c ; undefined
    2904:	544e454d 	b.le	9f1ac <__bss_end+0x9e79c>
    2908:	31205f5f 	cmn	w26, #0x817
    290c:	5f5f0036 	.inst	0x5f5f0036 ; undefined
    2910:	31544c46 	adds	w6, w2, #0x513, lsl #12
    2914:	445f3832 	.inst	0x445f3832 ; undefined
    2918:	524f4e45 	.inst	0x524f4e45 ; undefined
    291c:	494d5f4d 	.inst	0x494d5f4d ; undefined
    2920:	205f5f4e 	.inst	0x205f5f4e ; undefined
    2924:	37342e36 	tbnz	w22, #6, ffffffffffffaee8 <__bss_end+0xffffffffffffa4d8>
    2928:	35373135 	cbnz	w21, 70f4c <__bss_end+0x7053c>
    292c:	34393131 	cbz	w17, 74f50 <__bss_end+0x74540>
    2930:	32303833 	orr	w19, w1, #0x7fff0000
    2934:	30313135 	adr	x21, 64f59 <__bss_end+0x64549>
    2938:	34343239 	cbz	w25, 6af7c <__bss_end+0x6a56c>
    293c:	35393833 	cbnz	w19, 75040 <__bss_end+0x74630>
    2940:	37323238 	tbnz	w24, #6, 6f84 <__bss_end+0x6574>
    2944:	35363436 	cbnz	w22, 6efc8 <__bss_end+0x6e5b8>
    2948:	342d6535 	cbz	w21, 5d5ec <__bss_end+0x5cbdc>
    294c:	46363639 	.inst	0x46363639 ; undefined
    2950:	00383231 	.inst	0x00383231 ; NYI
    2954:	4e495f5f 	.inst	0x4e495f5f ; undefined
    2958:	41465f54 	.inst	0x41465f54 ; undefined
    295c:	5f385453 	.inst	0x5f385453 ; undefined
    2960:	54444957 	.inst	0x54444957 ; undefined
    2964:	205f5f48 	.inst	0x205f5f48 ; undefined
    2968:	5f003233 	.inst	0x5f003233 ; undefined
    296c:	5241415f 	.inst	0x5241415f ; undefined
    2970:	34364843 	cbz	w3, 6f278 <__bss_end+0x6e868>
    2974:	4f4d435f 	.inst	0x4f4d435f ; undefined
    2978:	5f4c4544 	.inst	0x5f4c4544 ; undefined
    297c:	4752414c 	.inst	0x4752414c ; undefined
    2980:	005f5f45 	.inst	0x005f5f45 ; undefined
    2984:	4c465f5f 	.inst	0x4c465f5f ; undefined
    2988:	494d5f54 	.inst	0x494d5f54 ; undefined
    298c:	58455f4e 	ldr	x14, 8d574 <__bss_end+0x8cb64>
    2990:	205f5f50 	.inst	0x205f5f50 ; undefined
    2994:	32312d28 	orr	w8, w9, #0x7ff8000
    2998:	5f002935 	.inst	0x5f002935 ; undefined
    299c:	4345445f 	.inst	0x4345445f ; undefined
    29a0:	5f383231 	.inst	0x5f383231 ; undefined
    29a4:	5f58414d 	.inst	0x5f58414d ; undefined
    29a8:	2e39205f 	usubl	v31.8h, v2.8b, v25.8b
    29ac:	39393939 	strb	w25, [x9, #3662]
    29b0:	39393939 	strb	w25, [x9, #3662]
    29b4:	39393939 	strb	w25, [x9, #3662]
    29b8:	39393939 	strb	w25, [x9, #3662]
    29bc:	39393939 	strb	w25, [x9, #3662]
    29c0:	39393939 	strb	w25, [x9, #3662]
    29c4:	39393939 	strb	w25, [x9, #3662]
    29c8:	39393939 	strb	w25, [x9, #3662]
    29cc:	31364539 	adds	w25, w9, #0xd91
    29d0:	4c443434 	.inst	0x4c443434 ; undefined
    29d4:	696e6900 	ldpsw	x0, x26, [x8, #-144]
    29d8:	72705f74 	.inst	0x72705f74 ; undefined
    29dc:	66746e69 	.inst	0x66746e69 ; undefined
    29e0:	6f682f00 	.inst	0x6f682f00 ; undefined
    29e4:	612f656d 	.inst	0x612f656d ; undefined
    29e8:	73696862 	.inst	0x73696862 ; undefined
    29ec:	2f6b6568 	.inst	0x2f6b6568 ; undefined
    29f0:	65646f43 	fnmls	z3.h, p3/m, z26.h, z4.h
    29f4:	65722f73 	fmls	z19.h, p3/m, z27.h, z18.h
    29f8:	2f736f70 	.inst	0x2f736f70 ; undefined
    29fc:	70736172 	adr	x18, e962b <__bss_end+0xe8c1b>
    2a00:	736f5f69 	.inst	0x736f5f69 ; undefined
    2a04:	465f5f00 	.inst	0x465f5f00 ; undefined
    2a08:	3631544c 	tbz	w12, #6, 5490 <__bss_end+0x4a80>
    2a0c:	58414d5f 	ldr	xzr, 853b4 <__bss_end+0x849a4>
    2a10:	36205f5f 	tbz	wzr, #4, 35f8 <__bss_end+0x2be8>
    2a14:	3035352e 	adr	x14, 6d0b9 <__bss_end+0x6c6a9>
    2a18:	30303034 	adr	x20, 6301d <__bss_end+0x6260d>
    2a1c:	30303030 	adr	x16, 63021 <__bss_end+0x62611>
    2a20:	30303030 	adr	x16, 63025 <__bss_end+0x62615>
    2a24:	30303030 	adr	x16, 63029 <__bss_end+0x62619>
    2a28:	30303030 	adr	x16, 6302d <__bss_end+0x6261d>
    2a2c:	30303030 	adr	x16, 63031 <__bss_end+0x62621>
    2a30:	30303030 	adr	x16, 63035 <__bss_end+0x62625>
    2a34:	30303030 	adr	x16, 63039 <__bss_end+0x62629>
    2a38:	46342b65 	.inst	0x46342b65 ; undefined
    2a3c:	5f003631 	.inst	0x5f003631 ; undefined
    2a40:	4d52415f 	.inst	0x4d52415f ; undefined
    2a44:	5343505f 	.inst	0x5343505f ; undefined
    2a48:	5041415f 	adr	xzr, 85272 <__bss_end+0x84862>
    2a4c:	34365343 	cbz	w3, 6f4b4 <__bss_end+0x6eaa4>
    2a50:	5f003120 	.inst	0x5f003120 ; undefined
    2a54:	4e49555f 	.inst	0x4e49555f ; undefined
    2a58:	454c5f54 	.inst	0x454c5f54 ; undefined
    2a5c:	33545341 	.inst	0x33545341 ; undefined
    2a60:	414d5f32 	.inst	0x414d5f32 ; undefined
    2a64:	205f5f58 	.inst	0x205f5f58 ; undefined
    2a68:	66667830 	.inst	0x66667830 ; undefined
    2a6c:	66666666 	.inst	0x66666666 ; undefined
    2a70:	00556666 	.inst	0x00556666 ; undefined
    2a74:	4c465f5f 	.inst	0x4c465f5f ; undefined
    2a78:	58323354 	ldr	x20, 670e0 <__bss_end+0x666d0>
    2a7c:	58414d5f 	ldr	xzr, 85424 <__bss_end+0x84a14>
    2a80:	5f30315f 	.inst	0x5f30315f ; undefined
    2a84:	5f505845 	.inst	0x5f505845 ; undefined
    2a88:	3033205f 	adr	xzr, 68e91 <__bss_end+0x68481>
    2a8c:	5f5f0038 	.inst	0x5f5f0038 ; undefined
    2a90:	5f544e49 	.inst	0x5f544e49 ; undefined
    2a94:	54534146 	b.vs	a92bc <__bss_end+0xa88ac>
    2a98:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    2a9c:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    2aa0:	37783020 	tbnz	w0, #15, 30a4 <__bss_end+0x2694>
    2aa4:	66666666 	.inst	0x66666666 ; undefined
    2aa8:	00666666 	.inst	0x00666666 ; undefined
    2aac:	4c465f5f 	.inst	0x4c465f5f ; undefined
    2ab0:	5f363154 	.inst	0x5f363154 ; undefined
    2ab4:	5f58414d 	.inst	0x5f58414d ; undefined
    2ab8:	455f3031 	.inst	0x455f3031 ; undefined
    2abc:	5f5f5058 	.inst	0x5f5f5058 ; undefined
    2ac0:	5f003420 	.inst	0x5f003420 ; undefined
    2ac4:	544c465f 	.inst	0x544c465f ; undefined
    2ac8:	445f3436 	.inst	0x445f3436 ; undefined
    2acc:	524f4e45 	.inst	0x524f4e45 ; undefined
    2ad0:	494d5f4d 	.inst	0x494d5f4d ; undefined
    2ad4:	205f5f4e 	.inst	0x205f5f4e ; undefined
    2ad8:	34392e34 	cbz	w20, 7509c <__bss_end+0x7468c>
    2adc:	36353630 	tbz	w16, #6, ffffffffffffd1a0 <__bss_end+0xffffffffffffc790>
    2ae0:	34383534 	cbz	w20, 73184 <__bss_end+0x72774>
    2ae4:	36343231 	tbz	w17, #6, ffffffffffffb128 <__bss_end+0xffffffffffffa718>
    2ae8:	31343435 	adds	w21, w1, #0xd0d
    2aec:	36353637 	tbz	w23, #6, ffffffffffffd1b0 <__bss_end+0xffffffffffffc7a0>
    2af0:	32393738 	orr	w24, w25, #0x1fff80
    2af4:	32383638 	orr	w24, w17, #0x3fff00
    2af8:	37333132 	tbnz	w18, #6, 911c <__bss_end+0x870c>
    2afc:	332d6532 	.inst	0x332d6532 ; undefined
    2b00:	36463432 	tbz	w18, #8, fffffffffffff184 <__bss_end+0xffffffffffffe774>
    2b04:	5f5f0034 	.inst	0x5f5f0034 ; undefined
    2b08:	33544c46 	.inst	0x33544c46 ; undefined
    2b0c:	414d5f32 	.inst	0x414d5f32 ; undefined
    2b10:	30315f58 	adr	x24, 656f9 <__bss_end+0x64ce9>
    2b14:	5058455f 	adr	xzr, b33be <__bss_end+0xb29ae>
    2b18:	33205f5f 	.inst	0x33205f5f ; undefined
    2b1c:	5f5f0038 	.inst	0x5f5f0038 ; undefined
    2b20:	43445453 	.inst	0x43445453 ; undefined
    2b24:	4654555f 	.inst	0x4654555f ; undefined
    2b28:	5f32335f 	.inst	0x5f32335f ; undefined
    2b2c:	0031205f 	.inst	0x0031205f ; NYI
    2b30:	54505f5f 	.inst	0x54505f5f ; undefined
    2b34:	46494452 	.inst	0x46494452 ; undefined
    2b38:	49575f46 	.inst	0x49575f46 ; undefined
    2b3c:	5f485444 	shl	d4, d2, #8
    2b40:	3436205f 	cbz	wzr, 6ef48 <__bss_end+0x6e538>
    2b44:	495f5f00 	.inst	0x495f5f00 ; undefined
    2b48:	4c5f544e 	.inst	0x4c5f544e ; undefined
    2b4c:	54534145 	b.pl	a9374 <__bss_end+0xa8964>  // b.nfrst
    2b50:	4d5f3233 	.inst	0x4d5f3233 ; undefined
    2b54:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    2b58:	37783020 	tbnz	w0, #15, 315c <__bss_end+0x274c>
    2b5c:	66666666 	.inst	0x66666666 ; undefined
    2b60:	00666666 	.inst	0x00666666 ; undefined
    2b64:	49555f5f 	.inst	0x49555f5f ; undefined
    2b68:	465f544e 	.inst	0x465f544e ; undefined
    2b6c:	36545341 	tbz	w1, #10, ffffffffffffb5d4 <__bss_end+0xffffffffffffabc4>
    2b70:	59545f34 	.inst	0x59545f34 ; undefined
    2b74:	5f5f4550 	.inst	0x5f5f4550 ; undefined
    2b78:	6e6f6c20 	umin	v0.8h, v1.8h, v15.8h
    2b7c:	6e752067 	usubl2	v7.4s, v3.8h, v21.8h
    2b80:	6e676973 	.inst	0x6e676973 ; undefined
    2b84:	69206465 	stgp	x5, x25, [x3, #-1024]
    2b88:	4100746e 	.inst	0x4100746e ; undefined
    2b8c:	4d5f5855 	.inst	0x4d5f5855 ; undefined
    2b90:	49495f55 	.inst	0x49495f55 ; undefined
    2b94:	45525f52 	.inst	0x45525f52 ; undefined
    2b98:	5f5f0047 	.inst	0x5f5f0047 ; undefined
    2b9c:	4c42444c 	.inst	0x4c42444c ; undefined
    2ba0:	58414d5f 	ldr	xzr, 85548 <__bss_end+0x84b38>
    2ba4:	5f30315f 	.inst	0x5f30315f ; undefined
    2ba8:	5f505845 	.inst	0x5f505845 ; undefined
    2bac:	3934205f 	strb	wzr, [x2, #3336]
    2bb0:	5f003233 	.inst	0x5f003233 ; undefined
    2bb4:	4345445f 	.inst	0x4345445f ; undefined
    2bb8:	4d5f3436 	.inst	0x4d5f3436 ; undefined
    2bbc:	5f5f4e49 	.inst	0x5f5f4e49 ; undefined
    2bc0:	2d453120 	ldp	s0, s12, [x9, #40]
    2bc4:	44333833 	.inst	0x44333833 ; undefined
    2bc8:	5f5f0044 	.inst	0x5f5f0044 ; undefined
    2bcc:	33544c46 	.inst	0x33544c46 ; undefined
    2bd0:	494d5f32 	.inst	0x494d5f32 ; undefined
    2bd4:	205f5f4e 	.inst	0x205f5f4e ; undefined
    2bd8:	37312e31 	tbnz	w17, #6, 519c <__bss_end+0x478c>
    2bdc:	34393435 	cbz	w21, 75260 <__bss_end+0x74850>
    2be0:	38303533 	.inst	0x38303533 ; undefined
    2be4:	38323232 	ldsetb	w18, w18, [x17]
    2be8:	37303537 	tbnz	w23, #6, 328c <__bss_end+0x287c>
    2bec:	37383639 	tbnz	w25, #7, 32b0 <__bss_end+0x28a0>
    2bf0:	33353633 	.inst	0x33353633 ; undefined
    2bf4:	32323237 	orr	w23, w17, #0x7ffc000
    2bf8:	36353432 	tbz	w18, #6, ffffffffffffd27c <__bss_end+0xffffffffffffc86c>
    2bfc:	332d6538 	.inst	0x332d6538 ; undefined
    2c00:	32334638 	orr	w24, w17, #0x7fffe000
    2c04:	445f5f00 	.inst	0x445f5f00 ; undefined
    2c08:	455f4c42 	.inst	0x455f4c42 ; undefined
    2c0c:	4c495350 	.inst	0x4c495350 ; undefined
    2c10:	5f5f4e4f 	.inst	0x5f5f4e4f ; undefined
    2c14:	64282820 	.inst	0x64282820 ; undefined
    2c18:	6c62756f 	ldnp	d15, d29, [x11, #-480]
    2c1c:	2e322965 	.inst	0x2e322965 ; undefined
    2c20:	34303232 	cbz	w18, 63264 <__bss_end+0x62854>
    2c24:	34303634 	cbz	w20, 632e8 <__bss_end+0x628d8>
    2c28:	30353239 	adr	x25, 6d26d <__bss_end+0x6c85d>
    2c2c:	30333133 	adr	x19, 69251 <__bss_end+0x68841>
    2c30:	34383038 	cbz	w24, 73234 <__bss_end+0x72824>
    2c34:	33363237 	.inst	0x33363237 ; undefined
    2c38:	31363333 	adds	w19, w25, #0xd8c
    2c3c:	34363138 	cbz	w24, 6f260 <__bss_end+0x6e850>
    2c40:	65323630 	.inst	0x65323630 ; undefined
    2c44:	4c36312d 	.inst	0x4c36312d ; undefined
    2c48:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    2c4c:	47415250 	.inst	0x47415250 ; undefined
    2c50:	525f414d 	.inst	0x525f414d ; undefined
    2c54:	46454445 	.inst	0x46454445 ; undefined
    2c58:	5f454e49 	.inst	0x5f454e49 ; undefined
    2c5c:	4e545845 	uzp2	v5.8h, v2.8h, v20.8h
    2c60:	20454d41 	.inst	0x20454d41 ; undefined
    2c64:	5f5f0031 	.inst	0x5f5f0031 ; undefined
    2c68:	5f474953 	.inst	0x5f474953 ; undefined
    2c6c:	4d4f5441 	.inst	0x4d4f5441 ; undefined
    2c70:	545f4349 	b.ls	c14d8 <__bss_end+0xc0ac8>  // b.plast
    2c74:	5f455059 	.inst	0x5f455059 ; undefined
    2c78:	6e69205f 	usubl2	v31.4s, v2.8h, v9.8h
    2c7c:	494d0074 	.inst	0x494d0074 ; undefined
    2c80:	555f494e 	.inst	0x555f494e ; undefined
    2c84:	5f545241 	.inst	0x5f545241 ; undefined
    2c88:	45534142 	.inst	0x45534142 ; undefined
    2c8c:	55412820 	.inst	0x55412820 ; undefined
    2c90:	45505f58 	.inst	0x45505f58 ; undefined
    2c94:	425f4952 	.inst	0x425f4952 ; undefined
    2c98:	20455341 	.inst	0x20455341 ; undefined
    2c9c:	7830202b 	ldeorh	w16, w11, [x1]
    2ca0:	00293034 	.inst	0x00293034 ; NYI
    2ca4:	4c465f5f 	.inst	0x4c465f5f ; undefined
    2ca8:	38323154 	ldsetb	w18, w20, [x10]
    2cac:	5341485f 	.inst	0x5341485f ; undefined
    2cb0:	4e45445f 	.inst	0x4e45445f ; undefined
    2cb4:	5f4d524f 	.inst	0x5f4d524f ; undefined
    2cb8:	0031205f 	.inst	0x0031205f ; NYI
    2cbc:	52415f5f 	.inst	0x52415f5f ; undefined
    2cc0:	45465f4d 	.inst	0x45465f4d ; undefined
    2cc4:	52555441 	.inst	0x52555441 ; undefined
    2cc8:	56535f45 	.inst	0x56535f45 ; undefined
    2ccc:	5f5f0045 	.inst	0x5f5f0045 ; undefined
    2cd0:	4c42444c 	.inst	0x4c42444c ; undefined
    2cd4:	5341485f 	.inst	0x5341485f ; undefined
    2cd8:	4e45445f 	.inst	0x4e45445f ; undefined
    2cdc:	5f4d524f 	.inst	0x5f4d524f ; undefined
    2ce0:	0031205f 	.inst	0x0031205f ; NYI
    2ce4:	4c465f5f 	.inst	0x4c465f5f ; undefined
    2ce8:	5f343654 	.inst	0x5f343654 ; undefined
    2cec:	544e414d 	b.le	9f514 <__bss_end+0x9eb04>
    2cf0:	4749445f 	.inst	0x4749445f ; undefined
    2cf4:	35205f5f 	cbnz	wzr, 438dc <__bss_end+0x42ecc>
    2cf8:	5f5f0033 	.inst	0x5f5f0033 ; undefined
    2cfc:	36434544 	tbz	w4, #8, 95a4 <__bss_end+0x8b94>
    2d00:	414d5f34 	.inst	0x414d5f34 ; undefined
    2d04:	445f544e 	.inst	0x445f544e ; undefined
    2d08:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    2d0c:	00363120 	.inst	0x00363120 ; NYI
    2d10:	4c465f5f 	.inst	0x4c465f5f ; undefined
    2d14:	41485f54 	.inst	0x41485f54 ; undefined
    2d18:	45445f53 	.inst	0x45445f53 ; undefined
    2d1c:	4d524f4e 	.inst	0x4d524f4e ; undefined
    2d20:	31205f5f 	cmn	w26, #0x817
    2d24:	495f5f00 	.inst	0x495f5f00 ; undefined
    2d28:	465f544e 	.inst	0x465f544e ; undefined
    2d2c:	36545341 	tbz	w1, #10, ffffffffffffb794 <__bss_end+0xffffffffffffad84>
    2d30:	49575f34 	.inst	0x49575f34 ; undefined
    2d34:	5f485444 	shl	d4, d2, #8
    2d38:	3436205f 	cbz	wzr, 6f140 <__bss_end+0x6e730>
    2d3c:	445f5f00 	.inst	0x445f5f00 ; undefined
    2d40:	445f4c42 	.inst	0x445f4c42 ; undefined
    2d44:	4d494345 	.inst	0x4d494345 ; undefined
    2d48:	445f4c41 	.inst	0x445f4c41 ; undefined
    2d4c:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    2d50:	00373120 	.inst	0x00373120 ; NYI
    2d54:	2f637273 	fcmla	v19.4h, v19.4h, v3.h[1], #270
    2d58:	74696e69 	.inst	0x74696e69 ; undefined
    2d5c:	746e692f 	.inst	0x746e692f ; undefined
    2d60:	75727265 	.inst	0x75727265 ; undefined
    2d64:	5f737470 	sqshl	d16, d3, #51
    2d68:	75746573 	.inst	0x75746573 ; undefined
    2d6c:	00532e70 	.inst	0x00532e70 ; undefined
    2d70:	20554e47 	.inst	0x20554e47 ; undefined
    2d74:	32205341 	orr	w1, w26, #0x1fffff
    2d78:	2e32332e 	usubw	v14.8h, v25.8h, v18.8b
    2d7c:	6f730030 	mla	v16.8h, v1.8h, v3.h[3]
    2d80:	61777466 	.inst	0x61777466 ; undefined
    2d84:	695f6572 	ldpsw	x18, x25, [x11, #248]
    2d88:	7265746e 	.inst	0x7265746e ; undefined
    2d8c:	74707572 	.inst	0x74707572 ; undefined
    2d90:	6e61685f 	fcvtxn2	v31.4s, v2.2d
    2d94:	72656c64 	.inst	0x72656c64 ; undefined
    2d98:	74616400 	.inst	0x74616400 ; undefined
    2d9c:	62615f61 	.inst	0x62615f61 ; undefined
    2da0:	5f74726f 	sqdmlsl	s15, h19, v4.h[3]
    2da4:	646e6168 	.inst	0x646e6168 ; undefined
    2da8:	0072656c 	.inst	0x0072656c ; undefined
    2dac:	74736166 	.inst	0x74736166 ; undefined
    2db0:	7172695f 	cmp	w10, #0xc9a, lsl #12
    2db4:	6e61685f 	fcvtxn2	v31.4s, v2.2d
    2db8:	72656c64 	.inst	0x72656c64 ; undefined
    2dbc:	73657200 	.inst	0x73657200 ; undefined
    2dc0:	685f7465 	.inst	0x685f7465 ; undefined
    2dc4:	6c646e61 	ldnp	d1, d27, [x19, #-448]
    2dc8:	73007265 	.inst	0x73007265 ; undefined
    2dcc:	692f6372 	stgp	x18, x24, [x27, #-544]
    2dd0:	2f74696e 	umlsl	v14.4s, v11.4h, v4.h[7]
    2dd4:	65746e69 	fnmls	z9.h, p3/m, z19.h, z20.h
    2dd8:	70757272 	adr	x18, edc27 <__bss_end+0xed217>
    2ddc:	632e7374 	.inst	0x632e7374 ; undefined
    2de0:	65727000 	fnmls	z0.h, p4/m, z0.h, z18.h
    2de4:	63746566 	.inst	0x63746566 ; undefined
    2de8:	62615f68 	.inst	0x62615f68 ; undefined
    2dec:	5f74726f 	sqdmlsl	s15, h19, v4.h[3]
    2df0:	646e6168 	.inst	0x646e6168 ; undefined
    2df4:	0072656c 	.inst	0x0072656c ; undefined
    2df8:	65646e75 	fnmls	z21.h, p3/m, z19.h, z4.h
    2dfc:	656e6966 	fnmls	z6.h, p2/m, z11.h, z14.h
    2e00:	6e695f64 	uqrshl	v4.8h, v27.8h, v9.8h
    2e04:	75727473 	.inst	0x75727473 ; undefined
    2e08:	6f697463 	uqshl	v3.2d, v3.2d, #41
    2e0c:	61685f6e 	.inst	0x61685f6e ; undefined
    2e10:	656c646e 	fnmls	z14.h, p1/m, z3.h, z12.h
    2e14:	72730072 	.inst	0x72730072 ; undefined
    2e18:	6e692f63 	uqsub	v3.8h, v27.8h, v9.8h
    2e1c:	622f7469 	.inst	0x622f7469 ; undefined
    2e20:	2e746f6f 	umin	v15.4h, v27.4h, v20.4h
    2e24:	72730053 	.inst	0x72730053 ; undefined
    2e28:	6d6d2f63 	ldp	d3, d11, [x27, #-304]
    2e2c:	6d656d2f 	ldp	d15, d27, [x9, #-432]
    2e30:	4700532e 	.inst	0x4700532e ; undefined
    2e34:	4e454c50 	.inst	0x4e454c50 ; undefined
    2e38:	50470030 	adr	x16, 90e3e <__bss_end+0x9042e>
    2e3c:	314e454c 	adds	w12, w10, #0x391, lsl #12
    2e40:	72617500 	.inst	0x72617500 ; undefined
    2e44:	72775f74 	.inst	0x72775f74 ; undefined
    2e48:	00657469 	.inst	0x00657469 ; undefined
    2e4c:	6f697067 	fcmla	v7.8h, v3.8h, v9.h[1], #270
    2e50:	6765725f 	.inst	0x6765725f ; undefined
    2e54:	00745f73 	.inst	0x00745f73 ; undefined
    2e58:	74726175 	.inst	0x74726175 ; undefined
    2e5c:	6165725f 	.inst	0x6165725f ; undefined
    2e60:	72730064 	.inst	0x72730064 ; undefined
    2e64:	65702f63 	fmls	z3.h, p3/m, z27.h, z16.h
    2e68:	752f6972 	.inst	0x752f6972 ; undefined
    2e6c:	2e747261 	uabdl	v1.4s, v19.4h, v20.4h
    2e70:	50470063 	adr	x3, 90e7e <__bss_end+0x9046e>
    2e74:	4c455346 	.inst	0x4c455346 ; undefined
    2e78:	75700034 	.inst	0x75700034 ; undefined
    2e7c:	67006374 	.inst	0x67006374 ; undefined
    2e80:	006f6970 	.inst	0x006f6970 ; undefined
    2e84:	45535047 	.inst	0x45535047 ; undefined
    2e88:	47003054 	.inst	0x47003054 ; undefined
    2e8c:	54455350 	.inst	0x54455350 ; undefined
    2e90:	50470031 	adr	x17, 90e96 <__bss_end+0x90486>
    2e94:	4c455346 	.inst	0x4c455346 ; undefined
    2e98:	50470031 	adr	x17, 90e9e <__bss_end+0x9048e>
    2e9c:	4c455346 	.inst	0x4c455346 ; undefined
    2ea0:	50470032 	adr	x18, 90ea6 <__bss_end+0x90496>
    2ea4:	4c455346 	.inst	0x4c455346 ; undefined
    2ea8:	50470033 	adr	x19, 90eae <__bss_end+0x9049e>
    2eac:	4c455346 	.inst	0x4c455346 ; undefined
    2eb0:	50470035 	adr	x21, 90eb6 <__bss_end+0x904a6>
    2eb4:	304e4552 	adr	x18, 9f75d <__bss_end+0x9ed4d>
    2eb8:	52504700 	.inst	0x52504700 ; undefined
    2ebc:	00314e45 	.inst	0x00314e45 ; NYI
    2ec0:	454c5047 	.inst	0x454c5047 ; undefined
    2ec4:	47003056 	.inst	0x47003056 ; undefined
    2ec8:	56454c50 	.inst	0x56454c50 ; undefined
    2ecc:	50470031 	adr	x17, 90ed2 <__bss_end+0x904c2>
    2ed0:	304e4546 	adr	x6, 9f779 <__bss_end+0x9ed69>
    2ed4:	6e697500 	uabd	v0.8h, v8.8h, v9.8h
    2ed8:	00323374 	.inst	0x00323374 ; NYI
    2edc:	55505047 	.inst	0x55505047 ; undefined
    2ee0:	4b4c4344 	sub	w4, w26, w12, lsr #16
    2ee4:	50470030 	adr	x16, 90eea <__bss_end+0x904da>
    2ee8:	43445550 	.inst	0x43445550 ; undefined
    2eec:	00314b4c 	.inst	0x00314b4c ; NYI
    2ef0:	61746164 	.inst	0x61746164 ; undefined
    2ef4:	49504700 	.inst	0x49504700 ; undefined
    2ef8:	41425f4f 	.inst	0x41425f4f ; undefined
    2efc:	28204553 	stnp	w19, w17, [x10, #-256]
    2f00:	49524550 	.inst	0x49524550 ; undefined
    2f04:	5341425f 	.inst	0x5341425f ; undefined
    2f08:	202b2045 	.inst	0x202b2045 ; undefined
    2f0c:	30307830 	adr	x16, 63e11 <__bss_end+0x63401>
    2f10:	30303032 	adr	x18, 63515 <__bss_end+0x62b05>
    2f14:	00293030 	.inst	0x00293030 ; NYI
    2f18:	616c6564 	.inst	0x616c6564 ; undefined
    2f1c:	50470079 	adr	x25, 90f2a <__bss_end+0x9051a>
    2f20:	304e4548 	adr	x8, 9f7c9 <__bss_end+0x9edb9>
    2f24:	48504700 	ldxrh	w0, [x24]
    2f28:	00314e45 	.inst	0x00314e45 ; NYI
    2f2c:	55505047 	.inst	0x55505047 ; undefined
    2f30:	61750044 	.inst	0x61750044 ; undefined
    2f34:	725f7472 	.inst	0x725f7472 ; undefined
    2f38:	5f646165 	.inst	0x5f646165 ; undefined
    2f3c:	69617661 	ldpsw	x1, x29, [x19, #-248]
    2f40:	6c62616c 	ldnp	d12, d24, [x11, #-480]
    2f44:	50470065 	adr	x5, 90f52 <__bss_end+0x90542>
    2f48:	4e455241 	.inst	0x4e455241 ; undefined
    2f4c:	50470030 	adr	x16, 90f52 <__bss_end+0x90542>
    2f50:	4e455241 	.inst	0x4e455241 ; undefined
    2f54:	50470031 	adr	x17, 90f5a <__bss_end+0x9054a>
    2f58:	314e4546 	adds	w6, w10, #0x391, lsl #12
    2f5c:	41504700 	.inst	0x41504700 ; undefined
    2f60:	304e4546 	adr	x6, 9f809 <__bss_end+0x9edf9>
    2f64:	41504700 	.inst	0x41504700 ; undefined
    2f68:	314e4546 	adds	w6, w10, #0x391, lsl #12
    2f6c:	43504700 	.inst	0x43504700 ; undefined
    2f70:	0030524c 	.inst	0x0030524c ; NYI
    2f74:	4c435047 	.inst	0x4c435047 ; undefined
    2f78:	47003152 	.inst	0x47003152 ; undefined
    2f7c:	53444550 	.inst	0x53444550 ; undefined
    2f80:	50470030 	adr	x16, 90f86 <__bss_end+0x90576>
    2f84:	31534445 	adds	w5, w2, #0x4d1, lsl #12
    2f88:	6e697500 	uabd	v0.8h, v8.8h, v9.8h
    2f8c:	5f003874 	.inst	0x5f003874 ; undefined
    2f90:	5f72675f 	.inst	0x5f72675f ; undefined
    2f94:	00706f74 	.inst	0x00706f74 ; undefined
    2f98:	63747570 	.inst	0x63747570 ; undefined
    2f9c:	75700066 	.inst	0x75700066 ; undefined
    2fa0:	00706374 	.inst	0x00706374 ; undefined
    2fa4:	706d756e 	adr	x14, dde53 <__bss_end+0xdd443>
    2fa8:	70667400 	adr	x0, cfe2b <__bss_end+0xcf41b>
    2fac:	726f665f 	.inst	0x726f665f ; undefined
    2fb0:	0074616d 	.inst	0x0074616d ; undefined
    2fb4:	61326975 	.inst	0x61326975 ; undefined
    2fb8:	73616200 	.inst	0x73616200 ; undefined
    2fbc:	5f5f0065 	.inst	0x5f5f0065 ; undefined
    2fc0:	63756e67 	.inst	0x63756e67 ; undefined
    2fc4:	5f61765f 	sqshl	d31, d18, #33
    2fc8:	7473696c 	.inst	0x7473696c ; undefined
    2fcc:	6f626100 	umlsl2	v0.4s, v8.8h, v2.h[2]
    2fd0:	5f007472 	.inst	0x5f007472 ; undefined
    2fd4:	5f72675f 	.inst	0x5f72675f ; undefined
    2fd8:	7366666f 	.inst	0x7366666f ; undefined
    2fdc:	64747300 	.inst	0x64747300 ; undefined
    2fe0:	5f74756f 	sqshl	d15, d11, #52
    2fe4:	66747570 	.inst	0x66747570 ; undefined
    2fe8:	64747300 	.inst	0x64747300 ; undefined
    2fec:	5f74756f 	sqshl	d15, d11, #52
    2ff0:	70747570 	adr	x16, ebe9f <__bss_end+0xeb48f>
    2ff4:	67696400 	.inst	0x67696400 ; undefined
    2ff8:	73007469 	.inst	0x73007469 ; undefined
    2ffc:	752f6372 	.inst	0x752f6372 ; undefined
    3000:	736c6974 	.inst	0x736c6974 ; undefined
    3004:	6972702f 	ldpsw	x15, x28, [x1, #-112]
    3008:	2e66746e 	uabd	v14.4h, v3.4h, v6.4h
    300c:	75700063 	.inst	0x75700063 ; undefined
    3010:	77686374 	.inst	0x77686374 ; undefined
    3014:	765f5f00 	.inst	0x765f5f00 ; undefined
    3018:	666f5f72 	.inst	0x666f5f72 ; undefined
    301c:	5f007366 	.inst	0x5f007366 ; undefined
    3020:	5f72765f 	sqshl	d31, d18, #50
    3024:	00706f74 	.inst	0x00706f74 ; undefined
    3028:	74735f5f 	.inst	0x74735f5f ; undefined
    302c:	006b6361 	.inst	0x006b6361 ; undefined
    3030:	2f637273 	fcmla	v19.4h, v19.4h, v3.h[1], #270
    3034:	6c697475 	ldnp	d21, d29, [x3, #-368]
    3038:	74752f73 	.inst	0x74752f73 ; undefined
    303c:	2e736c69 	umin	v9.4h, v3.4h, v19.4h
    3040:	79630063 	ldrh	w3, [x3, #4480]
    3044:	73656c63 	.inst	0x73656c63 ; undefined
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
    mrs x0, mpidr_el1
   0:	3a434347 	ccmn	w26, w3, #0x7, mi  // mi = first
    and x0, x0, #0xFF
   4:	4e472820 	trn1	v0.8h, v1.8h, v7.8h
    cbnz x0, halt_proc
   8:	6f542055 	umlal2	v21.4s, v2.8h, v4.h[1]
    adr x0, __bss_start
   c:	68636c6f 	.inst	0x68636c6f ; undefined
    adr x1, __bss_end
  10:	206e6961 	.inst	0x206e6961 ; undefined
    sub x1, x1, x0
  14:	20726f66 	.inst	0x20726f66 ; undefined
    bl   memzero
  18:	20656874 	.inst	0x20656874 ; undefined
    bl el1_setup
  1c:	72702d41 	.inst	0x72702d41 ; undefined
    b   kernel_main
  20:	6c69666f 	ldnp	d15, d25, [x19, #-368]
    wfe
  24:	72412065 	.inst	0x72412065 ; undefined
    b halt_proc
  28:	74696863 	.inst	0x74696863 ; undefined
  2c:	75746365 	.inst	0x75746365 ; undefined
{
  30:	38206572 	.inst	0x38206572 ; undefined
  34:	322d332e 	orr	w14, w25, #0xfff80000
  38:	2e393130 	usubw	v16.8h, v9.8h, v25.8b
    uart_init();
  3c:	28203330 	stnp	w16, w12, [x25, #-256]
    init_printf(0, putc);
  40:	2d6d7261 	ldp	s1, s28, [x19, #-152]
  44:	2d6c6572 	ldp	s18, s25, [x11, #-160]
  48:	36332e38 	tbz	w24, #6, 660c <__bss_end+0x5bfc>
  4c:	38202929 	.inst	0x38202929 ; undefined
    printf("Core %d up at Exception level %d\n", get_core_id(), get_el());
  50:	302e332e 	adr	x14, 5c6b5 <__bss_end+0x5bca5>
	...

Disassembly of section .debug_frame:

0000000000000000 <.debug_frame>:
    mrs x0, mpidr_el1
   0:	0000000c 	.inst	0x0000000c ; undefined
    and x0, x0, #0xFF
   4:	ffffffff 	.inst	0xffffffff ; undefined
    cbnz x0, halt_proc
   8:	78040001 	sturh	w1, [x0, #64]
    adr x0, __bss_start
   c:	001f0c1e 	.inst	0x001f0c1e ; undefined
    adr x1, __bss_end
  10:	00000024 	.inst	0x00000024 ; undefined
    sub x1, x1, x0
  14:	00000000 	.inst	0x00000000 ; undefined
    bl   memzero
  18:	00000030 	.inst	0x00000030 ; undefined
    bl el1_setup
  1c:	00000000 	.inst	0x00000000 ; undefined
    b   kernel_main
  20:	00000044 	.inst	0x00000044 ; undefined
    wfe
  24:	00000000 	.inst	0x00000000 ; undefined
    b halt_proc
  28:	9d200e41 	.inst	0x9d200e41 ; undefined
  2c:	42039e04 	.inst	0x42039e04 ; undefined
{
  30:	00000293 	.inst	0x00000293 ; undefined
  34:	00000000 	.inst	0x00000000 ; undefined
  38:	0000000c 	.inst	0x0000000c ; undefined
    uart_init();
  3c:	ffffffff 	.inst	0xffffffff ; undefined
    init_printf(0, putc);
  40:	78040001 	sturh	w1, [x0, #64]
  44:	001f0c1e 	.inst	0x001f0c1e ; undefined
  48:	0000001c 	.inst	0x0000001c ; undefined
  4c:	00000038 	.inst	0x00000038 ; undefined
    printf("Core %d up at Exception level %d\n", get_core_id(), get_el());
  50:	000000d0 	.inst	0x000000d0 ; undefined
  54:	00000000 	.inst	0x00000000 ; undefined
  58:	00000018 	.inst	0x00000018 ; undefined
  5c:	00000000 	.inst	0x00000000 ; undefined
  60:	9d100e41 	.inst	0x9d100e41 ; undefined
  64:	00019e02 	.inst	0x00019e02 ; undefined
  68:	0000001c 	.inst	0x0000001c ; undefined
  6c:	00000038 	.inst	0x00000038 ; undefined
    }
  70:	000000f0 	.inst	0x000000f0 ; undefined
  74:	00000000 	.inst	0x00000000 ; undefined
    ldr x0, =(SCTLR_EL1_EE_LITTLE | SCTLR_EL1_E0E_LITTLE |\
  78:	00000018 	.inst	0x00000018 ; undefined
    msr SCTLR_EL1, x0
  7c:	00000000 	.inst	0x00000000 ; undefined
    ldr x0, =(SCR_EL3_RW_AARCH64 | SCR_EL3_NS)
  80:	9d100e41 	.inst	0x9d100e41 ; undefined
    msr SCR_EL3, x0
  84:	00019e02 	.inst	0x00019e02 ; undefined
    ldr x0, =(HCR_EL2_RW_AARCH64)
  88:	0000001c 	.inst	0x0000001c ; undefined
    msr HCR_EL2, x0 
  8c:	00000038 	.inst	0x00000038 ; undefined
    msr ELR_EL3, lr
  90:	00000110 	.inst	0x00000110 ; undefined
    ldr x0, =(SPSR_MODE_EL1h | SPSR_MASK_EXCEPTIONS)
  94:	00000000 	.inst	0x00000000 ; undefined
    msr SPSR_EL3, x0
  98:	00000018 	.inst	0x00000018 ; undefined
    ldr x0, =STACK_BASE
  9c:	00000000 	.inst	0x00000000 ; undefined
    msr SP_EL1, x0
  a0:	9d100e41 	.inst	0x9d100e41 ; undefined
    eret
  a4:	00019e02 	.inst	0x00019e02 ; undefined
  a8:	0000001c 	.inst	0x0000001c ; undefined
  ac:	00000038 	.inst	0x00000038 ; undefined
  b0:	00000130 	.inst	0x00000130 ; undefined
  b4:	00000000 	.inst	0x00000000 ; undefined
  b8:	00000018 	.inst	0x00000018 ; undefined
  bc:	00000000 	.inst	0x00000000 ; undefined
  c0:	9d100e41 	.inst	0x9d100e41 ; undefined
  c4:	00019e02 	.inst	0x00019e02 ; undefined
  c8:	0000001c 	.inst	0x0000001c ; undefined
  cc:	00000038 	.inst	0x00000038 ; undefined
void irq_handler(void) {
  d0:	00000150 	.inst	0x00000150 ; undefined
    printf("IRQ HANDLER\n");
  d4:	00000000 	.inst	0x00000000 ; undefined
  d8:	00000018 	.inst	0x00000018 ; undefined
void irq_handler(void) {
  dc:	00000000 	.inst	0x00000000 ; undefined
    printf("IRQ HANDLER\n");
  e0:	9d100e41 	.inst	0x9d100e41 ; undefined
    while(1);
  e4:	00019e02 	.inst	0x00019e02 ; undefined
  e8:	0000001c 	.inst	0x0000001c ; undefined
  ec:	00000038 	.inst	0x00000038 ; undefined
void __attribute__ ((interrupt ("ABORT"))) reset_handler(void) {
  f0:	00000170 	.inst	0x00000170 ; undefined
    printf("RESET HANDLER\n");
  f4:	00000000 	.inst	0x00000000 ; undefined
  f8:	00000018 	.inst	0x00000018 ; undefined
void __attribute__ ((interrupt ("ABORT"))) reset_handler(void) {
  fc:	00000000 	.inst	0x00000000 ; undefined
    printf("RESET HANDLER\n");
 100:	9d100e41 	.inst	0x9d100e41 ; undefined
    while(1);
 104:	00019e02 	.inst	0x00019e02 ; undefined
 108:	0000001c 	.inst	0x0000001c ; undefined
 10c:	00000038 	.inst	0x00000038 ; undefined
void __attribute__ ((interrupt ("ABORT"))) prefetch_abort_handler(void) {
 110:	00000190 	.inst	0x00000190 ; undefined
    printf("PREFETCH ABORT HANDLER\n");
 114:	00000000 	.inst	0x00000000 ; undefined
 118:	00000018 	.inst	0x00000018 ; undefined
void __attribute__ ((interrupt ("ABORT"))) prefetch_abort_handler(void) {
 11c:	00000000 	.inst	0x00000000 ; undefined
    printf("PREFETCH ABORT HANDLER\n");
 120:	9d100e41 	.inst	0x9d100e41 ; undefined
    while(1);
 124:	00019e02 	.inst	0x00019e02 ; undefined
 128:	0000000c 	.inst	0x0000000c ; undefined
 12c:	ffffffff 	.inst	0xffffffff ; undefined
void __attribute__ ((interrupt ("ABORT"))) data_abort_handler(void) {
 130:	78040001 	sturh	w1, [x0, #64]
    printf("DATA ABORT HANDLER\n");
 134:	001f0c1e 	.inst	0x001f0c1e ; undefined
 138:	0000002c 	.inst	0x0000002c ; undefined
void __attribute__ ((interrupt ("ABORT"))) data_abort_handler(void) {
 13c:	00000128 	.inst	0x00000128 ; undefined
    printf("DATA ABORT HANDLER\n");
 140:	000001c0 	.inst	0x000001c0 ; undefined
    while(1);
 144:	00000000 	.inst	0x00000000 ; undefined
 148:	000000a4 	.inst	0x000000a4 ; undefined
 14c:	00000000 	.inst	0x00000000 ; undefined
void __attribute__ ((interrupt ("UNDEF"))) undefined_instruction_handler(void) {
 150:	9d200e41 	.inst	0x9d200e41 ; undefined
    printf("UNDEFINED INSTRUCTION HANDLER\n");
 154:	44039e04 	.inst	0x44039e04 ; undefined
 158:	01940293 	.inst	0x01940293 ; undefined
void __attribute__ ((interrupt ("UNDEF"))) undefined_instruction_handler(void) {
 15c:	d3ddde63 	.inst	0xd3ddde63 ; undefined
    printf("UNDEFINED INSTRUCTION HANDLER\n");
 160:	00000ed4 	.inst	0x00000ed4 ; undefined
    while(1);
 164:	00000000 	.inst	0x00000000 ; undefined
 168:	00000014 	.inst	0x00000014 ; undefined
 16c:	00000128 	.inst	0x00000128 ; undefined
void __attribute__ ((interrupt ("SWI"))) software_interrupt_handler(void) {
 170:	00000270 	.inst	0x00000270 ; undefined
    printf("SWI HANDLER\n");
 174:	00000000 	.inst	0x00000000 ; undefined
 178:	00000018 	.inst	0x00000018 ; undefined
void __attribute__ ((interrupt ("SWI"))) software_interrupt_handler(void) {
 17c:	00000000 	.inst	0x00000000 ; undefined
    printf("SWI HANDLER\n");
 180:	00000014 	.inst	0x00000014 ; undefined
    while(1);
 184:	00000128 	.inst	0x00000128 ; undefined
 188:	00000290 	.inst	0x00000290 ; undefined
 18c:	00000000 	.inst	0x00000000 ; undefined
void __attribute__ ((interrupt ("FIQ"))) fast_irq_handler(void) {
 190:	00000014 	.inst	0x00000014 ; undefined
    printf("FIQ HANDLER\n");
 194:	00000000 	.inst	0x00000000 ; undefined
 198:	00000014 	.inst	0x00000014 ; undefined
void __attribute__ ((interrupt ("FIQ"))) fast_irq_handler(void) {
 19c:	00000128 	.inst	0x00000128 ; undefined
    printf("FIQ HANDLER\n");
 1a0:	000002b0 	.inst	0x000002b0 ; undefined
    while(1);
 1a4:	00000000 	.inst	0x00000000 ; undefined
    str  xzr, [x0], #8
 1a8:	00000018 	.inst	0x00000018 ; undefined
    subs x1, x1, #8
 1ac:	00000000 	.inst	0x00000000 ; undefined
    b.gt memzero
 1b0:	00000014 	.inst	0x00000014 ; undefined
    ret
 1b4:	00000128 	.inst	0x00000128 ; undefined
 1b8:	000002d0 	.inst	0x000002d0 ; undefined
 1bc:	00000000 	.inst	0x00000000 ; undefined
void uart_init(){
 1c0:	00000008 	.inst	0x00000008 ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1c4:	00000000 	.inst	0x00000000 ; undefined
    delay(150);
 1c8:	0000000c 	.inst	0x0000000c ; undefined
void uart_init(){
 1cc:	ffffffff 	.inst	0xffffffff ; undefined
 1d0:	78040001 	sturh	w1, [x0, #64]
    *AUX_ENABLES = 0;
 1d4:	001f0c1e 	.inst	0x001f0c1e ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1d8:	00000014 	.inst	0x00000014 ; undefined
    *AUX_ENABLES = 0;
 1dc:	000001c8 	.inst	0x000001c8 ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1e0:	000002e0 	.inst	0x000002e0 ; undefined
    *AUX_ENABLES = 0;
 1e4:	00000000 	.inst	0x00000000 ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1e8:	000000b0 	.inst	0x000000b0 ; undefined
    *AUX_ENABLES = 0;
 1ec:	00000000 	.inst	0x00000000 ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
 1f0:	00000014 	.inst	0x00000014 ; undefined
    gpio->GPPUD = 0;
 1f4:	000001c8 	.inst	0x000001c8 ; undefined
    delay(150);
 1f8:	00000390 	.inst	0x00000390 ; undefined
    gpio->GPPUDCLK0 = (1 << 14) | (1 << 15); 
 1fc:	00000000 	.inst	0x00000000 ; undefined
 200:	00000014 	.inst	0x00000014 ; undefined
    delay(150);
 204:	00000000 	.inst	0x00000000 ; undefined
    gpio->GPPUDCLK0 = (1 << 14) | (1 << 15); 
 208:	0000003c 	.inst	0x0000003c ; undefined
    delay(150);
 20c:	000001c8 	.inst	0x000001c8 ; undefined
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
 210:	000003b0 	.inst	0x000003b0 ; undefined
    mini_uart->AUX_MU_IIR_REG = 0x3 << 1; 
 214:	00000000 	.inst	0x00000000 ; undefined
    gpio->GPPUDCLK0 = 0; 
 218:	000000c8 	.inst	0x000000c8 ; undefined
    mini_uart->AUX_MU_BAUD_REG = 271;
 21c:	00000000 	.inst	0x00000000 ; undefined
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
 220:	9d400e41 	.inst	0x9d400e41 ; undefined
    *(reg32*)0x3f215068 = 271;
 224:	43079e08 	.inst	0x43079e08 ; undefined
 228:	05940693 	mov	z19.s, p4/z, #52
    gpio->GPPUDCLK0 = 0; 
 22c:	96049542 	bl	fffffffff8125734 <__bss_end+0xfffffffff8124d24>
    *AUX_ENABLES = 1;
 230:	02974303 	.inst	0x02974303 ; undefined
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
 234:	0a650198 	bic	w24, w12, w5, lsr #0
 238:	d8d7ddde 	prfm	#0x1e, fffffffffffafdf0 <__bss_end+0xfffffffffffaf3e0>
 23c:	d4d3d6d5 	.inst	0xd4d3d6d5 ; undefined
 240:	0b41000e 	add	w14, w0, w1, lsr #0
    mini_uart->AUX_MU_IIR_REG = 0x3 << 1; 
 244:	00000000 	.inst	0x00000000 ; undefined
    mini_uart->AUX_MU_BAUD_REG = 271;
 248:	0000005c 	.inst	0x0000005c ; undefined
    *AUX_ENABLES = 1;
 24c:	000001c8 	.inst	0x000001c8 ; undefined
}
 250:	00000480 	.inst	0x00000480 ; undefined
    *(reg32*)0x3f215068 = 271;
 254:	00000000 	.inst	0x00000000 ; undefined
    *AUX_ENABLES = 1;
 258:	00000338 	.inst	0x00000338 ; undefined
}
 25c:	00000000 	.inst	0x00000000 ; undefined
 260:	9d700e41 	.inst	0x9d700e41 ; undefined
 264:	420d9e0e 	.inst	0x420d9e0e ; undefined
 268:	07980897 	.inst	0x07980897 ; undefined
 26c:	940c9343 	bl	324f78 <__bss_end+0x324568>
    return mini_uart->AUX_MU_LSR_REG & 0x1;
 270:	0a95430b 	and	w11, w24, w21, asr #16
 274:	99420996 	.inst	0x99420996 ; undefined
 278:	43059a06 	.inst	0x43059a06 ; undefined
 27c:	0a51049b 	and	w27, w4, w17, lsr #1
}
 280:	d9dbddde 	.inst	0xd9dbddde ; undefined
 284:	d5d8d7da 	.inst	0xd5d8d7da ; undefined
 288:	0ed4d3d6 	.inst	0x0ed4d3d6 ; undefined
 28c:	020b4100 	.inst	0x020b4100 ; undefined
    uint8 data = mini_uart->AUX_MU_IO_REG & 0xFF;
 290:	ddde0a5a 	.inst	0xddde0a5a ; undefined
 294:	d7dad9db 	.inst	0xd7dad9db ; undefined
 298:	d3d6d5d8 	.inst	0xd3d6d5d8 ; undefined
 29c:	41000ed4 	.inst	0x41000ed4 ; undefined
}
 2a0:	0000000b 	.inst	0x0000000b ; undefined
 2a4:	00000000 	.inst	0x00000000 ; undefined
 2a8:	00000014 	.inst	0x00000014 ; undefined
 2ac:	000001c8 	.inst	0x000001c8 ; undefined
    mini_uart->AUX_MU_IO_REG = data;
 2b0:	000007c0 	.inst	0x000007c0 ; undefined
void uart_write(uint8 data){
 2b4:	00000000 	.inst	0x00000000 ; undefined
    mini_uart->AUX_MU_IO_REG = data;
 2b8:	00000014 	.inst	0x00000014 ; undefined
 2bc:	00000000 	.inst	0x00000000 ; undefined
 2c0:	00000024 	.inst	0x00000024 ; undefined
}
 2c4:	000001c8 	.inst	0x000001c8 ; undefined
 2c8:	000007e0 	.inst	0x000007e0 ; undefined
 2cc:	00000000 	.inst	0x00000000 ; undefined
    uart_write(data);
 2d0:	00000068 	.inst	0x00000068 ; undefined
 2d4:	00000000 	.inst	0x00000000 ; undefined
 2d8:	01900e41 	.inst	0x01900e41 ; undefined
 2dc:	119e129d 	.inst	0x119e129d ; undefined
    while (num/d >= base)
 2e0:	0eddde58 	.inst	0x0eddde58 ; undefined
 2e4:	00000000 	.inst	0x00000000 ; undefined
    unsigned int d=1;
 2e8:	00000024 	.inst	0x00000024 ; undefined
 2ec:	000001c8 	.inst	0x000001c8 ; undefined
        d*=base;
 2f0:	00000850 	.inst	0x00000850 ; undefined
    while (num/d >= base)
 2f4:	00000000 	.inst	0x00000000 ; undefined
 2f8:	00000068 	.inst	0x00000068 ; undefined
 2fc:	00000000 	.inst	0x00000000 ; undefined
    while (d!=0) {
 300:	01900e41 	.inst	0x01900e41 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 304:	119e129d 	.inst	0x119e129d ; undefined
 308:	0eddde58 	.inst	0x0eddde58 ; undefined
 30c:	00000000 	.inst	0x00000000 ; undefined
 310:	0000000c 	.inst	0x0000000c ; undefined
        if (n || dgt>0 || d==0) {
 314:	ffffffff 	.inst	0xffffffff ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 318:	78040001 	sturh	w1, [x0, #64]
        if (n || dgt>0 || d==0) {
 31c:	001f0c1e 	.inst	0x001f0c1e ; undefined
 320:	00000014 	.inst	0x00000014 ; undefined
 324:	00000310 	.inst	0x00000310 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 328:	000008c0 	.inst	0x000008c0 ; undefined
        if (n || dgt>0 || d==0) {
 32c:	00000000 	.inst	0x00000000 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 330:	0000000c 	.inst	0x0000000c ; undefined
        if (n || dgt>0 || d==0) {
 334:	00000000 	.inst	0x00000000 ; undefined
        num%= d;
 338:	00000014 	.inst	0x00000014 ; undefined
        d/=base;
 33c:	00000310 	.inst	0x00000310 ; undefined
        if (n || dgt>0 || d==0) {
 340:	000008d0 	.inst	0x000008d0 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
 344:	00000000 	.inst	0x00000000 ; undefined
 348:	0000000c 	.inst	0x0000000c ; undefined
 34c:	00000000 	.inst	0x00000000 ; undefined
 350:	00000014 	.inst	0x00000014 ; undefined
 354:	00000310 	.inst	0x00000310 ; undefined
 358:	000008e0 	.inst	0x000008e0 ; undefined
 35c:	00000000 	.inst	0x00000000 ; undefined
            ++n;
 360:	0000000c 	.inst	0x0000000c ; undefined
    while (d!=0) {
 364:	00000000 	.inst	0x00000000 ; undefined

Disassembly of section .debug_loc:

0000000000000000 <.debug_loc>:
    mrs x0, mpidr_el1
       0:	00000000 	.inst	0x00000000 ; undefined
    and x0, x0, #0xFF
       4:	00000110 	.inst	0x00000110 ; undefined
    cbnz x0, halt_proc
       8:	00000000 	.inst	0x00000000 ; undefined
    adr x0, __bss_start
       c:	00000114 	.inst	0x00000114 ; undefined
    adr x1, __bss_end
      10:	00000000 	.inst	0x00000000 ; undefined
    sub x1, x1, x0
      14:	14500001 	b	1400018 <__bss_end+0x13ff608>
    bl   memzero
      18:	00000001 	.inst	0x00000001 ; undefined
    bl el1_setup
      1c:	18000000 	ldr	w0, 1c <_boot_entry+0x1c>
    b   kernel_main
      20:	00000001 	.inst	0x00000001 ; undefined
    wfe
      24:	04000000 	add	z0.b, p0/m, z0.b, z0.b
    b halt_proc
      28:	5001f300 	adr	x0, 3e8a <__bss_end+0x347a>
      2c:	0000009f 	.inst	0x0000009f ; undefined
	...
    init_printf(0, putc);
      40:	00011000 	.inst	0x00011000 ; undefined
      44:	00000000 	.inst	0x00000000 ; undefined
      48:	00011700 	.inst	0x00011700 ; undefined
      4c:	00000000 	.inst	0x00000000 ; undefined
    printf("Core %d up at Exception level %d\n", get_core_id(), get_el());
      50:	51000100 	sub	w0, w8, #0x0
      54:	00000117 	.inst	0x00000117 ; undefined
      58:	00000000 	.inst	0x00000000 ; undefined
      5c:	00000118 	.inst	0x00000118 ; undefined
      60:	00000000 	.inst	0x00000000 ; undefined
      64:	01f30004 	.inst	0x01f30004 ; undefined
      68:	00009f51 	.inst	0x00009f51 ; undefined
	...
    msr SCTLR_EL1, x0
      7c:	000000e0 	.inst	0x000000e0 ; undefined
    ldr x0, =(SCR_EL3_RW_AARCH64 | SCR_EL3_NS)
      80:	00000000 	.inst	0x00000000 ; undefined
    msr SCR_EL3, x0
      84:	000000e4 	.inst	0x000000e4 ; undefined
    ldr x0, =(HCR_EL2_RW_AARCH64)
      88:	00000000 	.inst	0x00000000 ; undefined
    msr HCR_EL2, x0 
      8c:	00500001 	.inst	0x00500001 ; undefined
	...
    msr SP_EL1, x0
      a0:	70000000 	adr	x0, a3 <el1_setup+0x2b>
    eret
      a4:	00000005 	.inst	0x00000005 ; undefined
      a8:	98000000 	ldrsw	x0, a8 <el1_setup+0x30>
      ac:	00000005 	.inst	0x00000005 ; undefined
      b0:	01000000 	.inst	0x01000000 ; undefined
      b4:	05985000 	mov	z0.s, p8/m, #-128
      b8:	00000000 	.inst	0x00000000 ; undefined
      bc:	05c70000 	.inst	0x05c70000 ; undefined
      c0:	00000000 	.inst	0x00000000 ; undefined
      c4:	00020000 	.inst	0x00020000 ; undefined
      c8:	00000070 	.inst	0x00000070 ; undefined
	...
    printf("IRQ HANDLER\n");
      e0:	00000570 	.inst	0x00000570 ; undefined
    while(1);
      e4:	00000000 	.inst	0x00000000 ; undefined
      e8:	000005bc 	.inst	0x000005bc ; undefined
      ec:	00000000 	.inst	0x00000000 ; undefined
void __attribute__ ((interrupt ("ABORT"))) reset_handler(void) {
      f0:	bc510001 	ldur	s1, [x0, #-240]
    printf("RESET HANDLER\n");
      f4:	00000005 	.inst	0x00000005 ; undefined
      f8:	c7000000 	.inst	0xc7000000 ; undefined
void __attribute__ ((interrupt ("ABORT"))) reset_handler(void) {
      fc:	00000005 	.inst	0x00000005 ; undefined
    printf("RESET HANDLER\n");
     100:	01000000 	.inst	0x01000000 ; undefined
    while(1);
     104:	05c75200 	.inst	0x05c75200 ; undefined
     108:	00000000 	.inst	0x00000000 ; undefined
     10c:	05d80000 	mov	z0.d, p8/z, #0
void __attribute__ ((interrupt ("ABORT"))) prefetch_abort_handler(void) {
     110:	00000000 	.inst	0x00000000 ; undefined
    printf("PREFETCH ABORT HANDLER\n");
     114:	00040000 	.inst	0x00040000 ; undefined
     118:	9f5101f3 	.inst	0x9f5101f3 ; undefined
	...
    while(1);
     12c:	05c80001 	.inst	0x05c80001 ; undefined
void __attribute__ ((interrupt ("ABORT"))) data_abort_handler(void) {
     130:	00000000 	.inst	0x00000000 ; undefined
    printf("DATA ABORT HANDLER\n");
     134:	05d00000 	mov	z0.d, p0/z, #0
     138:	00000000 	.inst	0x00000000 ; undefined
void __attribute__ ((interrupt ("ABORT"))) data_abort_handler(void) {
     13c:	00020000 	.inst	0x00020000 ; undefined
    printf("DATA ABORT HANDLER\n");
     140:	00009f30 	.inst	0x00009f30 ; undefined
	...
void __attribute__ ((interrupt ("UNDEF"))) undefined_instruction_handler(void) {
     150:	00010000 	.inst	0x00010000 ; undefined
    printf("UNDEFINED INSTRUCTION HANDLER\n");
     154:	000005c8 	.inst	0x000005c8 ; undefined
     158:	00000000 	.inst	0x00000000 ; undefined
void __attribute__ ((interrupt ("UNDEF"))) undefined_instruction_handler(void) {
     15c:	000005d0 	.inst	0x000005d0 ; undefined
    printf("UNDEFINED INSTRUCTION HANDLER\n");
     160:	00000000 	.inst	0x00000000 ; undefined
    while(1);
     164:	a8910004 	stp	x4, x0, [x0], #272
     168:	00009f7f 	.inst	0x00009f7f ; undefined
	...
    printf("SWI HANDLER\n");
     180:	00000500 	.inst	0x00000500 ; undefined
    while(1);
     184:	00000000 	.inst	0x00000000 ; undefined
     188:	00000520 	.inst	0x00000520 ; undefined
     18c:	00000000 	.inst	0x00000000 ; undefined
void __attribute__ ((interrupt ("FIQ"))) fast_irq_handler(void) {
     190:	20500001 	.inst	0x20500001 ; undefined
    printf("FIQ HANDLER\n");
     194:	00000005 	.inst	0x00000005 ; undefined
     198:	5f000000 	.inst	0x5f000000 ; undefined
void __attribute__ ((interrupt ("FIQ"))) fast_irq_handler(void) {
     19c:	00000005 	.inst	0x00000005 ; undefined
    printf("FIQ HANDLER\n");
     1a0:	01000000 	.inst	0x01000000 ; undefined
    while(1);
     1a4:	055f5200 	mov	z0.h, p15/m, #-112
    str  xzr, [x0], #8
     1a8:	00000000 	.inst	0x00000000 ; undefined
    subs x1, x1, #8
     1ac:	05680000 	.inst	0x05680000 ; undefined
    b.gt memzero
     1b0:	00000000 	.inst	0x00000000 ; undefined
    ret
     1b4:	00040000 	.inst	0x00040000 ; undefined
     1b8:	9f5001f3 	.inst	0x9f5001f3 ; undefined
	...
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
     1d8:	000001a0 	.inst	0x000001a0 ; undefined
    *AUX_ENABLES = 0;
     1dc:	00000000 	.inst	0x00000000 ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
     1e0:	000001dc 	.inst	0x000001dc ; undefined
    *AUX_ENABLES = 0;
     1e4:	00000000 	.inst	0x00000000 ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
     1e8:	dc500001 	.inst	0xdc500001 ; undefined
    *AUX_ENABLES = 0;
     1ec:	00000001 	.inst	0x00000001 ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
     1f0:	0c000000 	st4	{v0.8b-v3.8b}, [x0]
    gpio->GPPUD = 0;
     1f4:	00000002 	.inst	0x00000002 ; undefined
    delay(150);
     1f8:	01000000 	.inst	0x01000000 ; undefined
    gpio->GPPUDCLK0 = (1 << 14) | (1 << 15); 
     1fc:	020c6500 	.inst	0x020c6500 ; undefined
     200:	00000000 	.inst	0x00000000 ; undefined
    delay(150);
     204:	02200000 	.inst	0x02200000 ; undefined
    gpio->GPPUDCLK0 = (1 << 14) | (1 << 15); 
     208:	00000000 	.inst	0x00000000 ; undefined
    delay(150);
     20c:	00040000 	.inst	0x00040000 ; undefined
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
     210:	9f5001f3 	.inst	0x9f5001f3 ; undefined
    mini_uart->AUX_MU_IIR_REG = 0x3 << 1; 
     214:	00000220 	.inst	0x00000220 ; undefined
    gpio->GPPUDCLK0 = 0; 
     218:	00000000 	.inst	0x00000000 ; undefined
    mini_uart->AUX_MU_BAUD_REG = 271;
     21c:	00000378 	.inst	0x00000378 ; undefined
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
     220:	00000000 	.inst	0x00000000 ; undefined
    *(reg32*)0x3f215068 = 271;
     224:	78650001 	ldaddlh	w5, w1, [x0]
     228:	00000003 	.inst	0x00000003 ; undefined
    gpio->GPPUDCLK0 = 0; 
     22c:	8c000000 	.inst	0x8c000000 ; undefined
    *AUX_ENABLES = 1;
     230:	00000003 	.inst	0x00000003 ; undefined
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
     234:	04000000 	add	z0.b, p0/m, z0.b, z0.b
     238:	5001f300 	adr	x0, 409a <__bss_end+0x368a>
     23c:	00038c9f 	.inst	0x00038c9f ; undefined
     240:	00000000 	.inst	0x00000000 ; undefined
    mini_uart->AUX_MU_IIR_REG = 0x3 << 1; 
     244:	0004d800 	.inst	0x0004d800 ; undefined
    mini_uart->AUX_MU_BAUD_REG = 271;
     248:	00000000 	.inst	0x00000000 ; undefined
    *AUX_ENABLES = 1;
     24c:	65000100 	.inst	0x65000100 ; undefined
	...
}
     26c:	000001a0 	.inst	0x000001a0 ; undefined
    return mini_uart->AUX_MU_LSR_REG & 0x1;
     270:	00000000 	.inst	0x00000000 ; undefined
     274:	000001dc 	.inst	0x000001dc ; undefined
     278:	00000000 	.inst	0x00000000 ; undefined
     27c:	dc510001 	.inst	0xdc510001 ; undefined
}
     280:	00000001 	.inst	0x00000001 ; undefined
     284:	08000000 	stxrb	w0, w0, [x0]
     288:	00000002 	.inst	0x00000002 ; undefined
     28c:	01000000 	.inst	0x01000000 ; undefined
    uint8 data = mini_uart->AUX_MU_IO_REG & 0xFF;
     290:	02086400 	.inst	0x02086400 ; undefined
     294:	00000000 	.inst	0x00000000 ; undefined
     298:	02200000 	.inst	0x02200000 ; undefined
     29c:	00000000 	.inst	0x00000000 ; undefined
}
     2a0:	00040000 	.inst	0x00040000 ; undefined
     2a4:	9f5101f3 	.inst	0x9f5101f3 ; undefined
     2a8:	00000220 	.inst	0x00000220 ; undefined
     2ac:	00000000 	.inst	0x00000000 ; undefined
    mini_uart->AUX_MU_IO_REG = data;
     2b0:	00000374 	.inst	0x00000374 ; undefined
void uart_write(uint8 data){
     2b4:	00000000 	.inst	0x00000000 ; undefined
    mini_uart->AUX_MU_IO_REG = data;
     2b8:	74640001 	.inst	0x74640001 ; undefined
     2bc:	00000003 	.inst	0x00000003 ; undefined
     2c0:	8c000000 	.inst	0x8c000000 ; undefined
}
     2c4:	00000003 	.inst	0x00000003 ; undefined
     2c8:	04000000 	add	z0.b, p0/m, z0.b, z0.b
     2cc:	5101f300 	sub	w0, w24, #0x7c
    uart_write(data);
     2d0:	00038c9f 	.inst	0x00038c9f ; undefined
     2d4:	00000000 	.inst	0x00000000 ; undefined
     2d8:	0004d800 	.inst	0x0004d800 ; undefined
     2dc:	00000000 	.inst	0x00000000 ; undefined
    while (num/d >= base)
     2e0:	64000100 	.inst	0x64000100 ; undefined
	...
     2f8:	00030000 	.inst	0x00030000 ; undefined
     2fc:	00000000 	.inst	0x00000000 ; undefined
    while (d!=0) {
     300:	00020200 	.inst	0x00020200 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
     304:	01a00000 	.inst	0x01a00000 ; undefined
     308:	00000000 	.inst	0x00000000 ; undefined
     30c:	01dc0000 	.inst	0x01dc0000 ; undefined
     310:	00000000 	.inst	0x00000000 ; undefined
        if (n || dgt>0 || d==0) {
     314:	00010000 	.inst	0x00010000 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
     318:	0001dc52 	.inst	0x0001dc52 ; undefined
        if (n || dgt>0 || d==0) {
     31c:	00000000 	.inst	0x00000000 ; undefined
     320:	0001e800 	.inst	0x0001e800 ; undefined
     324:	00000000 	.inst	0x00000000 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
     328:	8b000300 	add	x0, x24, x0
        if (n || dgt>0 || d==0) {
     32c:	01fc9f01 	.inst	0x01fc9f01 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
     330:	00000000 	.inst	0x00000000 ; undefined
        if (n || dgt>0 || d==0) {
     334:	02040000 	.inst	0x02040000 ; undefined
        num%= d;
     338:	00000000 	.inst	0x00000000 ; undefined
        d/=base;
     33c:	00030000 	.inst	0x00030000 ; undefined
        if (n || dgt>0 || d==0) {
     340:	209f018b 	.inst	0x209f018b ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
     344:	00000002 	.inst	0x00000002 ; undefined
     348:	30000000 	adr	x0, 349 <ui2a+0x69>
     34c:	00000002 	.inst	0x00000002 ; undefined
     350:	03000000 	.inst	0x03000000 ; undefined
     354:	9f028b00 	.inst	0x9f028b00 ; undefined
     358:	00000230 	.inst	0x00000230 ; undefined
     35c:	00000000 	.inst	0x00000000 ; undefined
            ++n;
     360:	0000028c 	.inst	0x0000028c ; undefined
    while (d!=0) {
     364:	00000000 	.inst	0x00000000 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
     368:	d86b0001 	prfm	pldl1strm, d6368 <__bss_end+0xd5958>
    while (d!=0) {
     36c:	00000002 	.inst	0x00000002 ; undefined
    *bf=0;
     370:	84000000 	ld1sb	{z0.s}, p0/z, [x0, z0.s, uxtw]
    }
     374:	00000003 	.inst	0x00000003 ; undefined
    while (d!=0) {
     378:	01000000 	.inst	0x01000000 ; undefined
    *bf=0;
     37c:	03946b00 	.inst	0x03946b00 ; undefined
    }
     380:	00000000 	.inst	0x00000000 ; undefined
     384:	03940000 	.inst	0x03940000 ; undefined
    unsigned int d=1;
     388:	00000000 	.inst	0x00000000 ; undefined
     38c:	00030000 	.inst	0x00030000 ; undefined
    *(*((char**)p))++ = c;
     390:	949f028b 	bl	27c0dbc <__bss_end+0x27c03ac>
     394:	00000003 	.inst	0x00000003 ; undefined
     398:	a0000000 	.inst	0xa0000000 ; undefined
     39c:	00000003 	.inst	0x00000003 ; undefined
    }
     3a0:	03000000 	.inst	0x03000000 ; undefined
     3a4:	9f038b00 	.inst	0x9f038b00 ; undefined
     3a8:	000003a0 	.inst	0x000003a0 ; undefined
     3ac:	00000000 	.inst	0x00000000 ; undefined
    {
     3b0:	000004d8 	.inst	0x000004d8 ; undefined
    char fc=z? '0' : ' ';
     3b4:	00000000 	.inst	0x00000000 ; undefined
    {
     3b8:	006b0001 	.inst	0x006b0001 ; undefined
	...
    while (n-- > 0)
     418:	0001d400 	.inst	0x0001d400 ; undefined
     41c:	00000000 	.inst	0x00000000 ; undefined
        putf(putp,fc);
     420:	0001dc00 	.inst	0x0001dc00 ; undefined
     424:	00000000 	.inst	0x00000000 ; undefined
     428:	93000c00 	.inst	0x93000c00 ; undefined
    while (n-- > 0)
     42c:	08936908 	stllrb	w8, [x8]
     430:	93670893 	sbfiz	x19, x4, #25, #3
     434:	dc049304 	.inst	0xdc049304 ; undefined
     438:	00000001 	.inst	0x00000001 ; undefined
    while ((ch= *bf++))
     43c:	0c000000 	st4	{v0.8b-v3.8b}, [x0]
     440:	00000002 	.inst	0x00000002 ; undefined
     444:	0d000000 	st1	{v0.b}[0], [x0]
        putf(putp,ch);
     448:	08936600 	stllrb	w0, [x16]
     44c:	93089369 	.inst	0x93089369 ; undefined
    while ((ch= *bf++))
     450:	04936708 	mls	z8.s, p1/m, z24.s, z19.s
     454:	020c0493 	.inst	0x020c0493 ; undefined
    }
     458:	00000000 	.inst	0x00000000 ; undefined
     45c:	02100000 	.inst	0x02100000 ; undefined
     460:	00000000 	.inst	0x00000000 ; undefined
     464:	000c0000 	.inst	0x000c0000 ; undefined
     468:	93690893 	sbfiz	x19, x4, #23, #3
    while (n-- > 0)
     46c:	67089308 	.inst	0x67089308 ; undefined
     470:	04930493 	umulh	z19.s, p1/m, z19.s, z4.s
     474:	00000210 	.inst	0x00000210 ; undefined
     478:	00000000 	.inst	0x00000000 ; undefined
     47c:	00000214 	.inst	0x00000214 ; undefined
    {
     480:	00000000 	.inst	0x00000000 ; undefined
     484:	08930007 	stllrb	w7, [x0]
     488:	93089369 	.inst	0x93089369 ; undefined
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
     48c:	00022010 	.inst	0x00022010 ; undefined
     490:	00000000 	.inst	0x00000000 ; undefined
    {
     494:	00027000 	.inst	0x00027000 ; undefined
     498:	00000000 	.inst	0x00000000 ; undefined
                    ui2a(va_arg(va, unsigned int),10,0,bf);
     49c:	66000d00 	.inst	0x66000d00 ; undefined
    {
     4a0:	93690893 	sbfiz	x19, x4, #23, #3
     4a4:	67089308 	.inst	0x67089308 ; undefined
     4a8:	04930493 	umulh	z19.s, p1/m, z19.s, z4.s
        *bf++ = '-';
     4ac:	00000270 	.inst	0x00000270 ; undefined
     4b0:	00000000 	.inst	0x00000000 ; undefined
    {
     4b4:	00000278 	.inst	0x00000278 ; undefined
     4b8:	00000000 	.inst	0x00000000 ; undefined
     4bc:	00710012 	.inst	0x00710012 ; undefined
    while ((ch=*(fmt++))) {
     4c0:	9f1af809 	.inst	0x9f1af809 ; undefined
     4c4:	93690893 	sbfiz	x19, x4, #23, #3
        if (ch!='%')
     4c8:	67089308 	.inst	0x67089308 ; undefined
     4cc:	04930493 	umulh	z19.s, p1/m, z19.s, z4.s
    while ((ch=*(fmt++))) {
     4d0:	00000278 	.inst	0x00000278 ; undefined
            putf(putp,ch);
     4d4:	00000000 	.inst	0x00000000 ; undefined
     4d8:	000002e8 	.inst	0x000002e8 ; undefined
    while ((ch=*(fmt++))) {
     4dc:	00000000 	.inst	0x00000000 ; undefined
     4e0:	9366000d 	sbfiz	x13, x0, #26, #1
    }
     4e4:	08936908 	stllrb	w8, [x8]
     4e8:	93670893 	sbfiz	x19, x4, #25, #3
     4ec:	e8049304 	.inst	0xe8049304 ; undefined
     4f0:	00000002 	.inst	0x00000002 ; undefined
     4f4:	f0000000 	adrp	x0, 3000 <__bss_end+0x25f0>
     4f8:	00000002 	.inst	0x00000002 ; undefined
     4fc:	12000000 	and	w0, w0, #0x1
            ch=*(fmt++);
     500:	09007200 	.inst	0x09007200 ; undefined
            if (ch=='0') {
     504:	939f1af8 	.inst	0x939f1af8 ; undefined
     508:	08936908 	stllrb	w8, [x8]
            ch=*(fmt++);
     50c:	93670893 	sbfiz	x19, x4, #25, #3
            char lz=0;
     510:	f0049304 	adrp	x4, 9263000 <__bss_end+0x92625f0>
            if (ch>='0' && ch<='9') {
     514:	00000002 	.inst	0x00000002 ; undefined
    int num=0;
     518:	34000000 	cbz	w0, 518 <tfp_format+0x98>
            if (ch>='0' && ch<='9') {
     51c:	00000003 	.inst	0x00000003 ; undefined
     520:	0d000000 	st1	{v0.b}[0], [x0]
     524:	08936600 	stllrb	w0, [x16]
            switch (ch) {
     528:	93089369 	.inst	0x93089369 ; undefined
     52c:	04936708 	mls	z8.s, p1/m, z24.s, z19.s
     530:	03340493 	.inst	0x03340493 ; undefined
     534:	00000000 	.inst	0x00000000 ; undefined
     538:	033c0000 	.inst	0x033c0000 ; undefined
     53c:	00000000 	.inst	0x00000000 ; undefined
     540:	00120000 	.inst	0x00120000 ; undefined
     544:	f8090071 	stur	x17, [x3, #144]
                    ui2a(va_arg(va, unsigned int),10,0,bf);
     548:	08939f1a 	stlrb	w26, [x24]
     54c:	93089369 	.inst	0x93089369 ; undefined
     550:	04936708 	mls	z8.s, p1/m, z24.s, z19.s
     554:	033c0493 	.inst	0x033c0493 ; undefined
     558:	00000000 	.inst	0x00000000 ; undefined
     55c:	03780000 	.inst	0x03780000 ; undefined
    ui2a(num,10,0,bf);
     560:	00000000 	.inst	0x00000000 ; undefined
     564:	000d0000 	.inst	0x000d0000 ; undefined
     568:	69089366 	stgp	x6, x4, [x27, #272]
    else if (ch>='a' && ch<='f')
     56c:	08930893 	stllrb	w19, [x4]
     570:	93049367 	.inst	0x93049367 ; undefined
    else if (ch>='A' && ch<='F')
     574:	00037804 	.inst	0x00037804 ; undefined
     578:	00000000 	.inst	0x00000000 ; undefined
        if (digit>base) break;
     57c:	00037c00 	.inst	0x00037c00 ; undefined
     580:	00000000 	.inst	0x00000000 ; undefined
        ch=*p++;
     584:	93000c00 	.inst	0x93000c00 ; undefined
        num=num*base+digit;
     588:	08936908 	stllrb	w8, [x8]
        ch=*p++;
     58c:	93670893 	sbfiz	x19, x4, #25, #3
    else if (ch>='a' && ch<='f')
     590:	7c049304 	stur	h4, [x24, #73]
    else if (ch>='A' && ch<='F')
     594:	00000003 	.inst	0x00000003 ; undefined
    if (ch>='0' && ch<='9')
     598:	80000000 	.inst	0x80000000 ; undefined
        return ch-'A'+10;
     59c:	00000003 	.inst	0x00000003 ; undefined
    else if (ch>='a' && ch<='f')
     5a0:	07000000 	.inst	0x07000000 ; undefined
    else if (ch>='A' && ch<='F')
     5a4:	69089300 	stgp	x0, x4, [x24, #272]
    if (ch>='0' && ch<='9')
     5a8:	10930893 	adr	x19, fffffffffff266b8 <__bss_end+0xfffffffffff25ca8>
     5ac:	0000038c 	.inst	0x0000038c ; undefined
        return ch-'0';
     5b0:	00000000 	.inst	0x00000000 ; undefined
        if (digit>base) break;
     5b4:	000003ac 	.inst	0x000003ac ; undefined
            switch (ch) {
     5b8:	00000000 	.inst	0x00000000 ; undefined
     5bc:	9366000d 	sbfiz	x13, x0, #26, #1
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
     5c0:	08936908 	stllrb	w8, [x8]
     5c4:	93670893 	sbfiz	x19, x4, #25, #3
     5c8:	ac049304 	stnp	q4, q4, [x24, #144]
     5cc:	00000003 	.inst	0x00000003 ; undefined
     5d0:	b4000000 	cbz	x0, 5d0 <tfp_format+0x150>
     5d4:	00000003 	.inst	0x00000003 ; undefined
     5d8:	12000000 	and	w0, w0, #0x1
     5dc:	09007100 	.inst	0x09007100 ; undefined
     5e0:	939f1af8 	.inst	0x939f1af8 ; undefined
     5e4:	08936908 	stllrb	w8, [x8]
                    putchw(putp,putf,w,lz,bf);
     5e8:	93670893 	sbfiz	x19, x4, #25, #3
     5ec:	b4049304 	cbz	x4, 984c <__bss_end+0x8e3c>
     5f0:	00000003 	.inst	0x00000003 ; undefined
     5f4:	d8000000 	prfm	pldl1keep, 5f4 <tfp_format+0x174>
     5f8:	00000003 	.inst	0x00000003 ; undefined
     5fc:	0d000000 	st1	{v0.b}[0], [x0]
                    break;
     600:	08936600 	stllrb	w0, [x16]
            switch (ch) {
     604:	93089369 	.inst	0x93089369 ; undefined
     608:	04936708 	mls	z8.s, p1/m, z24.s, z19.s
                    i2a(va_arg(va, int),bf);
     60c:	03d80493 	.inst	0x03d80493 ; undefined
     610:	00000000 	.inst	0x00000000 ; undefined
     614:	03e00000 	.inst	0x03e00000 ; undefined
     618:	00000000 	.inst	0x00000000 ; undefined
     61c:	00120000 	.inst	0x00120000 ; undefined
    if (num<0) {
     620:	f8090071 	stur	x17, [x3, #144]
     624:	08939f1a 	stlrb	w26, [x24]
        *bf++ = '-';
     628:	93089369 	.inst	0x93089369 ; undefined
        num=-num;
     62c:	04936708 	mls	z8.s, p1/m, z24.s, z19.s
        *bf++ = '-';
     630:	03e00493 	.inst	0x03e00493 ; undefined
     634:	00000000 	.inst	0x00000000 ; undefined
     638:	04000000 	add	z0.b, p0/m, z0.b, z0.b
            switch (ch) {
     63c:	00000000 	.inst	0x00000000 ; undefined
     640:	000d0000 	.inst	0x000d0000 ; undefined
     644:	69089366 	stgp	x6, x4, [x27, #272]
     648:	08930893 	stllrb	w19, [x4]
     64c:	93049367 	.inst	0x93049367 ; undefined
    }
     650:	00040004 	.inst	0x00040004 ; undefined
     654:	00000000 	.inst	0x00000000 ; undefined
     658:	00040c00 	.inst	0x00040c00 ; undefined
     65c:	00000000 	.inst	0x00000000 ; undefined
     660:	66000d00 	.inst	0x66000d00 ; undefined
     664:	93690893 	sbfiz	x19, x4, #23, #3
     668:	51089308 	sub	w8, w24, #0x224
        return ch-'a'+10;
     66c:	04930493 	umulh	z19.s, p1/m, z19.s, z4.s
     670:	0000040c 	.inst	0x0000040c ; undefined
                ch=*(fmt++);
     674:	00000000 	.inst	0x00000000 ; undefined
                lz=1;
     678:	00000418 	.inst	0x00000418 ; undefined
                ch=*(fmt++);
     67c:	00000000 	.inst	0x00000000 ; undefined
     680:	00720012 	.inst	0x00720012 ; undefined
                    putchw(putp,putf,w,0,va_arg(va, char*));
     684:	9f1af809 	.inst	0x9f1af809 ; undefined
     688:	93690893 	sbfiz	x19, x4, #23, #3
     68c:	51089308 	sub	w8, w24, #0x224
     690:	04930493 	umulh	z19.s, p1/m, z19.s, z4.s
     694:	00000418 	.inst	0x00000418 ; undefined
     698:	00000000 	.inst	0x00000000 ; undefined
     69c:	0000041c 	.inst	0x0000041c ; undefined
     6a0:	00000000 	.inst	0x00000000 ; undefined
     6a4:	9366000d 	sbfiz	x13, x0, #26, #1
     6a8:	08936908 	stllrb	w8, [x8]
                    break;
     6ac:	93510893 	sbfiz	x19, x4, #47, #3
                    putf(putp,(char)(va_arg(va, int)));
     6b0:	1c049304 	ldr	s4, 9910 <__bss_end+0x8f00>
     6b4:	00000004 	.inst	0x00000004 ; undefined
     6b8:	20000000 	.inst	0x20000000 ; undefined
     6bc:	00000004 	.inst	0x00000004 ; undefined
     6c0:	0d000000 	st1	{v0.b}[0], [x0]
     6c4:	08936600 	stllrb	w0, [x16]
     6c8:	93089369 	.inst	0x93089369 ; undefined
                    break;
     6cc:	04936708 	mls	z8.s, p1/m, z24.s, z19.s
                    putf(putp,ch);
     6d0:	04200493 	sub	z19.b, z4.b, z0.b
     6d4:	00000000 	.inst	0x00000000 ; undefined
     6d8:	042c0000 	add	z0.b, z0.b, z12.b
                    ui2a(va_arg(va, unsigned int),10,0,bf);
     6dc:	00000000 	.inst	0x00000000 ; undefined
     6e0:	000d0000 	.inst	0x000d0000 ; undefined
     6e4:	69089366 	stgp	x6, x4, [x27, #272]
     6e8:	08930893 	stllrb	w19, [x4]
     6ec:	93049351 	.inst	0x93049351 ; undefined
     6f0:	00042c04 	.inst	0x00042c04 ; undefined
     6f4:	00000000 	.inst	0x00000000 ; undefined
     6f8:	00043800 	.inst	0x00043800 ; undefined
                    i2a(va_arg(va, int),bf);
     6fc:	00000000 	.inst	0x00000000 ; undefined
     700:	72001200 	ands	w0, w16, #0x1f
     704:	1af80900 	.inst	0x1af80900 ; undefined
     708:	6908939f 	stgp	xzr, x4, [x28, #272]
     70c:	08930893 	stllrb	w19, [x4]
     710:	93049351 	.inst	0x93049351 ; undefined
     714:	00043804 	.inst	0x00043804 ; undefined
     718:	00000000 	.inst	0x00000000 ; undefined
                    putf(putp,(char)(va_arg(va, int)));
     71c:	00043c00 	.inst	0x00043c00 ; undefined
     720:	00000000 	.inst	0x00000000 ; undefined
     724:	66000d00 	.inst	0x66000d00 ; undefined
     728:	93690893 	sbfiz	x19, x4, #23, #3
     72c:	51089308 	sub	w8, w24, #0x224
     730:	04930493 	umulh	z19.s, p1/m, z19.s, z4.s
     734:	0000043c 	.inst	0x0000043c ; undefined
     738:	00000000 	.inst	0x00000000 ; undefined
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
     73c:	00000440 	.inst	0x00000440 ; undefined
     740:	00000000 	.inst	0x00000000 ; undefined
     744:	9366000d 	sbfiz	x13, x0, #26, #1
     748:	08936908 	stllrb	w8, [x8]
     74c:	93670893 	sbfiz	x19, x4, #25, #3
     750:	40049304 	.inst	0x40049304 ; undefined
     754:	00000004 	.inst	0x00000004 ; undefined
     758:	4c000000 	st4	{v0.16b-v3.16b}, [x0]
                    putchw(putp,putf,w,0,va_arg(va, char*));
     75c:	00000004 	.inst	0x00000004 ; undefined
     760:	0d000000 	st1	{v0.b}[0], [x0]
     764:	08936600 	stllrb	w0, [x16]
     768:	93089369 	.inst	0x93089369 ; undefined
     76c:	04935108 	mla	z8.s, p4/m, z8.s, z19.s
     770:	044c0493 	sabd	z19.h, p1/m, z19.h, z4.h
     774:	00000000 	.inst	0x00000000 ; undefined
     778:	04580000 	orr	z0.h, p0/m, z0.h, z0.h
                    ui2a(va_arg(va, unsigned int),10,0,bf);
     77c:	00000000 	.inst	0x00000000 ; undefined
     780:	00120000 	.inst	0x00120000 ; undefined
     784:	f8090072 	stur	x18, [x3, #144]
                    i2a(va_arg(va, int),bf);
     788:	08939f1a 	stlrb	w26, [x24]
     78c:	93089369 	.inst	0x93089369 ; undefined
     790:	04935108 	mla	z8.s, p4/m, z8.s, z19.s
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
     794:	04580493 	orr	z19.h, p1/m, z19.h, z4.h
     798:	00000000 	.inst	0x00000000 ; undefined
     79c:	045c0000 	.inst	0x045c0000 ; undefined
                    putf(putp,(char)(va_arg(va, int)));
     7a0:	00000000 	.inst	0x00000000 ; undefined
     7a4:	000d0000 	.inst	0x000d0000 ; undefined
     7a8:	69089366 	stgp	x6, x4, [x27, #272]
                    putchw(putp,putf,w,0,va_arg(va, char*));
     7ac:	08930893 	stllrb	w19, [x4]
     7b0:	93049351 	.inst	0x93049351 ; undefined
     7b4:	00045c04 	.inst	0x00045c04 ; undefined
     7b8:	00000000 	.inst	0x00000000 ; undefined
     7bc:	00046000 	.inst	0x00046000 ; undefined
    stdout_putf=putf;
     7c0:	00000000 	.inst	0x00000000 ; undefined
     7c4:	66000d00 	.inst	0x66000d00 ; undefined
     7c8:	93690893 	sbfiz	x19, x4, #23, #3
    stdout_putp=putp;
     7cc:	67089308 	.inst	0x67089308 ; undefined
    }
     7d0:	04930493 	umulh	z19.s, p1/m, z19.s, z4.s
     7d4:	00000460 	.inst	0x00000460 ; undefined
     7d8:	00000000 	.inst	0x00000000 ; undefined
     7dc:	0000046c 	.inst	0x0000046c ; undefined
    {
     7e0:	00000000 	.inst	0x00000000 ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
     7e4:	9366000d 	sbfiz	x13, x0, #26, #1
     7e8:	08936908 	stllrb	w8, [x8]
    {
     7ec:	93520893 	sbfiz	x19, x4, #46, #3
     7f0:	6c049304 	stnp	d4, d4, [x24, #72]
    tfp_format(stdout_putp,stdout_putf,fmt,va);
     7f4:	00000004 	.inst	0x00000004 ; undefined
    va_start(va,fmt);
     7f8:	78000000 	sturh	w0, [x0]
    tfp_format(stdout_putp,stdout_putf,fmt,va);
     7fc:	00000004 	.inst	0x00000004 ; undefined
    va_start(va,fmt);
     800:	12000000 	and	w0, w0, #0x1
     804:	09007300 	.inst	0x09007300 ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
     808:	939f1af8 	.inst	0x939f1af8 ; undefined
    va_start(va,fmt);
     80c:	08936908 	stllrb	w8, [x8]
     810:	93520893 	sbfiz	x19, x4, #46, #3
     814:	78049304 	sturh	w4, [x24, #73]
     818:	00000004 	.inst	0x00000004 ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
     81c:	7c000000 	stur	h0, [x0]
     820:	00000004 	.inst	0x00000004 ; undefined
     824:	0d000000 	st1	{v0.b}[0], [x0]
     828:	08936600 	stllrb	w0, [x16]
    {
     82c:	93089369 	.inst	0x93089369 ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
     830:	04935208 	mla	z8.s, p4/m, z16.s, z19.s
    {
     834:	047c0493 	sub	z19.h, z4.h, z28.h
     838:	00000000 	.inst	0x00000000 ; undefined
    tfp_format(stdout_putp,stdout_putf,fmt,va);
     83c:	04800000 	add	z0.s, p0/m, z0.s, z0.s
    }
     840:	00000000 	.inst	0x00000000 ; undefined
     844:	000d0000 	.inst	0x000d0000 ; undefined
     848:	69089366 	stgp	x6, x4, [x27, #272]
     84c:	08930893 	stllrb	w19, [x4]
    {
     850:	93049367 	.inst	0x93049367 ; undefined
    va_start(va,fmt);
     854:	00048004 	.inst	0x00048004 ; undefined
    {
     858:	00000000 	.inst	0x00000000 ; undefined
    va_start(va,fmt);
     85c:	00048c00 	.inst	0x00048c00 ; undefined
     860:	00000000 	.inst	0x00000000 ; undefined
     864:	66000d00 	.inst	0x66000d00 ; undefined
     868:	93690893 	sbfiz	x19, x4, #23, #3
    tfp_format(&s,putcp,fmt,va);
     86c:	51089308 	sub	w8, w24, #0x224
    va_start(va,fmt);
     870:	04930493 	umulh	z19.s, p1/m, z19.s, z4.s
    tfp_format(&s,putcp,fmt,va);
     874:	0000048c 	.inst	0x0000048c ; undefined
    va_start(va,fmt);
     878:	00000000 	.inst	0x00000000 ; undefined
    tfp_format(&s,putcp,fmt,va);
     87c:	00000498 	.inst	0x00000498 ; undefined
     880:	00000000 	.inst	0x00000000 ; undefined
     884:	00720012 	.inst	0x00720012 ; undefined
     888:	9f1af809 	.inst	0x9f1af809 ; undefined
    {
     88c:	93690893 	sbfiz	x19, x4, #23, #3
    tfp_format(&s,putcp,fmt,va);
     890:	51089308 	sub	w8, w24, #0x224
     894:	04930493 	umulh	z19.s, p1/m, z19.s, z4.s
     898:	00000498 	.inst	0x00000498 ; undefined
    {
     89c:	00000000 	.inst	0x00000000 ; undefined
     8a0:	000004b4 	.inst	0x000004b4 ; undefined
    tfp_format(&s,putcp,fmt,va);
     8a4:	00000000 	.inst	0x00000000 ; undefined
    *(*((char**)p))++ = c;
     8a8:	9366000d 	sbfiz	x13, x0, #26, #1
     8ac:	08936908 	stllrb	w8, [x8]
    }
     8b0:	93510893 	sbfiz	x19, x4, #47, #3
     8b4:	b4049304 	cbz	x4, 9b14 <__bss_end+0x9104>
     8b8:	00000004 	.inst	0x00000004 ; undefined
     8bc:	c0000000 	.inst	0xc0000000 ; undefined
    asm volatile("loop : subs %0, %0, #1\n\t"
     8c0:	00000004 	.inst	0x00000004 ; undefined
     8c4:	0d000000 	st1	{v0.b}[0], [x0]
}
     8c8:	08936600 	stllrb	w0, [x16]
     8cc:	93089369 	.inst	0x93089369 ; undefined
    asm volatile("mrs %0, mpidr_el1\n\t"
     8d0:	04935208 	mla	z8.s, p4/m, z16.s, z19.s
     8d4:	04c00493 	add	z19.d, p1/m, z19.d, z4.d
}
     8d8:	00000000 	.inst	0x00000000 ; undefined
     8dc:	04d80000 	orr	z0.d, p0/m, z0.d, z0.d
    asm volatile("mrs %0, CurrentEL\n\t"
     8e0:	00000000 	.inst	0x00000000 ; undefined
     8e4:	000d0000 	.inst	0x000d0000 ; undefined
}
     8e8:	69089366 	stgp	x6, x4, [x27, #272]
     8ec:	08930893 	stllrb	w19, [x4]
     8f0:	93049351 	.inst	0x93049351 ; undefined
     8f4:	00000004 	.inst	0x00000004 ; undefined
	...
     91c:	e4000000 	.inst	0xe4000000 ; undefined
     920:	00000001 	.inst	0x00000001 ; undefined
     924:	fb000000 	.inst	0xfb000000 ; undefined
     928:	00000001 	.inst	0x00000001 ; undefined
     92c:	01000000 	.inst	0x01000000 ; undefined
     930:	02005100 	.inst	0x02005100 ; undefined
     934:	00000000 	.inst	0x00000000 ; undefined
     938:	02700000 	.inst	0x02700000 ; undefined
     93c:	00000000 	.inst	0x00000000 ; undefined
     940:	00010000 	.inst	0x00010000 ; undefined
     944:	0002d851 	.inst	0x0002d851 ; undefined
     948:	00000000 	.inst	0x00000000 ; undefined
     94c:	00030400 	.inst	0x00030400 ; undefined
     950:	00000000 	.inst	0x00000000 ; undefined
     954:	51000100 	sub	w0, w8, #0x0
     958:	00000324 	.inst	0x00000324 ; undefined
     95c:	00000000 	.inst	0x00000000 ; undefined
     960:	00000334 	.inst	0x00000334 ; undefined
     964:	00000000 	.inst	0x00000000 ; undefined
     968:	5c510001 	ldr	d1, a2968 <__bss_end+0xa1f58>
     96c:	00000003 	.inst	0x00000003 ; undefined
     970:	8c000000 	.inst	0x8c000000 ; undefined
     974:	00000003 	.inst	0x00000003 ; undefined
     978:	01000000 	.inst	0x01000000 ; undefined
     97c:	03945100 	.inst	0x03945100 ; undefined
     980:	00000000 	.inst	0x00000000 ; undefined
     984:	03ac0000 	.inst	0x03ac0000 ; undefined
     988:	00000000 	.inst	0x00000000 ; undefined
     98c:	00010000 	.inst	0x00010000 ; undefined
     990:	0003d051 	.inst	0x0003d051 ; undefined
     994:	00000000 	.inst	0x00000000 ; undefined
     998:	0003d800 	.inst	0x0003d800 ; undefined
     99c:	00000000 	.inst	0x00000000 ; undefined
     9a0:	51000100 	sub	w0, w8, #0x0
     9a4:	000003f0 	.inst	0x000003f0 ; undefined
     9a8:	00000000 	.inst	0x00000000 ; undefined
     9ac:	000003f7 	.inst	0x000003f7 ; undefined
     9b0:	00000000 	.inst	0x00000000 ; undefined
     9b4:	fc510001 	ldur	d1, [x0, #-240]
     9b8:	00000003 	.inst	0x00000003 ; undefined
     9bc:	00000000 	.inst	0x00000000 ; undefined
     9c0:	00000004 	.inst	0x00000004 ; undefined
     9c4:	01000000 	.inst	0x01000000 ; undefined
     9c8:	041c5100 	mla	z0.b, p4/m, z8.b, z28.b
     9cc:	00000000 	.inst	0x00000000 ; undefined
     9d0:	04200000 	add	z0.b, z0.b, z0.b
     9d4:	00000000 	.inst	0x00000000 ; undefined
     9d8:	00010000 	.inst	0x00010000 ; undefined
     9dc:	00043c51 	.inst	0x00043c51 ; undefined
     9e0:	00000000 	.inst	0x00000000 ; undefined
     9e4:	00044000 	.inst	0x00044000 ; undefined
     9e8:	00000000 	.inst	0x00000000 ; undefined
     9ec:	51000100 	sub	w0, w8, #0x0
     9f0:	0000045c 	.inst	0x0000045c ; undefined
     9f4:	00000000 	.inst	0x00000000 ; undefined
     9f8:	00000480 	.inst	0x00000480 ; undefined
     9fc:	00000000 	.inst	0x00000000 ; undefined
     a00:	b4510001 	cbz	x1, a2a00 <__bss_end+0xa1ff0>
     a04:	00000004 	.inst	0x00000004 ; undefined
     a08:	c0000000 	.inst	0xc0000000 ; undefined
     a0c:	00000004 	.inst	0x00000004 ; undefined
     a10:	01000000 	.inst	0x01000000 ; undefined
     a14:	00005100 	.inst	0x00005100 ; undefined
	...
     a24:	00010000 	.inst	0x00010000 ; undefined
     a28:	00000000 	.inst	0x00000000 ; undefined
     a2c:	00010100 	.inst	0x00010100 ; undefined
	...
     a38:	00000220 	.inst	0x00000220 ; undefined
     a3c:	00000000 	.inst	0x00000000 ; undefined
     a40:	00000234 	.inst	0x00000234 ; undefined
     a44:	00000000 	.inst	0x00000000 ; undefined
     a48:	9f300002 	.inst	0x9f300002 ; undefined
     a4c:	00000234 	.inst	0x00000234 ; undefined
     a50:	00000000 	.inst	0x00000000 ; undefined
     a54:	0000031f 	.inst	0x0000031f ; undefined
     a58:	00000000 	.inst	0x00000000 ; undefined
     a5c:	245d0001 	cmphs	p1.h, p0/z, z0.h, z29.h
     a60:	00000003 	.inst	0x00000003 ; undefined
     a64:	94000000 	bl	a64 <__bss_end+0x54>
     a68:	00000003 	.inst	0x00000003 ; undefined
     a6c:	01000000 	.inst	0x01000000 ; undefined
     a70:	03945d00 	.inst	0x03945d00 ; undefined
     a74:	00000000 	.inst	0x00000000 ; undefined
     a78:	03980000 	.inst	0x03980000 ; undefined
     a7c:	00000000 	.inst	0x00000000 ; undefined
     a80:	00020000 	.inst	0x00020000 ; undefined
     a84:	03989f30 	.inst	0x03989f30 ; undefined
     a88:	00000000 	.inst	0x00000000 ; undefined
     a8c:	03a40000 	.inst	0x03a40000 ; undefined
     a90:	00000000 	.inst	0x00000000 ; undefined
     a94:	00020000 	.inst	0x00020000 ; undefined
     a98:	03a49f31 	.inst	0x03a49f31 ; undefined
     a9c:	00000000 	.inst	0x00000000 ; undefined
     aa0:	03cb0000 	.inst	0x03cb0000 ; undefined
     aa4:	00000000 	.inst	0x00000000 ; undefined
     aa8:	00010000 	.inst	0x00010000 ; undefined
     aac:	0003d05d 	.inst	0x0003d05d ; undefined
     ab0:	00000000 	.inst	0x00000000 ; undefined
     ab4:	0003eb00 	.inst	0x0003eb00 ; undefined
     ab8:	00000000 	.inst	0x00000000 ; undefined
     abc:	5d000100 	.inst	0x5d000100 ; undefined
     ac0:	000003f0 	.inst	0x000003f0 ; undefined
     ac4:	00000000 	.inst	0x00000000 ; undefined
     ac8:	000003f7 	.inst	0x000003f7 ; undefined
     acc:	00000000 	.inst	0x00000000 ; undefined
     ad0:	fc5d0001 	ldur	d1, [x0, #-48]
     ad4:	00000003 	.inst	0x00000003 ; undefined
     ad8:	d8000000 	prfm	pldl1keep, ad8 <__bss_end+0xc8>
     adc:	00000004 	.inst	0x00000004 ; undefined
     ae0:	01000000 	.inst	0x01000000 ; undefined
     ae4:	00005d00 	.inst	0x00005d00 ; undefined
	...
     af4:	00020000 	.inst	0x00020000 ; undefined
	...
     b08:	02200000 	.inst	0x02200000 ; undefined
     b0c:	00000000 	.inst	0x00000000 ; undefined
     b10:	02480000 	.inst	0x02480000 ; undefined
     b14:	00000000 	.inst	0x00000000 ; undefined
     b18:	00020000 	.inst	0x00020000 ; undefined
     b1c:	02489f30 	.inst	0x02489f30 ; undefined
     b20:	00000000 	.inst	0x00000000 ; undefined
     b24:	028c0000 	.inst	0x028c0000 ; undefined
     b28:	00000000 	.inst	0x00000000 ; undefined
     b2c:	00010000 	.inst	0x00010000 ; undefined
     b30:	00028c5c 	.inst	0x00028c5c ; undefined
     b34:	00000000 	.inst	0x00000000 ; undefined
     b38:	0002d800 	.inst	0x0002d800 ; undefined
     b3c:	00000000 	.inst	0x00000000 ; undefined
     b40:	30000200 	adr	x0, b81 <__bss_end+0x171>
     b44:	0002d89f 	.inst	0x0002d89f ; undefined
     b48:	00000000 	.inst	0x00000000 ; undefined
     b4c:	00031f00 	.inst	0x00031f00 ; undefined
     b50:	00000000 	.inst	0x00000000 ; undefined
     b54:	5c000100 	ldr	d0, b74 <__bss_end+0x164>
     b58:	00000324 	.inst	0x00000324 ; undefined
     b5c:	00000000 	.inst	0x00000000 ; undefined
     b60:	0000038c 	.inst	0x0000038c ; undefined
     b64:	00000000 	.inst	0x00000000 ; undefined
     b68:	8c5c0001 	.inst	0x8c5c0001 ; undefined
     b6c:	00000003 	.inst	0x00000003 ; undefined
     b70:	a4000000 	ld1rqb	{z0.b}, p0/z, [x0, x0]
     b74:	00000003 	.inst	0x00000003 ; undefined
     b78:	02000000 	.inst	0x02000000 ; undefined
     b7c:	a49f3000 	.inst	0xa49f3000 ; undefined
     b80:	00000003 	.inst	0x00000003 ; undefined
     b84:	cb000000 	sub	x0, x0, x0
     b88:	00000003 	.inst	0x00000003 ; undefined
     b8c:	01000000 	.inst	0x01000000 ; undefined
     b90:	03d05c00 	.inst	0x03d05c00 ; undefined
     b94:	00000000 	.inst	0x00000000 ; undefined
     b98:	03eb0000 	.inst	0x03eb0000 ; undefined
     b9c:	00000000 	.inst	0x00000000 ; undefined
     ba0:	00010000 	.inst	0x00010000 ; undefined
     ba4:	0003f05c 	.inst	0x0003f05c ; undefined
     ba8:	00000000 	.inst	0x00000000 ; undefined
     bac:	0003f700 	.inst	0x0003f700 ; undefined
     bb0:	00000000 	.inst	0x00000000 ; undefined
     bb4:	5c000100 	ldr	d0, bd4 <__bss_end+0x1c4>
     bb8:	000003fc 	.inst	0x000003fc ; undefined
     bbc:	00000000 	.inst	0x00000000 ; undefined
     bc0:	000004d8 	.inst	0x000004d8 ; undefined
     bc4:	00000000 	.inst	0x00000000 ; undefined
     bc8:	005c0001 	.inst	0x005c0001 ; undefined
	...
     be0:	80000101 	.inst	0x80000101 ; undefined
     be4:	00000002 	.inst	0x00000002 ; undefined
     be8:	8c000000 	.inst	0x8c000000 ; undefined
     bec:	00000002 	.inst	0x00000002 ; undefined
     bf0:	01000000 	.inst	0x01000000 ; undefined
     bf4:	03405300 	.inst	0x03405300 ; undefined
     bf8:	00000000 	.inst	0x00000000 ; undefined
     bfc:	03480000 	.inst	0x03480000 ; undefined
     c00:	00000000 	.inst	0x00000000 ; undefined
     c04:	00010000 	.inst	0x00010000 ; undefined
     c08:	00034868 	.inst	0x00034868 ; undefined
     c0c:	00000000 	.inst	0x00000000 ; undefined
     c10:	00035000 	.inst	0x00035000 ; undefined
     c14:	00000000 	.inst	0x00000000 ; undefined
     c18:	53000100 	ubfx	w0, w8, #0, #1
     c1c:	00000350 	.inst	0x00000350 ; undefined
     c20:	00000000 	.inst	0x00000000 ; undefined
     c24:	0000035c 	.inst	0x0000035c ; undefined
     c28:	00000000 	.inst	0x00000000 ; undefined
     c2c:	71910003 	.inst	0x71910003 ; undefined
     c30:	0000009f 	.inst	0x0000009f ; undefined
	...
     c44:	00028000 	.inst	0x00028000 ; undefined
     c48:	00000000 	.inst	0x00000000 ; undefined
     c4c:	00028c00 	.inst	0x00028c00 ; undefined
     c50:	00000000 	.inst	0x00000000 ; undefined
     c54:	50000100 	adr	x0, c76 <__bss_end+0x266>
     c58:	00000350 	.inst	0x00000350 ; undefined
     c5c:	00000000 	.inst	0x00000000 ; undefined
     c60:	0000035c 	.inst	0x0000035c ; undefined
     c64:	00000000 	.inst	0x00000000 ; undefined
     c68:	00500001 	.inst	0x00500001 ; undefined
	...
     c7c:	00000100 	.inst	0x00000100 ; undefined
     c80:	00028c00 	.inst	0x00028c00 ; undefined
     c84:	00000000 	.inst	0x00000000 ; undefined
     c88:	0002a400 	.inst	0x0002a400 ; undefined
     c8c:	00000000 	.inst	0x00000000 ; undefined
     c90:	51000100 	sub	w0, w8, #0x0
     c94:	000002ac 	.inst	0x000002ac ; undefined
     c98:	00000000 	.inst	0x00000000 ; undefined
     c9c:	000002d0 	.inst	0x000002d0 ; undefined
     ca0:	00000000 	.inst	0x00000000 ; undefined
     ca4:	8c510001 	.inst	0x8c510001 ; undefined
     ca8:	00000003 	.inst	0x00000003 ; undefined
     cac:	94000000 	bl	cac <__bss_end+0x29c>
     cb0:	00000003 	.inst	0x00000003 ; undefined
     cb4:	01000000 	.inst	0x01000000 ; undefined
     cb8:	00005100 	.inst	0x00005100 ; undefined
	...
     ccc:	00000100 	.inst	0x00000100 ; undefined
     cd0:	028c0000 	.inst	0x028c0000 ; undefined
     cd4:	00000000 	.inst	0x00000000 ; undefined
     cd8:	02a80000 	.inst	0x02a80000 ; undefined
     cdc:	00000000 	.inst	0x00000000 ; undefined
     ce0:	00010000 	.inst	0x00010000 ; undefined
     ce4:	0002a86b 	.inst	0x0002a86b ; undefined
     ce8:	00000000 	.inst	0x00000000 ; undefined
     cec:	0002ac00 	.inst	0x0002ac00 ; undefined
     cf0:	00000000 	.inst	0x00000000 ; undefined
     cf4:	8b000300 	add	x0, x24, x0
     cf8:	02b09f7f 	.inst	0x02b09f7f ; undefined
     cfc:	00000000 	.inst	0x00000000 ; undefined
     d00:	02d80000 	.inst	0x02d80000 ; undefined
     d04:	00000000 	.inst	0x00000000 ; undefined
     d08:	00010000 	.inst	0x00010000 ; undefined
     d0c:	00038c6b 	.inst	0x00038c6b ; undefined
     d10:	00000000 	.inst	0x00000000 ; undefined
     d14:	00039400 	.inst	0x00039400 ; undefined
     d18:	00000000 	.inst	0x00000000 ; undefined
     d1c:	6b000100 	subs	w0, w8, w0
	...
     d34:	0000028c 	.inst	0x0000028c ; undefined
     d38:	00000000 	.inst	0x00000000 ; undefined
     d3c:	000002d8 	.inst	0x000002d8 ; undefined
     d40:	00000000 	.inst	0x00000000 ; undefined
     d44:	8c5c0001 	.inst	0x8c5c0001 ; undefined
     d48:	00000003 	.inst	0x00000003 ; undefined
     d4c:	94000000 	bl	d4c <__bss_end+0x33c>
     d50:	00000003 	.inst	0x00000003 ; undefined
     d54:	01000000 	.inst	0x01000000 ; undefined
     d58:	00005c00 	.inst	0x00005c00 ; undefined
	...
     d6c:	029c0000 	.inst	0x029c0000 ; undefined
     d70:	00000000 	.inst	0x00000000 ; undefined
     d74:	02b00000 	.inst	0x02b00000 ; undefined
     d78:	00000000 	.inst	0x00000000 ; undefined
     d7c:	00010000 	.inst	0x00010000 ; undefined
     d80:	0002d454 	.inst	0x0002d454 ; undefined
     d84:	00000000 	.inst	0x00000000 ; undefined
     d88:	0002d800 	.inst	0x0002d800 ; undefined
     d8c:	00000000 	.inst	0x00000000 ; undefined
     d90:	71000300 	subs	w0, w24, #0x0
     d94:	00009f50 	.inst	0x00009f50 ; undefined
	...
     dac:	0000028c 	.inst	0x0000028c ; undefined
     db0:	00000000 	.inst	0x00000000 ; undefined
     db4:	0000029c 	.inst	0x0000029c ; undefined
     db8:	00000000 	.inst	0x00000000 ; undefined
     dbc:	b0510001 	adrp	x1, a2001000 <__bss_end+0xa20005f0>
     dc0:	00000002 	.inst	0x00000002 ; undefined
     dc4:	d0000000 	adrp	x0, 2000 <__bss_end+0x15f0>
     dc8:	00000002 	.inst	0x00000002 ; undefined
     dcc:	01000000 	.inst	0x01000000 ; undefined
     dd0:	038c5100 	.inst	0x038c5100 ; undefined
     dd4:	00000000 	.inst	0x00000000 ; undefined
     dd8:	03940000 	.inst	0x03940000 ; undefined
     ddc:	00000000 	.inst	0x00000000 ; undefined
     de0:	00010000 	.inst	0x00010000 ; undefined
     de4:	00000051 	.inst	0x00000051 ; undefined
	...
     e00:	00005c00 	.inst	0x00005c00 ; undefined
     e04:	00000000 	.inst	0x00000000 ; undefined
     e08:	50000100 	adr	x0, e2a <__bss_end+0x41a>
     e0c:	0000005c 	.inst	0x0000005c ; undefined
     e10:	00000000 	.inst	0x00000000 ; undefined
     e14:	000000b0 	.inst	0x000000b0 ; undefined
     e18:	00000000 	.inst	0x00000000 ; undefined
     e1c:	00500001 	.inst	0x00500001 ; undefined
	...
     e3c:	00008400 	.inst	0x00008400 ; undefined
     e40:	00000000 	.inst	0x00000000 ; undefined
     e44:	53000100 	ubfx	w0, w8, #0, #1
     e48:	00000084 	.inst	0x00000084 ; undefined
     e4c:	00000000 	.inst	0x00000000 ; undefined
     e50:	00000098 	.inst	0x00000098 ; undefined
     e54:	00000000 	.inst	0x00000000 ; undefined
     e58:	98570001 	ldrsw	x1, aee58 <__bss_end+0xae448>
     e5c:	00000000 	.inst	0x00000000 ; undefined
     e60:	b0000000 	adrp	x0, 1000 <__bss_end+0x5f0>
     e64:	00000000 	.inst	0x00000000 ; undefined
     e68:	01000000 	.inst	0x01000000 ; undefined
     e6c:	00005300 	.inst	0x00005300 ; undefined
	...
     e7c:	00020000 	.inst	0x00020000 ; undefined
	...
     e8c:	00340000 	.inst	0x00340000 ; NYI
     e90:	00000000 	.inst	0x00000000 ; undefined
     e94:	00020000 	.inst	0x00020000 ; undefined
     e98:	00349f30 	.inst	0x00349f30 ; NYI
     e9c:	00000000 	.inst	0x00000000 ; undefined
     ea0:	00440000 	.inst	0x00440000 ; undefined
     ea4:	00000000 	.inst	0x00000000 ; undefined
     ea8:	00010000 	.inst	0x00010000 ; undefined
     eac:	00004c58 	.inst	0x00004c58 ; undefined
     eb0:	00000000 	.inst	0x00000000 ; undefined
     eb4:	00009800 	.inst	0x00009800 ; undefined
     eb8:	00000000 	.inst	0x00000000 ; undefined
     ebc:	58000100 	ldr	x0, edc <__bss_end+0x4cc>
     ec0:	00000098 	.inst	0x00000098 ; undefined
     ec4:	00000000 	.inst	0x00000000 ; undefined
     ec8:	000000b0 	.inst	0x000000b0 ; undefined
     ecc:	00000000 	.inst	0x00000000 ; undefined
     ed0:	9f300002 	.inst	0x9f300002 ; undefined
	...
     ee4:	00000003 	.inst	0x00000003 ; undefined
	...
     ef8:	000c0000 	.inst	0x000c0000 ; undefined
     efc:	00000000 	.inst	0x00000000 ; undefined
     f00:	00020000 	.inst	0x00020000 ; undefined
     f04:	000c9f31 	.inst	0x000c9f31 ; undefined
     f08:	00000000 	.inst	0x00000000 ; undefined
     f0c:	00240000 	.inst	0x00240000 ; NYI
     f10:	00000000 	.inst	0x00000000 ; undefined
     f14:	00010000 	.inst	0x00010000 ; undefined
     f18:	00003454 	.inst	0x00003454 ; undefined
     f1c:	00000000 	.inst	0x00000000 ; undefined
     f20:	00004c00 	.inst	0x00004c00 ; undefined
     f24:	00000000 	.inst	0x00000000 ; undefined
     f28:	59000100 	stlurh	w0, [x8]
     f2c:	0000004c 	.inst	0x0000004c ; undefined
     f30:	00000000 	.inst	0x00000000 ; undefined
     f34:	00000060 	.inst	0x00000060 ; undefined
     f38:	00000000 	.inst	0x00000000 ; undefined
     f3c:	60540001 	.inst	0x60540001 ; undefined
     f40:	00000000 	.inst	0x00000000 ; undefined
     f44:	98000000 	ldrsw	x0, f44 <__bss_end+0x534>
     f48:	00000000 	.inst	0x00000000 ; undefined
     f4c:	01000000 	.inst	0x01000000 ; undefined
     f50:	00985900 	.inst	0x00985900 ; undefined
     f54:	00000000 	.inst	0x00000000 ; undefined
     f58:	00a40000 	.inst	0x00a40000 ; undefined
     f5c:	00000000 	.inst	0x00000000 ; undefined
     f60:	00010000 	.inst	0x00010000 ; undefined
     f64:	0000a454 	.inst	0x0000a454 ; undefined
     f68:	00000000 	.inst	0x00000000 ; undefined
     f6c:	0000b000 	.inst	0x0000b000 ; undefined
     f70:	00000000 	.inst	0x00000000 ; undefined
     f74:	31000200 	adds	w0, w16, #0x0
     f78:	0000009f 	.inst	0x0000009f ; undefined
	...
     f88:	01000000 	.inst	0x01000000 ; undefined
     f8c:	00003400 	.inst	0x00003400 ; undefined
     f90:	00000000 	.inst	0x00000000 ; undefined
     f94:	00004400 	.inst	0x00004400 ; undefined
     f98:	00000000 	.inst	0x00000000 ; undefined
     f9c:	55000100 	.inst	0x55000100 ; undefined
     fa0:	0000004c 	.inst	0x0000004c ; undefined
     fa4:	00000000 	.inst	0x00000000 ; undefined
     fa8:	0000007c 	.inst	0x0000007c ; undefined
     fac:	00000000 	.inst	0x00000000 ; undefined
     fb0:	00550001 	.inst	0x00550001 ; undefined
	...
     fc8:	d0000000 	adrp	x0, 2000 <__bss_end+0x15f0>
     fcc:	00000000 	.inst	0x00000000 ; undefined
     fd0:	f8000000 	stur	x0, [x0]
     fd4:	00000000 	.inst	0x00000000 ; undefined
     fd8:	01000000 	.inst	0x01000000 ; undefined
     fdc:	00f85000 	.inst	0x00f85000 ; undefined
     fe0:	00000000 	.inst	0x00000000 ; undefined
     fe4:	01800000 	.inst	0x01800000 ; undefined
     fe8:	00000000 	.inst	0x00000000 ; undefined
     fec:	00010000 	.inst	0x00010000 ; undefined
     ff0:	00018065 	.inst	0x00018065 ; undefined
     ff4:	00000000 	.inst	0x00000000 ; undefined
     ff8:	00018c00 	.inst	0x00018c00 ; undefined
     ffc:	00000000 	.inst	0x00000000 ; undefined
    1000:	f3000400 	.inst	0xf3000400 ; undefined
    1004:	8c9f5001 	.inst	0x8c9f5001 ; undefined
    1008:	00000001 	.inst	0x00000001 ; undefined
    100c:	98000000 	ldrsw	x0, 100c <__bss_end+0x5fc>
    1010:	00000001 	.inst	0x00000001 ; undefined
    1014:	01000000 	.inst	0x01000000 ; undefined
    1018:	00006500 	.inst	0x00006500 ; undefined
	...
    1030:	00d00000 	.inst	0x00d00000 ; undefined
    1034:	00000000 	.inst	0x00000000 ; undefined
    1038:	01000000 	.inst	0x01000000 ; undefined
    103c:	00000000 	.inst	0x00000000 ; undefined
    1040:	00010000 	.inst	0x00010000 ; undefined
    1044:	00010051 	.inst	0x00010051 ; undefined
    1048:	00000000 	.inst	0x00000000 ; undefined
    104c:	00018000 	.inst	0x00018000 ; undefined
    1050:	00000000 	.inst	0x00000000 ; undefined
    1054:	66000100 	.inst	0x66000100 ; undefined
    1058:	00000180 	.inst	0x00000180 ; undefined
    105c:	00000000 	.inst	0x00000000 ; undefined
    1060:	0000018c 	.inst	0x0000018c ; undefined
    1064:	00000000 	.inst	0x00000000 ; undefined
    1068:	01f30004 	.inst	0x01f30004 ; undefined
    106c:	018c9f51 	.inst	0x018c9f51 ; undefined
    1070:	00000000 	.inst	0x00000000 ; undefined
    1074:	01980000 	.inst	0x01980000 ; undefined
    1078:	00000000 	.inst	0x00000000 ; undefined
    107c:	00010000 	.inst	0x00010000 ; undefined
    1080:	00000066 	.inst	0x00000066 ; undefined
	...
    10a0:	0000d000 	.inst	0x0000d000 ; undefined
    10a4:	00000000 	.inst	0x00000000 ; undefined
    10a8:	00011c00 	.inst	0x00011c00 ; undefined
    10ac:	00000000 	.inst	0x00000000 ; undefined
    10b0:	52000100 	eor	w0, w8, #0x1
    10b4:	0000011c 	.inst	0x0000011c ; undefined
    10b8:	00000000 	.inst	0x00000000 ; undefined
    10bc:	00000124 	.inst	0x00000124 ; undefined
    10c0:	00000000 	.inst	0x00000000 ; undefined
    10c4:	24540001 	cmphs	p1.h, p0/z, z0.h, z20.h
    10c8:	00000001 	.inst	0x00000001 ; undefined
    10cc:	2c000000 	stnp	s0, s0, [x0]
    10d0:	00000001 	.inst	0x00000001 ; undefined
    10d4:	01000000 	.inst	0x01000000 ; undefined
    10d8:	012c5200 	.inst	0x012c5200 ; undefined
    10dc:	00000000 	.inst	0x00000000 ; undefined
    10e0:	01380000 	.inst	0x01380000 ; undefined
    10e4:	00000000 	.inst	0x00000000 ; undefined
    10e8:	00010000 	.inst	0x00010000 ; undefined
    10ec:	00013854 	.inst	0x00013854 ; undefined
    10f0:	00000000 	.inst	0x00000000 ; undefined
    10f4:	00015000 	.inst	0x00015000 ; undefined
    10f8:	00000000 	.inst	0x00000000 ; undefined
    10fc:	63000100 	.inst	0x63000100 ; undefined
    1100:	00000150 	.inst	0x00000150 ; undefined
    1104:	00000000 	.inst	0x00000000 ; undefined
    1108:	00000164 	.inst	0x00000164 ; undefined
    110c:	00000000 	.inst	0x00000000 ; undefined
    1110:	8c500001 	.inst	0x8c500001 ; undefined
    1114:	00000001 	.inst	0x00000001 ; undefined
    1118:	90000000 	adrp	x0, 1000 <__bss_end+0x5f0>
    111c:	00000001 	.inst	0x00000001 ; undefined
    1120:	01000000 	.inst	0x01000000 ; undefined
    1124:	01905200 	.inst	0x01905200 ; undefined
    1128:	00000000 	.inst	0x00000000 ; undefined
    112c:	01980000 	.inst	0x01980000 ; undefined
    1130:	00000000 	.inst	0x00000000 ; undefined
    1134:	00010000 	.inst	0x00010000 ; undefined
    1138:	00000063 	.inst	0x00000063 ; undefined
	...
    114c:	d0000000 	adrp	x0, 3000 <__bss_end+0x25f0>
    1150:	00000000 	.inst	0x00000000 ; undefined
    1154:	1c000000 	ldr	s0, 1154 <__bss_end+0x744>
    1158:	00000001 	.inst	0x00000001 ; undefined
    115c:	01000000 	.inst	0x01000000 ; undefined
    1160:	011c5300 	.inst	0x011c5300 ; undefined
    1164:	00000000 	.inst	0x00000000 ; undefined
    1168:	018c0000 	.inst	0x018c0000 ; undefined
    116c:	00000000 	.inst	0x00000000 ; undefined
    1170:	00040000 	.inst	0x00040000 ; undefined
    1174:	9f5301f3 	.inst	0x9f5301f3 ; undefined
    1178:	0000018c 	.inst	0x0000018c ; undefined
    117c:	00000000 	.inst	0x00000000 ; undefined
    1180:	00000198 	.inst	0x00000198 ; undefined
    1184:	00000000 	.inst	0x00000000 ; undefined
    1188:	00530001 	.inst	0x00530001 ; undefined
	...
    11a0:	d0000000 	adrp	x0, 3000 <__bss_end+0x25f0>
    11a4:	00000000 	.inst	0x00000000 ; undefined
    11a8:	1c000000 	ldr	s0, 11a8 <__bss_end+0x798>
    11ac:	00000001 	.inst	0x00000001 ; undefined
    11b0:	01000000 	.inst	0x01000000 ; undefined
    11b4:	011c5400 	.inst	0x011c5400 ; undefined
    11b8:	00000000 	.inst	0x00000000 ; undefined
    11bc:	01840000 	.inst	0x01840000 ; undefined
    11c0:	00000000 	.inst	0x00000000 ; undefined
    11c4:	00010000 	.inst	0x00010000 ; undefined
    11c8:	00018468 	.inst	0x00018468 ; undefined
    11cc:	00000000 	.inst	0x00000000 ; undefined
    11d0:	00018c00 	.inst	0x00018c00 ; undefined
    11d4:	00000000 	.inst	0x00000000 ; undefined
    11d8:	f3000400 	.inst	0xf3000400 ; undefined
    11dc:	8c9f5401 	.inst	0x8c9f5401 ; undefined
    11e0:	00000001 	.inst	0x00000001 ; undefined
    11e4:	98000000 	ldrsw	x0, 11e4 <__bss_end+0x7d4>
    11e8:	00000001 	.inst	0x00000001 ; undefined
    11ec:	01000000 	.inst	0x01000000 ; undefined
    11f0:	00005400 	.inst	0x00005400 ; undefined
	...
    1208:	00000104 	.inst	0x00000104 ; undefined
    120c:	00000000 	.inst	0x00000000 ; undefined
    1210:	00000184 	.inst	0x00000184 ; undefined
    1214:	00000000 	.inst	0x00000000 ; undefined
    1218:	84670001 	prfb	pldl1strm, p0, [x0, z7.s, sxtw]
    121c:	00000001 	.inst	0x00000001 ; undefined
    1220:	8c000000 	.inst	0x8c000000 ; undefined
    1224:	00000001 	.inst	0x00000001 ; undefined
    1228:	12000000 	and	w0, w0, #0x1
    122c:	08300800 	.inst	0x08300800 ; undefined
    1230:	5301f320 	.inst	0x5301f320 ; undefined
    1234:	301aff08 	adr	x8, 37215 <__bss_end+0x36805>
    1238:	0001282e 	.inst	0x0001282e ; undefined
    123c:	8c9f1316 	.inst	0x8c9f1316 ; undefined
    1240:	00000001 	.inst	0x00000001 ; undefined
    1244:	98000000 	ldrsw	x0, 1244 <__bss_end+0x834>
    1248:	00000001 	.inst	0x00000001 ; undefined
    124c:	01000000 	.inst	0x01000000 ; undefined
    1250:	00006700 	.inst	0x00006700 ; undefined
	...
    1260:	01000000 	.inst	0x01000000 ; undefined
    1264:	00000000 	.inst	0x00000000 ; undefined
    1268:	01080000 	.inst	0x01080000 ; undefined
    126c:	00000000 	.inst	0x00000000 ; undefined
    1270:	01080000 	.inst	0x01080000 ; undefined
    1274:	00000000 	.inst	0x00000000 ; undefined
    1278:	00010000 	.inst	0x00010000 ; undefined
    127c:	00011c54 	.inst	0x00011c54 ; undefined
    1280:	00000000 	.inst	0x00000000 ; undefined
    1284:	00012c00 	.inst	0x00012c00 ; undefined
    1288:	00000000 	.inst	0x00000000 ; undefined
    128c:	50000100 	adr	x0, 12ae <__bss_end+0x89e>
    1290:	0000012c 	.inst	0x0000012c ; undefined
    1294:	00000000 	.inst	0x00000000 ; undefined
    1298:	00000130 	.inst	0x00000130 ; undefined
    129c:	00000000 	.inst	0x00000000 ; undefined
    12a0:	01700003 	.inst	0x01700003 ; undefined
    12a4:	0001309f 	.inst	0x0001309f ; undefined
    12a8:	00000000 	.inst	0x00000000 ; undefined
    12ac:	00013c00 	.inst	0x00013c00 ; undefined
    12b0:	00000000 	.inst	0x00000000 ; undefined
    12b4:	50000100 	adr	x0, 12d6 <__bss_end+0x8c6>
	...
    12cc:	0000015c 	.inst	0x0000015c ; undefined
    12d0:	00000000 	.inst	0x00000000 ; undefined
    12d4:	00000174 	.inst	0x00000174 ; undefined
    12d8:	00000000 	.inst	0x00000000 ; undefined
    12dc:	74640001 	.inst	0x74640001 ; undefined
    12e0:	00000001 	.inst	0x00000001 ; undefined
    12e4:	78000000 	sturh	w0, [x0]
    12e8:	00000001 	.inst	0x00000001 ; undefined
    12ec:	03000000 	.inst	0x03000000 ; undefined
    12f0:	9f7f8400 	.inst	0x9f7f8400 ; undefined
	...
    1308:	00000160 	.inst	0x00000160 ; undefined
    130c:	00000000 	.inst	0x00000000 ; undefined
    1310:	0000016f 	.inst	0x0000016f ; undefined
    1314:	00000000 	.inst	0x00000000 ; undefined
    1318:	74510001 	.inst	0x74510001 ; undefined
    131c:	00000001 	.inst	0x00000001 ; undefined
    1320:	78000000 	sturh	w0, [x0]
    1324:	00000001 	.inst	0x00000001 ; undefined
    1328:	01000000 	.inst	0x01000000 ; undefined
    132c:	00005100 	.inst	0x00005100 ; undefined
	...
    1340:	000008e8 	.inst	0x000008e8 ; undefined
    1344:	00000000 	.inst	0x00000000 ; undefined
    1348:	000008ec 	.inst	0x000008ec ; undefined
    134c:	00000000 	.inst	0x00000000 ; undefined
    1350:	00500001 	.inst	0x00500001 ; undefined
	...
    1364:	0008d800 	.inst	0x0008d800 ; undefined
    1368:	00000000 	.inst	0x00000000 ; undefined
    136c:	0008dc00 	.inst	0x0008dc00 ; undefined
    1370:	00000000 	.inst	0x00000000 ; undefined
    1374:	50000100 	adr	x0, 1396 <__bss_end+0x986>
	...
    1388:	08c00000 	ldlarb	w0, [x0]
    138c:	00000000 	.inst	0x00000000 ; undefined
    1390:	08c80000 	ldlarb	w0, [x0]
    1394:	00000000 	.inst	0x00000000 ; undefined
    1398:	00010000 	.inst	0x00010000 ; undefined
    139c:	00000050 	.inst	0x00000050 ; undefined
	...

Disassembly of section .debug_ranges:

0000000000000000 <.debug_ranges>:
    mrs x0, mpidr_el1
   0:	00000024 	.inst	0x00000024 ; undefined
    and x0, x0, #0xFF
   4:	00000000 	.inst	0x00000000 ; undefined
    cbnz x0, halt_proc
   8:	00000084 	.inst	0x00000084 ; undefined
    adr x0, __bss_start
   c:	00000000 	.inst	0x00000000 ; undefined
    adr x1, __bss_end
  10:	00000088 	.inst	0x00000088 ; undefined
    sub x1, x1, x0
  14:	00000000 	.inst	0x00000000 ; undefined
    bl   memzero
  18:	0000008c 	.inst	0x0000008c ; undefined
	...
{
  30:	000001ac 	.inst	0x000001ac ; undefined
  34:	00000000 	.inst	0x00000000 ; undefined
  38:	000001b4 	.inst	0x000001b4 ; undefined
    uart_init();
  3c:	00000000 	.inst	0x00000000 ; undefined
    init_printf(0, putc);
  40:	000001bc 	.inst	0x000001bc ; undefined
  44:	00000000 	.inst	0x00000000 ; undefined
  48:	000001c0 	.inst	0x000001c0 ; undefined
  4c:	00000000 	.inst	0x00000000 ; undefined
    printf("Core %d up at Exception level %d\n", get_core_id(), get_el());
  50:	000001cc 	.inst	0x000001cc ; undefined
  54:	00000000 	.inst	0x00000000 ; undefined
  58:	000001d4 	.inst	0x000001d4 ; undefined
  5c:	00000000 	.inst	0x00000000 ; undefined
  60:	00000220 	.inst	0x00000220 ; undefined
  64:	00000000 	.inst	0x00000000 ; undefined
  68:	00000370 	.inst	0x00000370 ; undefined
  6c:	00000000 	.inst	0x00000000 ; undefined
    }
  70:	0000038c 	.inst	0x0000038c ; undefined
  74:	00000000 	.inst	0x00000000 ; undefined
    ldr x0, =(SCTLR_EL1_EE_LITTLE | SCTLR_EL1_E0E_LITTLE |\
  78:	000004d8 	.inst	0x000004d8 ; undefined
	...
    msr ELR_EL3, lr
  90:	000001cc 	.inst	0x000001cc ; undefined
    ldr x0, =(SPSR_MODE_EL1h | SPSR_MASK_EXCEPTIONS)
  94:	00000000 	.inst	0x00000000 ; undefined
    msr SPSR_EL3, x0
  98:	000001d4 	.inst	0x000001d4 ; undefined
    ldr x0, =STACK_BASE
  9c:	00000000 	.inst	0x00000000 ; undefined
    msr SP_EL1, x0
  a0:	00000280 	.inst	0x00000280 ; undefined
    eret
  a4:	00000000 	.inst	0x00000000 ; undefined
  a8:	0000028c 	.inst	0x0000028c ; undefined
  ac:	00000000 	.inst	0x00000000 ; undefined
  b0:	00000340 	.inst	0x00000340 ; undefined
  b4:	00000000 	.inst	0x00000000 ; undefined
  b8:	0000035c 	.inst	0x0000035c ; undefined
	...
void irq_handler(void) {
  d0:	00000238 	.inst	0x00000238 ; undefined
    printf("IRQ HANDLER\n");
  d4:	00000000 	.inst	0x00000000 ; undefined
  d8:	0000023c 	.inst	0x0000023c ; undefined
void irq_handler(void) {
  dc:	00000000 	.inst	0x00000000 ; undefined
    printf("IRQ HANDLER\n");
  e0:	0000028c 	.inst	0x0000028c ; undefined
    while(1);
  e4:	00000000 	.inst	0x00000000 ; undefined
  e8:	000002d8 	.inst	0x000002d8 ; undefined
  ec:	00000000 	.inst	0x00000000 ; undefined
void __attribute__ ((interrupt ("ABORT"))) reset_handler(void) {
  f0:	0000038c 	.inst	0x0000038c ; undefined
    printf("RESET HANDLER\n");
  f4:	00000000 	.inst	0x00000000 ; undefined
  f8:	00000394 	.inst	0x00000394 ; undefined
	...
void __attribute__ ((interrupt ("ABORT"))) prefetch_abort_handler(void) {
 110:	0000028c 	.inst	0x0000028c ; undefined
    printf("PREFETCH ABORT HANDLER\n");
 114:	00000000 	.inst	0x00000000 ; undefined
 118:	0000029c 	.inst	0x0000029c ; undefined
void __attribute__ ((interrupt ("ABORT"))) prefetch_abort_handler(void) {
 11c:	00000000 	.inst	0x00000000 ; undefined
    printf("PREFETCH ABORT HANDLER\n");
 120:	000002b0 	.inst	0x000002b0 ; undefined
    while(1);
 124:	00000000 	.inst	0x00000000 ; undefined
 128:	000002d4 	.inst	0x000002d4 ; undefined
 12c:	00000000 	.inst	0x00000000 ; undefined
void __attribute__ ((interrupt ("ABORT"))) data_abort_handler(void) {
 130:	0000038c 	.inst	0x0000038c ; undefined
    printf("DATA ABORT HANDLER\n");
 134:	00000000 	.inst	0x00000000 ; undefined
 138:	00000394 	.inst	0x00000394 ; undefined
	...
void __attribute__ ((interrupt ("UNDEF"))) undefined_instruction_handler(void) {
 150:	000008c0 	.inst	0x000008c0 ; undefined
    printf("UNDEFINED INSTRUCTION HANDLER\n");
 154:	00000000 	.inst	0x00000000 ; undefined
 158:	000008ec 	.inst	0x000008ec ; undefined
	...

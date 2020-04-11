
build/raspios.elf:     file format elf64-littleaarch64

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  0 .text         00000e08  0000000000000000  0000000000000000  00010000  2**7
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .text.kernel_main 0000006c  0000000000000e08  0000000000000e08  00010e08  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .text.routing_core0cntv_to_core0irq 00000024  0000000000000e74  0000000000000e74  00010e74  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  3 .text.read_core0timer_pending 00000024  0000000000000e98  0000000000000e98  00010e98  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  4 .text.enable_cntv 00000020  0000000000000ebc  0000000000000ebc  00010ebc  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  5 .text.write_cntv_tval 0000001c  0000000000000edc  0000000000000edc  00010edc  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  6 .text.read_cntfrq 00000018  0000000000000ef8  0000000000000ef8  00010ef8  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  7 .text.init_systimer 00000054  0000000000000f10  0000000000000f10  00010f10  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  8 .text.systick_handler 000000b0  0000000000000f64  0000000000000f64  00010f64  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  9 .text.timer_intr_pending 0000002c  0000000000001014  0000000000001014  00011014  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 10 .text.init_systick_timer 0000001c  0000000000001040  0000000000001040  00011040  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 11 .text.enable_interrupts 0000002c  000000000000105c  000000000000105c  0001105c  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 12 .text.init_interrupts 0000002c  0000000000001088  0000000000001088  00011088  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 13 .text.irq_handler 00000040  00000000000010b4  00000000000010b4  000110b4  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 14 .text.init_uart 000000dc  00000000000010f4  00000000000010f4  000110f4  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 15 .text.uart_read_available 00000020  00000000000011d0  00000000000011d0  000111d0  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 16 .text.uart_read 00000024  00000000000011f0  00000000000011f0  000111f0  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 17 .text.uart_write 00000028  0000000000001214  0000000000001214  00011214  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 18 .text.putc    00000024  000000000000123c  000000000000123c  0001123c  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 19 .text.ui2a    00000128  0000000000001260  0000000000001260  00011260  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 20 .text.i2a     0000005c  0000000000001388  0000000000001388  00011388  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 21 .text.a2d     00000080  00000000000013e4  00000000000013e4  000113e4  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 22 .text.a2i     000000ac  0000000000001464  0000000000001464  00011464  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 23 .text.putchw  000000dc  0000000000001510  0000000000001510  00011510  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 24 .text.tfp_format 00000420  00000000000015ec  00000000000015ec  000115ec  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 25 .text.init_printf 00000038  0000000000001a0c  0000000000001a0c  00011a0c  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 26 .text.tfp_printf 000000a0  0000000000001a44  0000000000001a44  00011a44  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 27 .text.delay   00000020  0000000000001ae4  0000000000001ae4  00011ae4  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 28 .text.get_core_id 0000001c  0000000000001b04  0000000000001b04  00011b04  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 29 .text.get_el  0000001c  0000000000001b20  0000000000001b20  00011b20  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 30 .text.mmio_write 00000028  0000000000001b3c  0000000000001b3c  00011b3c  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 31 .text.mmio_read 00000018  0000000000001b64  0000000000001b64  00011b64  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 32 .text.dump_regs 00000198  0000000000001b7c  0000000000001b7c  00011b7c  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 33 .rodata       0000007a  0000000000001d18  0000000000001d18  00011d18  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 34 .got          00000030  0000000000001d98  0000000000001d98  00011d98  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 35 .got.plt      00000018  0000000000001dc8  0000000000001dc8  00011dc8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 36 .data.AUX_ENABLES 00000008  0000000000001de0  0000000000001de0  00011de0  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 37 .data.mini_uart 00000008  0000000000001de8  0000000000001de8  00011de8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 38 .data.gpio    00000008  0000000000001df0  0000000000001df0  00011df0  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 39 .debug_info   000010ce  0000000000000000  0000000000000000  00011df8  2**0
                  CONTENTS, READONLY, DEBUGGING
 40 .debug_abbrev 000006f9  0000000000000000  0000000000000000  00012ec6  2**0
                  CONTENTS, READONLY, DEBUGGING
 41 .debug_aranges 000003b0  0000000000000000  0000000000000000  000135c0  2**4
                  CONTENTS, READONLY, DEBUGGING
 42 .debug_ranges 00000320  0000000000000000  0000000000000000  00013970  2**4
                  CONTENTS, READONLY, DEBUGGING
 43 .debug_macro  00000e87  0000000000000000  0000000000000000  00013c90  2**0
                  CONTENTS, READONLY, DEBUGGING
 44 .debug_line   00000c69  0000000000000000  0000000000000000  00014b17  2**0
                  CONTENTS, READONLY, DEBUGGING
 45 .debug_str    00003f99  0000000000000000  0000000000000000  00015780  2**0
                  CONTENTS, READONLY, DEBUGGING
 46 .comment      00000055  0000000000000000  0000000000000000  00019719  2**0
                  CONTENTS, READONLY
 47 .debug_frame  00000590  0000000000000000  0000000000000000  00019770  2**3
                  CONTENTS, READONLY, DEBUGGING
 48 .bss          00000030  0000000000001df8  0000000000001df8  00011df8  2**3
                  ALLOC
 49 .bss.stdout_putf 00000008  0000000000001e28  0000000000001e28  00011df8  2**3
                  ALLOC
 50 .bss.stdout_putp 00000008  0000000000001e30  0000000000001e30  00011df8  2**3
                  ALLOC

Disassembly of section .text:

0000000000000000 <vector_table>:
    .endm

.section ".vectors"
/*Following is based on Sec 10.4 "AArch64 exception table" of Armv8-A Programmer's Guide */ 
vector_table :
    vtable_entry    sync_cur_el_sp0
   0:	140001e1 	b	784 <sync_cur_el_sp0>
	...
    vtable_entry    irq_cur_el_sp0
  80:	140001d7 	b	7dc <irq_cur_el_sp0>
	...
    vtable_entry    fiq_cur_el_sp0
 100:	140001cd 	b	834 <fiq_cur_el_sp0>
	...
    vtable_entry    serror_cur_el_sp0
 180:	140001c3 	b	88c <serror_cur_el_sp0>
	...

    vtable_entry    sync_cur_el_spx
 200:	140001b9 	b	8e4 <sync_cur_el_spx>
	...
    vtable_entry    irq_cur_el_spx
 280:	1400028b 	b	cac <irq_cur_el_spx>
	...
    vtable_entry    fiq_cur_el_spx
 300:	1400018f 	b	93c <fiq_cur_el_spx>
	...
    vtable_entry    serror_cur_el_spx
 380:	14000185 	b	994 <serror_cur_el_spx>
	...

    vtable_entry    sync_lower_el_a64
 400:	1400017b 	b	9ec <sync_lower_el_a64>
	...
    vtable_entry    irq_lower_el_a64
 480:	14000171 	b	a44 <irq_lower_el_a64>
	...
    vtable_entry    fiq_lower_el_a64
 500:	14000167 	b	a9c <fiq_lower_el_a64>
	...
    vtable_entry    serror_lower_el_a64
 580:	1400015d 	b	af4 <serror_lower_el_a64>
	...
    
    vtable_entry    sync_lower_el_a32
 600:	14000153 	b	b4c <sync_lower_el_a32>
	...
    vtable_entry    irq_lower_el_a32 
 680:	14000149 	b	ba4 <irq_lower_el_a32>
	...
    vtable_entry    fiq_lower_el_a32
 700:	1400013f 	b	bfc <fiq_lower_el_a32>
	...
    vtable_entry    serror_lower_el_a32
 780:	14000135 	b	c54 <serror_lower_el_a32>

0000000000000784 <sync_cur_el_sp0>:


/* Exception Handlers */
ehandler_loop_infinite  sync_cur_el_sp0
 784:	d10423ff 	sub	sp, sp, #0x108
 788:	a90007e0 	stp	x0, x1, [sp]
 78c:	a9010fe2 	stp	x2, x3, [sp, #16]
 790:	a90217e4 	stp	x4, x5, [sp, #32]
 794:	a9031fe6 	stp	x6, x7, [sp, #48]
 798:	a90427e8 	stp	x8, x9, [sp, #64]
 79c:	a9052fea 	stp	x10, x11, [sp, #80]
 7a0:	a90637ec 	stp	x12, x13, [sp, #96]
 7a4:	a9073fee 	stp	x14, x15, [sp, #112]
 7a8:	a90847f0 	stp	x16, x17, [sp, #128]
 7ac:	a9094ff2 	stp	x18, x19, [sp, #144]
 7b0:	a90a57f4 	stp	x20, x21, [sp, #160]
 7b4:	a90b5ff6 	stp	x22, x23, [sp, #176]
 7b8:	a90c67f8 	stp	x24, x25, [sp, #192]
 7bc:	a90d6ffa 	stp	x26, x27, [sp, #208]
 7c0:	a90e77fc 	stp	x28, x29, [sp, #224]
 7c4:	d5384000 	mrs	x0, spsr_el1
 7c8:	d5384021 	mrs	x1, elr_el1
 7cc:	a90f03fe 	stp	x30, x0, [sp, #240]
 7d0:	f9007fe1 	str	x1, [sp, #248]
 7d4:	940004ea 	bl	1b7c <dump_regs>
 7d8:	14000000 	b	7d8 <sync_cur_el_sp0+0x54>

00000000000007dc <irq_cur_el_sp0>:
ehandler_loop_infinite  irq_cur_el_sp0
 7dc:	d10423ff 	sub	sp, sp, #0x108
 7e0:	a90007e0 	stp	x0, x1, [sp]
 7e4:	a9010fe2 	stp	x2, x3, [sp, #16]
 7e8:	a90217e4 	stp	x4, x5, [sp, #32]
 7ec:	a9031fe6 	stp	x6, x7, [sp, #48]
 7f0:	a90427e8 	stp	x8, x9, [sp, #64]
 7f4:	a9052fea 	stp	x10, x11, [sp, #80]
 7f8:	a90637ec 	stp	x12, x13, [sp, #96]
 7fc:	a9073fee 	stp	x14, x15, [sp, #112]
 800:	a90847f0 	stp	x16, x17, [sp, #128]
 804:	a9094ff2 	stp	x18, x19, [sp, #144]
 808:	a90a57f4 	stp	x20, x21, [sp, #160]
 80c:	a90b5ff6 	stp	x22, x23, [sp, #176]
 810:	a90c67f8 	stp	x24, x25, [sp, #192]
 814:	a90d6ffa 	stp	x26, x27, [sp, #208]
 818:	a90e77fc 	stp	x28, x29, [sp, #224]
 81c:	d5384000 	mrs	x0, spsr_el1
 820:	d5384021 	mrs	x1, elr_el1
 824:	a90f03fe 	stp	x30, x0, [sp, #240]
 828:	f9007fe1 	str	x1, [sp, #248]
 82c:	940004d4 	bl	1b7c <dump_regs>
 830:	14000000 	b	830 <irq_cur_el_sp0+0x54>

0000000000000834 <fiq_cur_el_sp0>:
ehandler_loop_infinite  fiq_cur_el_sp0
 834:	d10423ff 	sub	sp, sp, #0x108
 838:	a90007e0 	stp	x0, x1, [sp]
 83c:	a9010fe2 	stp	x2, x3, [sp, #16]
 840:	a90217e4 	stp	x4, x5, [sp, #32]
 844:	a9031fe6 	stp	x6, x7, [sp, #48]
 848:	a90427e8 	stp	x8, x9, [sp, #64]
 84c:	a9052fea 	stp	x10, x11, [sp, #80]
 850:	a90637ec 	stp	x12, x13, [sp, #96]
 854:	a9073fee 	stp	x14, x15, [sp, #112]
 858:	a90847f0 	stp	x16, x17, [sp, #128]
 85c:	a9094ff2 	stp	x18, x19, [sp, #144]
 860:	a90a57f4 	stp	x20, x21, [sp, #160]
 864:	a90b5ff6 	stp	x22, x23, [sp, #176]
 868:	a90c67f8 	stp	x24, x25, [sp, #192]
 86c:	a90d6ffa 	stp	x26, x27, [sp, #208]
 870:	a90e77fc 	stp	x28, x29, [sp, #224]
 874:	d5384000 	mrs	x0, spsr_el1
 878:	d5384021 	mrs	x1, elr_el1
 87c:	a90f03fe 	stp	x30, x0, [sp, #240]
 880:	f9007fe1 	str	x1, [sp, #248]
 884:	940004be 	bl	1b7c <dump_regs>
 888:	14000000 	b	888 <fiq_cur_el_sp0+0x54>

000000000000088c <serror_cur_el_sp0>:
ehandler_loop_infinite  serror_cur_el_sp0
 88c:	d10423ff 	sub	sp, sp, #0x108
 890:	a90007e0 	stp	x0, x1, [sp]
 894:	a9010fe2 	stp	x2, x3, [sp, #16]
 898:	a90217e4 	stp	x4, x5, [sp, #32]
 89c:	a9031fe6 	stp	x6, x7, [sp, #48]
 8a0:	a90427e8 	stp	x8, x9, [sp, #64]
 8a4:	a9052fea 	stp	x10, x11, [sp, #80]
 8a8:	a90637ec 	stp	x12, x13, [sp, #96]
 8ac:	a9073fee 	stp	x14, x15, [sp, #112]
 8b0:	a90847f0 	stp	x16, x17, [sp, #128]
 8b4:	a9094ff2 	stp	x18, x19, [sp, #144]
 8b8:	a90a57f4 	stp	x20, x21, [sp, #160]
 8bc:	a90b5ff6 	stp	x22, x23, [sp, #176]
 8c0:	a90c67f8 	stp	x24, x25, [sp, #192]
 8c4:	a90d6ffa 	stp	x26, x27, [sp, #208]
 8c8:	a90e77fc 	stp	x28, x29, [sp, #224]
 8cc:	d5384000 	mrs	x0, spsr_el1
 8d0:	d5384021 	mrs	x1, elr_el1
 8d4:	a90f03fe 	stp	x30, x0, [sp, #240]
 8d8:	f9007fe1 	str	x1, [sp, #248]
 8dc:	940004a8 	bl	1b7c <dump_regs>
 8e0:	14000000 	b	8e0 <serror_cur_el_sp0+0x54>

00000000000008e4 <sync_cur_el_spx>:

ehandler_loop_infinite  sync_cur_el_spx
 8e4:	d10423ff 	sub	sp, sp, #0x108
 8e8:	a90007e0 	stp	x0, x1, [sp]
 8ec:	a9010fe2 	stp	x2, x3, [sp, #16]
 8f0:	a90217e4 	stp	x4, x5, [sp, #32]
 8f4:	a9031fe6 	stp	x6, x7, [sp, #48]
 8f8:	a90427e8 	stp	x8, x9, [sp, #64]
 8fc:	a9052fea 	stp	x10, x11, [sp, #80]
 900:	a90637ec 	stp	x12, x13, [sp, #96]
 904:	a9073fee 	stp	x14, x15, [sp, #112]
 908:	a90847f0 	stp	x16, x17, [sp, #128]
 90c:	a9094ff2 	stp	x18, x19, [sp, #144]
 910:	a90a57f4 	stp	x20, x21, [sp, #160]
 914:	a90b5ff6 	stp	x22, x23, [sp, #176]
 918:	a90c67f8 	stp	x24, x25, [sp, #192]
 91c:	a90d6ffa 	stp	x26, x27, [sp, #208]
 920:	a90e77fc 	stp	x28, x29, [sp, #224]
 924:	d5384000 	mrs	x0, spsr_el1
 928:	d5384021 	mrs	x1, elr_el1
 92c:	a90f03fe 	stp	x30, x0, [sp, #240]
 930:	f9007fe1 	str	x1, [sp, #248]
 934:	94000492 	bl	1b7c <dump_regs>
 938:	14000000 	b	938 <sync_cur_el_spx+0x54>

000000000000093c <fiq_cur_el_spx>:
/*--- IRQ handled separately */
ehandler_loop_infinite  fiq_cur_el_spx
 93c:	d10423ff 	sub	sp, sp, #0x108
 940:	a90007e0 	stp	x0, x1, [sp]
 944:	a9010fe2 	stp	x2, x3, [sp, #16]
 948:	a90217e4 	stp	x4, x5, [sp, #32]
 94c:	a9031fe6 	stp	x6, x7, [sp, #48]
 950:	a90427e8 	stp	x8, x9, [sp, #64]
 954:	a9052fea 	stp	x10, x11, [sp, #80]
 958:	a90637ec 	stp	x12, x13, [sp, #96]
 95c:	a9073fee 	stp	x14, x15, [sp, #112]
 960:	a90847f0 	stp	x16, x17, [sp, #128]
 964:	a9094ff2 	stp	x18, x19, [sp, #144]
 968:	a90a57f4 	stp	x20, x21, [sp, #160]
 96c:	a90b5ff6 	stp	x22, x23, [sp, #176]
 970:	a90c67f8 	stp	x24, x25, [sp, #192]
 974:	a90d6ffa 	stp	x26, x27, [sp, #208]
 978:	a90e77fc 	stp	x28, x29, [sp, #224]
 97c:	d5384000 	mrs	x0, spsr_el1
 980:	d5384021 	mrs	x1, elr_el1
 984:	a90f03fe 	stp	x30, x0, [sp, #240]
 988:	f9007fe1 	str	x1, [sp, #248]
 98c:	9400047c 	bl	1b7c <dump_regs>
 990:	14000000 	b	990 <fiq_cur_el_spx+0x54>

0000000000000994 <serror_cur_el_spx>:
ehandler_loop_infinite  serror_cur_el_spx
 994:	d10423ff 	sub	sp, sp, #0x108
 998:	a90007e0 	stp	x0, x1, [sp]
 99c:	a9010fe2 	stp	x2, x3, [sp, #16]
 9a0:	a90217e4 	stp	x4, x5, [sp, #32]
 9a4:	a9031fe6 	stp	x6, x7, [sp, #48]
 9a8:	a90427e8 	stp	x8, x9, [sp, #64]
 9ac:	a9052fea 	stp	x10, x11, [sp, #80]
 9b0:	a90637ec 	stp	x12, x13, [sp, #96]
 9b4:	a9073fee 	stp	x14, x15, [sp, #112]
 9b8:	a90847f0 	stp	x16, x17, [sp, #128]
 9bc:	a9094ff2 	stp	x18, x19, [sp, #144]
 9c0:	a90a57f4 	stp	x20, x21, [sp, #160]
 9c4:	a90b5ff6 	stp	x22, x23, [sp, #176]
 9c8:	a90c67f8 	stp	x24, x25, [sp, #192]
 9cc:	a90d6ffa 	stp	x26, x27, [sp, #208]
 9d0:	a90e77fc 	stp	x28, x29, [sp, #224]
 9d4:	d5384000 	mrs	x0, spsr_el1
 9d8:	d5384021 	mrs	x1, elr_el1
 9dc:	a90f03fe 	stp	x30, x0, [sp, #240]
 9e0:	f9007fe1 	str	x1, [sp, #248]
 9e4:	94000466 	bl	1b7c <dump_regs>
 9e8:	14000000 	b	9e8 <serror_cur_el_spx+0x54>

00000000000009ec <sync_lower_el_a64>:

ehandler_loop_infinite  sync_lower_el_a64
 9ec:	d10423ff 	sub	sp, sp, #0x108
 9f0:	a90007e0 	stp	x0, x1, [sp]
 9f4:	a9010fe2 	stp	x2, x3, [sp, #16]
 9f8:	a90217e4 	stp	x4, x5, [sp, #32]
 9fc:	a9031fe6 	stp	x6, x7, [sp, #48]
 a00:	a90427e8 	stp	x8, x9, [sp, #64]
 a04:	a9052fea 	stp	x10, x11, [sp, #80]
 a08:	a90637ec 	stp	x12, x13, [sp, #96]
 a0c:	a9073fee 	stp	x14, x15, [sp, #112]
 a10:	a90847f0 	stp	x16, x17, [sp, #128]
 a14:	a9094ff2 	stp	x18, x19, [sp, #144]
 a18:	a90a57f4 	stp	x20, x21, [sp, #160]
 a1c:	a90b5ff6 	stp	x22, x23, [sp, #176]
 a20:	a90c67f8 	stp	x24, x25, [sp, #192]
 a24:	a90d6ffa 	stp	x26, x27, [sp, #208]
 a28:	a90e77fc 	stp	x28, x29, [sp, #224]
 a2c:	d5384000 	mrs	x0, spsr_el1
 a30:	d5384021 	mrs	x1, elr_el1
 a34:	a90f03fe 	stp	x30, x0, [sp, #240]
 a38:	f9007fe1 	str	x1, [sp, #248]
 a3c:	94000450 	bl	1b7c <dump_regs>
 a40:	14000000 	b	a40 <sync_lower_el_a64+0x54>

0000000000000a44 <irq_lower_el_a64>:
ehandler_loop_infinite  irq_lower_el_a64
 a44:	d10423ff 	sub	sp, sp, #0x108
 a48:	a90007e0 	stp	x0, x1, [sp]
 a4c:	a9010fe2 	stp	x2, x3, [sp, #16]
 a50:	a90217e4 	stp	x4, x5, [sp, #32]
 a54:	a9031fe6 	stp	x6, x7, [sp, #48]
 a58:	a90427e8 	stp	x8, x9, [sp, #64]
 a5c:	a9052fea 	stp	x10, x11, [sp, #80]
 a60:	a90637ec 	stp	x12, x13, [sp, #96]
 a64:	a9073fee 	stp	x14, x15, [sp, #112]
 a68:	a90847f0 	stp	x16, x17, [sp, #128]
 a6c:	a9094ff2 	stp	x18, x19, [sp, #144]
 a70:	a90a57f4 	stp	x20, x21, [sp, #160]
 a74:	a90b5ff6 	stp	x22, x23, [sp, #176]
 a78:	a90c67f8 	stp	x24, x25, [sp, #192]
 a7c:	a90d6ffa 	stp	x26, x27, [sp, #208]
 a80:	a90e77fc 	stp	x28, x29, [sp, #224]
 a84:	d5384000 	mrs	x0, spsr_el1
 a88:	d5384021 	mrs	x1, elr_el1
 a8c:	a90f03fe 	stp	x30, x0, [sp, #240]
 a90:	f9007fe1 	str	x1, [sp, #248]
 a94:	9400043a 	bl	1b7c <dump_regs>
 a98:	14000000 	b	a98 <irq_lower_el_a64+0x54>

0000000000000a9c <fiq_lower_el_a64>:
ehandler_loop_infinite  fiq_lower_el_a64
 a9c:	d10423ff 	sub	sp, sp, #0x108
 aa0:	a90007e0 	stp	x0, x1, [sp]
 aa4:	a9010fe2 	stp	x2, x3, [sp, #16]
 aa8:	a90217e4 	stp	x4, x5, [sp, #32]
 aac:	a9031fe6 	stp	x6, x7, [sp, #48]
 ab0:	a90427e8 	stp	x8, x9, [sp, #64]
 ab4:	a9052fea 	stp	x10, x11, [sp, #80]
 ab8:	a90637ec 	stp	x12, x13, [sp, #96]
 abc:	a9073fee 	stp	x14, x15, [sp, #112]
 ac0:	a90847f0 	stp	x16, x17, [sp, #128]
 ac4:	a9094ff2 	stp	x18, x19, [sp, #144]
 ac8:	a90a57f4 	stp	x20, x21, [sp, #160]
 acc:	a90b5ff6 	stp	x22, x23, [sp, #176]
 ad0:	a90c67f8 	stp	x24, x25, [sp, #192]
 ad4:	a90d6ffa 	stp	x26, x27, [sp, #208]
 ad8:	a90e77fc 	stp	x28, x29, [sp, #224]
 adc:	d5384000 	mrs	x0, spsr_el1
 ae0:	d5384021 	mrs	x1, elr_el1
 ae4:	a90f03fe 	stp	x30, x0, [sp, #240]
 ae8:	f9007fe1 	str	x1, [sp, #248]
 aec:	94000424 	bl	1b7c <dump_regs>
 af0:	14000000 	b	af0 <fiq_lower_el_a64+0x54>

0000000000000af4 <serror_lower_el_a64>:
ehandler_loop_infinite  serror_lower_el_a64
 af4:	d10423ff 	sub	sp, sp, #0x108
 af8:	a90007e0 	stp	x0, x1, [sp]
 afc:	a9010fe2 	stp	x2, x3, [sp, #16]
 b00:	a90217e4 	stp	x4, x5, [sp, #32]
 b04:	a9031fe6 	stp	x6, x7, [sp, #48]
 b08:	a90427e8 	stp	x8, x9, [sp, #64]
 b0c:	a9052fea 	stp	x10, x11, [sp, #80]
 b10:	a90637ec 	stp	x12, x13, [sp, #96]
 b14:	a9073fee 	stp	x14, x15, [sp, #112]
 b18:	a90847f0 	stp	x16, x17, [sp, #128]
 b1c:	a9094ff2 	stp	x18, x19, [sp, #144]
 b20:	a90a57f4 	stp	x20, x21, [sp, #160]
 b24:	a90b5ff6 	stp	x22, x23, [sp, #176]
 b28:	a90c67f8 	stp	x24, x25, [sp, #192]
 b2c:	a90d6ffa 	stp	x26, x27, [sp, #208]
 b30:	a90e77fc 	stp	x28, x29, [sp, #224]
 b34:	d5384000 	mrs	x0, spsr_el1
 b38:	d5384021 	mrs	x1, elr_el1
 b3c:	a90f03fe 	stp	x30, x0, [sp, #240]
 b40:	f9007fe1 	str	x1, [sp, #248]
 b44:	9400040e 	bl	1b7c <dump_regs>
 b48:	14000000 	b	b48 <serror_lower_el_a64+0x54>

0000000000000b4c <sync_lower_el_a32>:

ehandler_loop_infinite  sync_lower_el_a32
 b4c:	d10423ff 	sub	sp, sp, #0x108
 b50:	a90007e0 	stp	x0, x1, [sp]
 b54:	a9010fe2 	stp	x2, x3, [sp, #16]
 b58:	a90217e4 	stp	x4, x5, [sp, #32]
 b5c:	a9031fe6 	stp	x6, x7, [sp, #48]
 b60:	a90427e8 	stp	x8, x9, [sp, #64]
 b64:	a9052fea 	stp	x10, x11, [sp, #80]
 b68:	a90637ec 	stp	x12, x13, [sp, #96]
 b6c:	a9073fee 	stp	x14, x15, [sp, #112]
 b70:	a90847f0 	stp	x16, x17, [sp, #128]
 b74:	a9094ff2 	stp	x18, x19, [sp, #144]
 b78:	a90a57f4 	stp	x20, x21, [sp, #160]
 b7c:	a90b5ff6 	stp	x22, x23, [sp, #176]
 b80:	a90c67f8 	stp	x24, x25, [sp, #192]
 b84:	a90d6ffa 	stp	x26, x27, [sp, #208]
 b88:	a90e77fc 	stp	x28, x29, [sp, #224]
 b8c:	d5384000 	mrs	x0, spsr_el1
 b90:	d5384021 	mrs	x1, elr_el1
 b94:	a90f03fe 	stp	x30, x0, [sp, #240]
 b98:	f9007fe1 	str	x1, [sp, #248]
 b9c:	940003f8 	bl	1b7c <dump_regs>
 ba0:	14000000 	b	ba0 <sync_lower_el_a32+0x54>

0000000000000ba4 <irq_lower_el_a32>:
ehandler_loop_infinite  irq_lower_el_a32
 ba4:	d10423ff 	sub	sp, sp, #0x108
 ba8:	a90007e0 	stp	x0, x1, [sp]
 bac:	a9010fe2 	stp	x2, x3, [sp, #16]
 bb0:	a90217e4 	stp	x4, x5, [sp, #32]
 bb4:	a9031fe6 	stp	x6, x7, [sp, #48]
 bb8:	a90427e8 	stp	x8, x9, [sp, #64]
 bbc:	a9052fea 	stp	x10, x11, [sp, #80]
 bc0:	a90637ec 	stp	x12, x13, [sp, #96]
 bc4:	a9073fee 	stp	x14, x15, [sp, #112]
 bc8:	a90847f0 	stp	x16, x17, [sp, #128]
 bcc:	a9094ff2 	stp	x18, x19, [sp, #144]
 bd0:	a90a57f4 	stp	x20, x21, [sp, #160]
 bd4:	a90b5ff6 	stp	x22, x23, [sp, #176]
 bd8:	a90c67f8 	stp	x24, x25, [sp, #192]
 bdc:	a90d6ffa 	stp	x26, x27, [sp, #208]
 be0:	a90e77fc 	stp	x28, x29, [sp, #224]
 be4:	d5384000 	mrs	x0, spsr_el1
 be8:	d5384021 	mrs	x1, elr_el1
 bec:	a90f03fe 	stp	x30, x0, [sp, #240]
 bf0:	f9007fe1 	str	x1, [sp, #248]
 bf4:	940003e2 	bl	1b7c <dump_regs>
 bf8:	14000000 	b	bf8 <irq_lower_el_a32+0x54>

0000000000000bfc <fiq_lower_el_a32>:
ehandler_loop_infinite  fiq_lower_el_a32
 bfc:	d10423ff 	sub	sp, sp, #0x108
 c00:	a90007e0 	stp	x0, x1, [sp]
 c04:	a9010fe2 	stp	x2, x3, [sp, #16]
 c08:	a90217e4 	stp	x4, x5, [sp, #32]
 c0c:	a9031fe6 	stp	x6, x7, [sp, #48]
 c10:	a90427e8 	stp	x8, x9, [sp, #64]
 c14:	a9052fea 	stp	x10, x11, [sp, #80]
 c18:	a90637ec 	stp	x12, x13, [sp, #96]
 c1c:	a9073fee 	stp	x14, x15, [sp, #112]
 c20:	a90847f0 	stp	x16, x17, [sp, #128]
 c24:	a9094ff2 	stp	x18, x19, [sp, #144]
 c28:	a90a57f4 	stp	x20, x21, [sp, #160]
 c2c:	a90b5ff6 	stp	x22, x23, [sp, #176]
 c30:	a90c67f8 	stp	x24, x25, [sp, #192]
 c34:	a90d6ffa 	stp	x26, x27, [sp, #208]
 c38:	a90e77fc 	stp	x28, x29, [sp, #224]
 c3c:	d5384000 	mrs	x0, spsr_el1
 c40:	d5384021 	mrs	x1, elr_el1
 c44:	a90f03fe 	stp	x30, x0, [sp, #240]
 c48:	f9007fe1 	str	x1, [sp, #248]
 c4c:	940003cc 	bl	1b7c <dump_regs>
 c50:	14000000 	b	c50 <fiq_lower_el_a32+0x54>

0000000000000c54 <serror_lower_el_a32>:
ehandler_loop_infinite  serror_lower_el_a32
 c54:	d10423ff 	sub	sp, sp, #0x108
 c58:	a90007e0 	stp	x0, x1, [sp]
 c5c:	a9010fe2 	stp	x2, x3, [sp, #16]
 c60:	a90217e4 	stp	x4, x5, [sp, #32]
 c64:	a9031fe6 	stp	x6, x7, [sp, #48]
 c68:	a90427e8 	stp	x8, x9, [sp, #64]
 c6c:	a9052fea 	stp	x10, x11, [sp, #80]
 c70:	a90637ec 	stp	x12, x13, [sp, #96]
 c74:	a9073fee 	stp	x14, x15, [sp, #112]
 c78:	a90847f0 	stp	x16, x17, [sp, #128]
 c7c:	a9094ff2 	stp	x18, x19, [sp, #144]
 c80:	a90a57f4 	stp	x20, x21, [sp, #160]
 c84:	a90b5ff6 	stp	x22, x23, [sp, #176]
 c88:	a90c67f8 	stp	x24, x25, [sp, #192]
 c8c:	a90d6ffa 	stp	x26, x27, [sp, #208]
 c90:	a90e77fc 	stp	x28, x29, [sp, #224]
 c94:	d5384000 	mrs	x0, spsr_el1
 c98:	d5384021 	mrs	x1, elr_el1
 c9c:	a90f03fe 	stp	x30, x0, [sp, #240]
 ca0:	f9007fe1 	str	x1, [sp, #248]
 ca4:	940003b6 	bl	1b7c <dump_regs>
 ca8:	14000000 	b	ca8 <serror_lower_el_a32+0x54>

0000000000000cac <irq_cur_el_spx>:

irq_cur_el_spx :
    context_save
 cac:	d10423ff 	sub	sp, sp, #0x108
 cb0:	a90007e0 	stp	x0, x1, [sp]
 cb4:	a9010fe2 	stp	x2, x3, [sp, #16]
 cb8:	a90217e4 	stp	x4, x5, [sp, #32]
 cbc:	a9031fe6 	stp	x6, x7, [sp, #48]
 cc0:	a90427e8 	stp	x8, x9, [sp, #64]
 cc4:	a9052fea 	stp	x10, x11, [sp, #80]
 cc8:	a90637ec 	stp	x12, x13, [sp, #96]
 ccc:	a9073fee 	stp	x14, x15, [sp, #112]
 cd0:	a90847f0 	stp	x16, x17, [sp, #128]
 cd4:	a9094ff2 	stp	x18, x19, [sp, #144]
 cd8:	a90a57f4 	stp	x20, x21, [sp, #160]
 cdc:	a90b5ff6 	stp	x22, x23, [sp, #176]
 ce0:	a90c67f8 	stp	x24, x25, [sp, #192]
 ce4:	a90d6ffa 	stp	x26, x27, [sp, #208]
 ce8:	a90e77fc 	stp	x28, x29, [sp, #224]
 cec:	d5384000 	mrs	x0, spsr_el1
 cf0:	d5384021 	mrs	x1, elr_el1
 cf4:	a90f03fe 	stp	x30, x0, [sp, #240]
 cf8:	f9007fe1 	str	x1, [sp, #248]
    bl irq_handler
 cfc:	940000ee 	bl	10b4 <irq_handler>
    context_restore
 d00:	a94007e0 	ldp	x0, x1, [sp]
 d04:	a9410fe2 	ldp	x2, x3, [sp, #16]
 d08:	a94217e4 	ldp	x4, x5, [sp, #32]
 d0c:	a9431fe6 	ldp	x6, x7, [sp, #48]
 d10:	a94427e8 	ldp	x8, x9, [sp, #64]
 d14:	a9452fea 	ldp	x10, x11, [sp, #80]
 d18:	a94637ec 	ldp	x12, x13, [sp, #96]
 d1c:	a9473fee 	ldp	x14, x15, [sp, #112]
 d20:	a94847f0 	ldp	x16, x17, [sp, #128]
 d24:	a9494ff2 	ldp	x18, x19, [sp, #144]
 d28:	a94a57f4 	ldp	x20, x21, [sp, #160]
 d2c:	a94b5ff6 	ldp	x22, x23, [sp, #176]
 d30:	a94c67f8 	ldp	x24, x25, [sp, #192]
 d34:	a94d6ffa 	ldp	x26, x27, [sp, #208]
 d38:	a94e77fc 	ldp	x28, x29, [sp, #224]
 d3c:	f9407bfe 	ldr	x30, [sp, #240]
 d40:	910423ff 	add	sp, sp, #0x108
    eret
 d44:	d69f03e0 	eret

0000000000000d48 <_boot_entry>:
#include <mem.h>
.section ".text.boot"

.globl _boot_entry
_boot_entry:
    mrs x0, mpidr_el1
 d48:	d53800a0 	mrs	x0, mpidr_el1
    and x0, x0, #0xFF
 d4c:	92401c00 	and	x0, x0, #0xff
    cbnz x0, halt_proc
 d50:	b50000e0 	cbnz	x0, d6c <halt_proc>

    /*Zero out bss section */
    adr x0, __bss_start
 d54:	10008520 	adr	x0, 1df8 <systimer>
    adr x1, __bss_end
 d58:	10008681 	adr	x1, 1e28 <__bss_end>
    sub x1, x1, x0
 d5c:	cb000021 	sub	x1, x1, x0
    bl   memzero
 d60:	94000026 	bl	df8 <memzero>

    bl el1_setup
 d64:	94000004 	bl	d74 <el1_setup>
    b   kernel_main
 d68:	14000028 	b	e08 <__rodata_start>

0000000000000d6c <halt_proc>:

halt_proc:
    wfe
 d6c:	d503205f 	wfe
    b halt_proc
 d70:	17ffffff 	b	d6c <halt_proc>

0000000000000d74 <el1_setup>:


el1_setup :
    ldr x0, =(SCTLR_EL1_EE_LITTLE | SCTLR_EL1_E0E_LITTLE |\
 d74:	580001a0 	ldr	x0, da8 <el1_setup+0x34>
           SCTLR_EL1_MMU_DIS | SCTLR_EL1_DCACHE_DIS | SCTLR_EL1_ICACHE_DIS |\
           SCTLR_EL1_STACK_ALIGN_CHK_EN | SCTLR_EL1_ALIGN_CHK_EN)
    msr SCTLR_EL1, x0
 d78:	d5181000 	msr	sctlr_el1, x0

    /*Setting of following 2 registers also ensures exceptions are handled at EL1(kernel) */
    ldr x0, =(SCR_EL3_RW_AARCH64 | SCR_EL3_NS)
 d7c:	580001a0 	ldr	x0, db0 <el1_setup+0x3c>
    msr SCR_EL3, x0
 d80:	d51e1100 	msr	scr_el3, x0

    ldr x0, =(HCR_EL2_RW_AARCH64)
 d84:	580001a0 	ldr	x0, db8 <el1_setup+0x44>
    msr HCR_EL2, x0 
 d88:	d51c1100 	msr	hcr_el2, x0

    /* Copy Link register to elr */
    msr ELR_EL3, lr
 d8c:	d51e403e 	msr	elr_el3, x30

   /* Setup EL1 status word */ 
    ldr x0, =(SPSR_MODE_EL1h | SPSR_MASK_EXCEPTIONS)
 d90:	58000180 	ldr	x0, dc0 <el1_setup+0x4c>
    msr SPSR_EL3, x0
 d94:	d51e4000 	msr	spsr_el3, x0

    /*As of now, we do not return to EL3. Overwrite stack of EL3 */
    ldr x0, =STACK_BASE
 d98:	58000180 	ldr	x0, dc8 <el1_setup+0x54>
    msr SP_EL1, x0
 d9c:	d51c4100 	msr	sp_el1, x0

    /* Go to EL1. Stack already uses EL1 SP */
    eret
 da0:	d69f03e0 	eret
 da4:	00000000 	.inst	0x00000000 ; undefined
 da8:	00000016 	.word	0x00000016
 dac:	00000000 	.word	0x00000000
 db0:	00000401 	.word	0x00000401
 db4:	00000000 	.word	0x00000000
 db8:	80000000 	.word	0x80000000
 dbc:	00000000 	.word	0x00000000
 dc0:	000001c5 	.word	0x000001c5
 dc4:	00000000 	.word	0x00000000
 dc8:	00800000 	.word	0x00800000
 dcc:	00000000 	.word	0x00000000

0000000000000dd0 <init_interrupts_base>:


.section ".text"
.global init_interrupts_base
init_interrupts_base :
    ldr x0, =vector_table
 dd0:	58000100 	ldr	x0, df0 <irq_disable+0xc>
    msr VBAR_EL1, x0
 dd4:	d518c000 	msr	vbar_el1, x0
    ret
 dd8:	d65f03c0 	ret

0000000000000ddc <irq_enable>:

.global irq_enable
irq_enable :
    msr daifclr, #2
 ddc:	d50342ff 	msr	daifclr, #0x2
    ret
 de0:	d65f03c0 	ret

0000000000000de4 <irq_disable>:

.global irq_disable
irq_disable :
    msr daifset, #2
 de4:	d50342df 	msr	daifset, #0x2
    ret
 de8:	d65f03c0 	ret
	...

0000000000000df8 <memzero>:
.globl memzero
memzero :
    str  xzr, [x0], #8
 df8:	f800841f 	str	xzr, [x0], #8
    subs x1, x1, #8
 dfc:	f1002021 	subs	x1, x1, #0x8
    b.gt memzero
 e00:	54ffffcc 	b.gt	df8 <memzero>
    ret
 e04:	d65f03c0 	ret

Disassembly of section .text.kernel_main:

0000000000000e08 <kernel_main>:
#include "printf.h"
#include "utils.h"
#include <irq.h>

void kernel_main()
{
 e08:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
 e0c:	910003fd 	mov	x29, sp
 e10:	f9000bf3 	str	x19, [sp, #16]
    init_uart();
 e14:	940000b8 	bl	10f4 <init_uart>
    init_printf(0, putc);
 e18:	b0000000 	adrp	x0, 1000 <systick_handler+0x9c>
 e1c:	f946d801 	ldr	x1, [x0, #3504]
 e20:	d2800000 	mov	x0, #0x0                   	// #0
 e24:	940002fa 	bl	1a0c <init_printf>
    printf("Core %d up at Exception level %d\n", get_core_id(), get_el());
 e28:	94000337 	bl	1b04 <get_core_id>
 e2c:	2a0003f3 	mov	w19, w0
 e30:	9400033c 	bl	1b20 <get_el>
 e34:	2a0003e2 	mov	w2, w0
 e38:	2a1303e1 	mov	w1, w19
 e3c:	b0000000 	adrp	x0, 1000 <systick_handler+0x9c>
 e40:	91346000 	add	x0, x0, #0xd18
 e44:	94000300 	bl	1a44 <tfp_printf>

    init_interrupts();
 e48:	94000090 	bl	1088 <init_interrupts>
    while(1){
        if(uart_read_available()){
 e4c:	940000e1 	bl	11d0 <uart_read_available>
 e50:	12001c00 	and	w0, w0, #0xff
 e54:	7100001f 	cmp	w0, #0x0
 e58:	54ffffa0 	b.eq	e4c <kernel_main+0x44>  // b.none
            uart_write('\n');
 e5c:	52800140 	mov	w0, #0xa                   	// #10
 e60:	940000ed 	bl	1214 <uart_write>
            uart_write(uart_read());
 e64:	940000e3 	bl	11f0 <uart_read>
 e68:	12001c00 	and	w0, w0, #0xff
 e6c:	940000ea 	bl	1214 <uart_write>
        if(uart_read_available()){
 e70:	17fffff7 	b	e4c <kernel_main+0x44>

Disassembly of section .text.routing_core0cntv_to_core0irq:

0000000000000e74 <routing_core0cntv_to_core0irq>:
 * Changed timer from virutal to physical timer (refer ARM doc - Generic timers)
 */
 

void routing_core0cntv_to_core0irq(void)
{
 e74:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 e78:	910003fd 	mov	x29, sp
    mmio_write(CORE0_TIMER_IRQCNTL, TIMER3_IRQ);
 e7c:	52800101 	mov	w1, #0x8                   	// #8
 e80:	52800800 	mov	w0, #0x40                  	// #64
 e84:	72a80000 	movk	w0, #0x4000, lsl #16
 e88:	9400032d 	bl	1b3c <mmio_write>
}
 e8c:	d503201f 	nop
 e90:	a8c17bfd 	ldp	x29, x30, [sp], #16
 e94:	d65f03c0 	ret

Disassembly of section .text.read_core0timer_pending:

0000000000000e98 <read_core0timer_pending>:

uint32 read_core0timer_pending(void)
{
 e98:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
 e9c:	910003fd 	mov	x29, sp
    uint32 tmp;
    tmp = mmio_read(CORE0_IRQ_SOURCE);
 ea0:	52800c00 	mov	w0, #0x60                  	// #96
 ea4:	72a80000 	movk	w0, #0x4000, lsl #16
 ea8:	9400032f 	bl	1b64 <mmio_read>
 eac:	b9001fe0 	str	w0, [sp, #28]
    return tmp;
 eb0:	b9401fe0 	ldr	w0, [sp, #28]
}
 eb4:	a8c27bfd 	ldp	x29, x30, [sp], #32
 eb8:	d65f03c0 	ret

Disassembly of section .text.enable_cntv:

0000000000000ebc <enable_cntv>:

void enable_cntv(void)
{
 ebc:	d10043ff 	sub	sp, sp, #0x10
    uint32 cntv_ctl;
    cntv_ctl = 1;
 ec0:	52800020 	mov	w0, #0x1                   	// #1
 ec4:	b9000fe0 	str	w0, [sp, #12]
	asm volatile ("msr cntv_ctl_el0, %0" :: "r" (cntv_ctl));
 ec8:	b9400fe0 	ldr	w0, [sp, #12]
 ecc:	d51be320 	msr	cntv_ctl_el0, x0
}
 ed0:	d503201f 	nop
 ed4:	910043ff 	add	sp, sp, #0x10
 ed8:	d65f03c0 	ret

Disassembly of section .text.write_cntv_tval:

0000000000000edc <write_cntv_tval>:
	asm volatile ("mrs %0, cntv_tval_el0" : "=r" (val));
    return val;
}

void write_cntv_tval(uint32 val)
{
 edc:	d10043ff 	sub	sp, sp, #0x10
 ee0:	b9000fe0 	str	w0, [sp, #12]
	asm volatile ("msr cntv_tval_el0, %0" :: "r" (val));
 ee4:	b9400fe0 	ldr	w0, [sp, #12]
 ee8:	d51be300 	msr	cntv_tval_el0, x0
    return;
 eec:	d503201f 	nop
}
 ef0:	910043ff 	add	sp, sp, #0x10
 ef4:	d65f03c0 	ret

Disassembly of section .text.read_cntfrq:

0000000000000ef8 <read_cntfrq>:

uint32 read_cntfrq(void)
{
 ef8:	d10043ff 	sub	sp, sp, #0x10
    uint32 val;
	asm volatile ("mrs %0, cntfrq_el0" : "=r" (val));
 efc:	d53be000 	mrs	x0, cntfrq_el0
 f00:	b9000fe0 	str	w0, [sp, #12]
    return val;
 f04:	b9400fe0 	ldr	w0, [sp, #12]
}
 f08:	910043ff 	add	sp, sp, #0x10
 f0c:	d65f03c0 	ret

Disassembly of section .text.init_systimer:

0000000000000f10 <init_systimer>:

void init_systimer(){
 f10:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 f14:	910003fd 	mov	x29, sp
    systimer.ctr_frq = read_cntfrq();
 f18:	97fffff8 	bl	ef8 <read_cntfrq>
 f1c:	2a0003e1 	mov	w1, w0
 f20:	b0000000 	adrp	x0, 1000 <systick_handler+0x9c>
 f24:	f946e000 	ldr	x0, [x0, #3520]
 f28:	b9002801 	str	w1, [x0, #40]
    write_cntv_tval(systimer.ctr_frq/TICKS_PER_SEC);
 f2c:	b0000000 	adrp	x0, 1000 <systick_handler+0x9c>
 f30:	f946e000 	ldr	x0, [x0, #3520]
 f34:	b9402801 	ldr	w1, [x0, #40]
 f38:	529999a0 	mov	w0, #0xcccd                	// #52429
 f3c:	72b99980 	movk	w0, #0xcccc, lsl #16
 f40:	9ba07c20 	umull	x0, w1, w0
 f44:	d360fc00 	lsr	x0, x0, #32
 f48:	53037c00 	lsr	w0, w0, #3
 f4c:	97ffffe4 	bl	edc <write_cntv_tval>
    routing_core0cntv_to_core0irq();
 f50:	97ffffc9 	bl	e74 <routing_core0cntv_to_core0irq>
    enable_cntv();
 f54:	97ffffda 	bl	ebc <enable_cntv>
}
 f58:	d503201f 	nop
 f5c:	a8c17bfd 	ldp	x29, x30, [sp], #16
 f60:	d65f03c0 	ret

Disassembly of section .text.systick_handler:

0000000000000f64 <systick_handler>:

void systick_handler(){
     f64:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
     f68:	910003fd 	mov	x29, sp
    /* This write clears interrupt by setting
     * next compare val. Interrupt asserted only
     * when CVAL <= System_count
     */
    write_cntv_tval(systimer.ctr_frq/TICKS_PER_SEC);
     f6c:	b0000000 	adrp	x0, 1000 <systick_handler+0x9c>
     f70:	f946e000 	ldr	x0, [x0, #3520]
     f74:	b9402801 	ldr	w1, [x0, #40]
     f78:	529999a0 	mov	w0, #0xcccd                	// #52429
     f7c:	72b99980 	movk	w0, #0xcccc, lsl #16
     f80:	9ba07c20 	umull	x0, w1, w0
     f84:	d360fc00 	lsr	x0, x0, #32
     f88:	53037c00 	lsr	w0, w0, #3
     f8c:	97ffffd4 	bl	edc <write_cntv_tval>
    
    systimer.num_ticks_since_boot++;
     f90:	b0000000 	adrp	x0, 1000 <systick_handler+0x9c>
     f94:	f946e000 	ldr	x0, [x0, #3520]
     f98:	f9400800 	ldr	x0, [x0, #16]
     f9c:	91000401 	add	x1, x0, #0x1
     fa0:	b0000000 	adrp	x0, 1000 <systick_handler+0x9c>
     fa4:	f946e000 	ldr	x0, [x0, #3520]
     fa8:	f9000801 	str	x1, [x0, #16]
    systimer.msec_ticks++;
     fac:	b0000000 	adrp	x0, 1000 <systick_handler+0x9c>
     fb0:	f946e000 	ldr	x0, [x0, #3520]
     fb4:	f9401000 	ldr	x0, [x0, #32]
     fb8:	91000401 	add	x1, x0, #0x1
     fbc:	b0000000 	adrp	x0, 1000 <systick_handler+0x9c>
     fc0:	f946e000 	ldr	x0, [x0, #3520]
     fc4:	f9001001 	str	x1, [x0, #32]
    if(systimer.msec_ticks == TICKS_PER_SEC){
     fc8:	b0000000 	adrp	x0, 1000 <systick_handler+0x9c>
     fcc:	f946e000 	ldr	x0, [x0, #3520]
     fd0:	f9401000 	ldr	x0, [x0, #32]
     fd4:	f100281f 	cmp	x0, #0xa
     fd8:	54000181 	b.ne	1008 <systick_handler+0xa4>  // b.any
        /* 1 second over */
        systimer.msec_ticks = 0;
     fdc:	b0000000 	adrp	x0, 1000 <systick_handler+0x9c>
     fe0:	f946e000 	ldr	x0, [x0, #3520]
     fe4:	f900101f 	str	xzr, [x0, #32]
        systimer.sec_since_boot++;
     fe8:	b0000000 	adrp	x0, 1000 <systick_handler+0x9c>
     fec:	f946e000 	ldr	x0, [x0, #3520]
     ff0:	f9400c00 	ldr	x0, [x0, #24]
     ff4:	91000401 	add	x1, x0, #0x1
     ff8:	b0000000 	adrp	x0, 1000 <systick_handler+0x9c>
     ffc:	f946e000 	ldr	x0, [x0, #3520]
    1000:	f9000c01 	str	x1, [x0, #24]
    }
    return;
    1004:	d503201f 	nop
    1008:	d503201f 	nop
}
    100c:	a8c17bfd 	ldp	x29, x30, [sp], #16
    1010:	d65f03c0 	ret

Disassembly of section .text.timer_intr_pending:

0000000000001014 <timer_intr_pending>:

int timer_intr_pending(uint32* irq_sts){
    1014:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    1018:	910003fd 	mov	x29, sp
    101c:	f9000fe0 	str	x0, [sp, #24]
    if(read_core0timer_pending() & TIMER3_IRQ)
    1020:	97ffff9e 	bl	e98 <read_core0timer_pending>
    1024:	121d0000 	and	w0, w0, #0x8
    1028:	7100001f 	cmp	w0, #0x0
    102c:	54000060 	b.eq	1038 <timer_intr_pending+0x24>  // b.none
        return 1;
    1030:	52800020 	mov	w0, #0x1                   	// #1
    1034:	14000001 	b	1038 <timer_intr_pending+0x24>
}
    1038:	a8c27bfd 	ldp	x29, x30, [sp], #32
    103c:	d65f03c0 	ret

Disassembly of section .text.init_systick_timer:

0000000000001040 <init_systick_timer>:

#include <irq.h>
#include <timers.h>


void init_systick_timer(uint64* irq_en){
    1040:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    1044:	910003fd 	mov	x29, sp
    1048:	f9000fe0 	str	x0, [sp, #24]
    init_systimer();
    104c:	97ffffb1 	bl	f10 <init_systimer>
    /* Interrupt handler called manually first time. */
    //systick_handler();
}
    1050:	d503201f 	nop
    1054:	a8c27bfd 	ldp	x29, x30, [sp], #32
    1058:	d65f03c0 	ret

Disassembly of section .text.enable_interrupts:

000000000000105c <enable_interrupts>:

void enable_interrupts(uint64 irq_en){
    105c:	d10083ff 	sub	sp, sp, #0x20
    1060:	f90007e0 	str	x0, [sp, #8]
    reg64* irq_en_reg = (reg64*)(ARM_INT_BASE + IRQ_EN_1_OFF);
    1064:	d2964200 	mov	x0, #0xb210                	// #45584
    1068:	f2a7e000 	movk	x0, #0x3f00, lsl #16
    106c:	f9000fe0 	str	x0, [sp, #24]
    *irq_en_reg = irq_en;
    1070:	f9400fe0 	ldr	x0, [sp, #24]
    1074:	f94007e1 	ldr	x1, [sp, #8]
    1078:	f9000001 	str	x1, [x0]
}
    107c:	d503201f 	nop
    1080:	910083ff 	add	sp, sp, #0x20
    1084:	d65f03c0 	ret

Disassembly of section .text.init_interrupts:

0000000000001088 <init_interrupts>:

extern void init_interrupts_base();
extern void irq_enable();
void init_interrupts(){
    1088:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    108c:	910003fd 	mov	x29, sp
    uint64 irq_en;
    init_interrupts_base();
    1090:	97ffff50 	bl	dd0 <init_interrupts_base>
#ifdef ENABLE_TIMER_IRQ
    /*Setup Timer interrupt */
    init_systick_timer(&irq_en);
    1094:	910063e0 	add	x0, sp, #0x18
    1098:	97ffffea 	bl	1040 <init_systick_timer>
#endif
    /*Enable Interrupts */
    enable_interrupts(irq_en);
    109c:	f9400fe0 	ldr	x0, [sp, #24]
    10a0:	97ffffef 	bl	105c <enable_interrupts>
    /*Enable ARM interrupts */
    irq_enable();
    10a4:	97ffff4e 	bl	ddc <irq_enable>

}
    10a8:	d503201f 	nop
    10ac:	a8c27bfd 	ldp	x29, x30, [sp], #32
    10b0:	d65f03c0 	ret

Disassembly of section .text.irq_handler:

00000000000010b4 <irq_handler>:

/* Interrupt Handlers */
void irq_handler(){
    10b4:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    10b8:	910003fd 	mov	x29, sp
    /* Identify IRQ */
    uint32* irq_sts = (unsigned int*)(ARM_INT_BASE + IRQ_BASIC_PENDING_OFF); 
    10bc:	d2964000 	mov	x0, #0xb200                	// #45568
    10c0:	f2a7e000 	movk	x0, #0x3f00, lsl #16
    10c4:	f9000fe0 	str	x0, [sp, #24]

    /* Service all interrupts */
#ifdef ENABLE_TIMER_IRQ
    if(timer_intr_pending(irq_sts)){
    10c8:	f9400fe0 	ldr	x0, [sp, #24]
    10cc:	97ffffd2 	bl	1014 <timer_intr_pending>
    10d0:	7100001f 	cmp	w0, #0x0
    10d4:	540000a0 	b.eq	10e8 <irq_handler+0x34>  // b.none
        RASPIOS_DBG(TIMER_DBG, "Systick intr rasied!\n");
    10d8:	90000000 	adrp	x0, 1000 <systick_handler+0x9c>
    10dc:	91350000 	add	x0, x0, #0xd40
    10e0:	94000259 	bl	1a44 <tfp_printf>
        systick_handler();
    10e4:	97ffffa0 	bl	f64 <systick_handler>
    }
#endif

}
    10e8:	d503201f 	nop
    10ec:	a8c27bfd 	ldp	x29, x30, [sp], #32
    10f0:	d65f03c0 	ret

Disassembly of section .text.init_uart:

00000000000010f4 <init_uart>:

reg32* AUX_ENABLES = (reg32*)(AUX_PERI_BASE + 0x4);
aux_mini_uart_regs_t* mini_uart = (aux_mini_uart_regs_t*) MINI_UART_BASE;
gpio_regs_t* gpio = (gpio_regs_t*) GPIO_BASE;

void init_uart(){
    10f4:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    10f8:	910003fd 	mov	x29, sp
    /*Disable mini uart */
    *AUX_ENABLES = 0;
    10fc:	90000000 	adrp	x0, 1000 <systick_handler+0x9c>
    1100:	f946d000 	ldr	x0, [x0, #3488]
    1104:	f9400000 	ldr	x0, [x0]
    1108:	b900001f 	str	wzr, [x0]
    /*Enable GPIO alternative fn as mini uart with no PD/PU*/
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
    110c:	90000000 	adrp	x0, 1000 <systick_handler+0x9c>
    1110:	f946dc00 	ldr	x0, [x0, #3512]
    1114:	f9400000 	ldr	x0, [x0]
    1118:	52a00121 	mov	w1, #0x90000               	// #589824
    111c:	b9000401 	str	w1, [x0, #4]
    gpio->GPPUD = 0;
    1120:	90000000 	adrp	x0, 1000 <systick_handler+0x9c>
    1124:	f946dc00 	ldr	x0, [x0, #3512]
    1128:	f9400000 	ldr	x0, [x0]
    112c:	b900901f 	str	wzr, [x0, #144]
    delay(150);
    1130:	528012c0 	mov	w0, #0x96                  	// #150
    1134:	9400026c 	bl	1ae4 <delay>
    gpio->GPPUDCLK0 = (1 << 14) | (1 << 15); 
    1138:	90000000 	adrp	x0, 1000 <systick_handler+0x9c>
    113c:	f946dc00 	ldr	x0, [x0, #3512]
    1140:	f9400000 	ldr	x0, [x0]
    1144:	52980001 	mov	w1, #0xc000                	// #49152
    1148:	b9009401 	str	w1, [x0, #148]
    delay(150);
    114c:	528012c0 	mov	w0, #0x96                  	// #150
    1150:	94000265 	bl	1ae4 <delay>
    gpio->GPPUDCLK0 = 0; 
    1154:	90000000 	adrp	x0, 1000 <systick_handler+0x9c>
    1158:	f946dc00 	ldr	x0, [x0, #3512]
    115c:	f9400000 	ldr	x0, [x0]
    1160:	b900941f 	str	wzr, [x0, #148]
    /*Counfigure uart */
    /*Disable interrupts */
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
    1164:	90000000 	adrp	x0, 1000 <systick_handler+0x9c>
    1168:	f946d400 	ldr	x0, [x0, #3496]
    116c:	f9400000 	ldr	x0, [x0]
    1170:	b9400401 	ldr	w1, [x0, #4]
    1174:	90000000 	adrp	x0, 1000 <systick_handler+0x9c>
    1178:	f946d400 	ldr	x0, [x0, #3496]
    117c:	f9400000 	ldr	x0, [x0]
    1180:	121e7421 	and	w1, w1, #0xfffffffc
    1184:	b9000401 	str	w1, [x0, #4]
    /*Clear FIFOs */
    mini_uart->AUX_MU_IIR_REG = 0x3 << 1; 
    1188:	90000000 	adrp	x0, 1000 <systick_handler+0x9c>
    118c:	f946d400 	ldr	x0, [x0, #3496]
    1190:	f9400000 	ldr	x0, [x0]
    1194:	528000c1 	mov	w1, #0x6                   	// #6
    1198:	b9000801 	str	w1, [x0, #8]
    /*Set baud rate */
    /* Note : From BCM2835 ARM peripherals Manual :
     * Baudrate = sys_timer_freq/(8*(baudrate_reg + 1))
     */
    mini_uart->AUX_MU_BAUD_REG = (int)((SYS_TIMER_FREQ_HZ)/(8*UART_BAUDRATE)) - 1;
    119c:	90000000 	adrp	x0, 1000 <systick_handler+0x9c>
    11a0:	f946d400 	ldr	x0, [x0, #3496]
    11a4:	f9400000 	ldr	x0, [x0]
    11a8:	528021c1 	mov	w1, #0x10e                 	// #270
    11ac:	b9002801 	str	w1, [x0, #40]
    /*Enable mini uart */
    *AUX_ENABLES = 1;
    11b0:	90000000 	adrp	x0, 1000 <systick_handler+0x9c>
    11b4:	f946d000 	ldr	x0, [x0, #3488]
    11b8:	f9400000 	ldr	x0, [x0]
    11bc:	52800021 	mov	w1, #0x1                   	// #1
    11c0:	b9000001 	str	w1, [x0]
}
    11c4:	d503201f 	nop
    11c8:	a8c17bfd 	ldp	x29, x30, [sp], #16
    11cc:	d65f03c0 	ret

Disassembly of section .text.uart_read_available:

00000000000011d0 <uart_read_available>:

uint8 uart_read_available(){
    return mini_uart->AUX_MU_LSR_REG & 0x1;
    11d0:	90000000 	adrp	x0, 1000 <systick_handler+0x9c>
    11d4:	f946d400 	ldr	x0, [x0, #3496]
    11d8:	f9400000 	ldr	x0, [x0]
    11dc:	b9401400 	ldr	w0, [x0, #20]
    11e0:	12001c00 	and	w0, w0, #0xff
    11e4:	12000000 	and	w0, w0, #0x1
    11e8:	12001c00 	and	w0, w0, #0xff
}
    11ec:	d65f03c0 	ret

Disassembly of section .text.uart_read:

00000000000011f0 <uart_read>:

uint8 uart_read(){
    11f0:	d10043ff 	sub	sp, sp, #0x10
    uint8 data = mini_uart->AUX_MU_IO_REG & 0xFF;
    11f4:	90000000 	adrp	x0, 1000 <systick_handler+0x9c>
    11f8:	f946d400 	ldr	x0, [x0, #3496]
    11fc:	f9400000 	ldr	x0, [x0]
    1200:	b9400000 	ldr	w0, [x0]
    1204:	39003fe0 	strb	w0, [sp, #15]
    return data;
    1208:	39403fe0 	ldrb	w0, [sp, #15]
}
    120c:	910043ff 	add	sp, sp, #0x10
    1210:	d65f03c0 	ret

Disassembly of section .text.uart_write:

0000000000001214 <uart_write>:

void uart_write(uint8 data){
    1214:	d10043ff 	sub	sp, sp, #0x10
    1218:	39003fe0 	strb	w0, [sp, #15]
    mini_uart->AUX_MU_IO_REG = data;
    121c:	90000000 	adrp	x0, 1000 <systick_handler+0x9c>
    1220:	f946d400 	ldr	x0, [x0, #3496]
    1224:	f9400000 	ldr	x0, [x0]
    1228:	39403fe1 	ldrb	w1, [sp, #15]
    122c:	b9000001 	str	w1, [x0]
}
    1230:	d503201f 	nop
    1234:	910043ff 	add	sp, sp, #0x10
    1238:	d65f03c0 	ret

Disassembly of section .text.putc:

000000000000123c <putc>:

void putc(char *p, char data){
    123c:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    1240:	910003fd 	mov	x29, sp
    1244:	f9000fe0 	str	x0, [sp, #24]
    1248:	39005fe1 	strb	w1, [sp, #23]
    uart_write(data);
    124c:	39405fe0 	ldrb	w0, [sp, #23]
    1250:	97fffff1 	bl	1214 <uart_write>
}
    1254:	d503201f 	nop
    1258:	a8c27bfd 	ldp	x29, x30, [sp], #32
    125c:	d65f03c0 	ret

Disassembly of section .text.ui2a:

0000000000001260 <ui2a>:
    }

#endif

static void ui2a(unsigned int num, unsigned int base, int uc,char * bf)
    {
    1260:	d100c3ff 	sub	sp, sp, #0x30
    1264:	b9001fe0 	str	w0, [sp, #28]
    1268:	b9001be1 	str	w1, [sp, #24]
    126c:	b90017e2 	str	w2, [sp, #20]
    1270:	f90007e3 	str	x3, [sp, #8]
    int n=0;
    1274:	b9002fff 	str	wzr, [sp, #44]
    unsigned int d=1;
    1278:	52800020 	mov	w0, #0x1                   	// #1
    127c:	b9002be0 	str	w0, [sp, #40]
    while (num/d >= base)
    1280:	14000005 	b	1294 <ui2a+0x34>
        d*=base;
    1284:	b9402be1 	ldr	w1, [sp, #40]
    1288:	b9401be0 	ldr	w0, [sp, #24]
    128c:	1b007c20 	mul	w0, w1, w0
    1290:	b9002be0 	str	w0, [sp, #40]
    while (num/d >= base)
    1294:	b9401fe1 	ldr	w1, [sp, #28]
    1298:	b9402be0 	ldr	w0, [sp, #40]
    129c:	1ac00820 	udiv	w0, w1, w0
    12a0:	b9401be1 	ldr	w1, [sp, #24]
    12a4:	6b00003f 	cmp	w1, w0
    12a8:	54fffee9 	b.ls	1284 <ui2a+0x24>  // b.plast
    while (d!=0) {
    12ac:	1400002f 	b	1368 <ui2a+0x108>
        int dgt = num / d;
    12b0:	b9401fe1 	ldr	w1, [sp, #28]
    12b4:	b9402be0 	ldr	w0, [sp, #40]
    12b8:	1ac00820 	udiv	w0, w1, w0
    12bc:	b90027e0 	str	w0, [sp, #36]
        num%= d;
    12c0:	b9401fe0 	ldr	w0, [sp, #28]
    12c4:	b9402be1 	ldr	w1, [sp, #40]
    12c8:	1ac10802 	udiv	w2, w0, w1
    12cc:	b9402be1 	ldr	w1, [sp, #40]
    12d0:	1b017c41 	mul	w1, w2, w1
    12d4:	4b010000 	sub	w0, w0, w1
    12d8:	b9001fe0 	str	w0, [sp, #28]
        d/=base;
    12dc:	b9402be1 	ldr	w1, [sp, #40]
    12e0:	b9401be0 	ldr	w0, [sp, #24]
    12e4:	1ac00820 	udiv	w0, w1, w0
    12e8:	b9002be0 	str	w0, [sp, #40]
        if (n || dgt>0 || d==0) {
    12ec:	b9402fe0 	ldr	w0, [sp, #44]
    12f0:	7100001f 	cmp	w0, #0x0
    12f4:	540000e1 	b.ne	1310 <ui2a+0xb0>  // b.any
    12f8:	b94027e0 	ldr	w0, [sp, #36]
    12fc:	7100001f 	cmp	w0, #0x0
    1300:	5400008c 	b.gt	1310 <ui2a+0xb0>
    1304:	b9402be0 	ldr	w0, [sp, #40]
    1308:	7100001f 	cmp	w0, #0x0
    130c:	540002e1 	b.ne	1368 <ui2a+0x108>  // b.any
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
    1310:	b94027e0 	ldr	w0, [sp, #36]
    1314:	7100241f 	cmp	w0, #0x9
    1318:	5400010d 	b.le	1338 <ui2a+0xd8>
    131c:	b94017e0 	ldr	w0, [sp, #20]
    1320:	7100001f 	cmp	w0, #0x0
    1324:	54000060 	b.eq	1330 <ui2a+0xd0>  // b.none
    1328:	528006e0 	mov	w0, #0x37                  	// #55
    132c:	14000004 	b	133c <ui2a+0xdc>
    1330:	52800ae0 	mov	w0, #0x57                  	// #87
    1334:	14000002 	b	133c <ui2a+0xdc>
    1338:	52800600 	mov	w0, #0x30                  	// #48
    133c:	b94027e1 	ldr	w1, [sp, #36]
    1340:	12001c22 	and	w2, w1, #0xff
    1344:	f94007e1 	ldr	x1, [sp, #8]
    1348:	91000423 	add	x3, x1, #0x1
    134c:	f90007e3 	str	x3, [sp, #8]
    1350:	0b020000 	add	w0, w0, w2
    1354:	12001c00 	and	w0, w0, #0xff
    1358:	39000020 	strb	w0, [x1]
            ++n;
    135c:	b9402fe0 	ldr	w0, [sp, #44]
    1360:	11000400 	add	w0, w0, #0x1
    1364:	b9002fe0 	str	w0, [sp, #44]
    while (d!=0) {
    1368:	b9402be0 	ldr	w0, [sp, #40]
    136c:	7100001f 	cmp	w0, #0x0
    1370:	54fffa01 	b.ne	12b0 <ui2a+0x50>  // b.any
            }
        }
    *bf=0;
    1374:	f94007e0 	ldr	x0, [sp, #8]
    1378:	3900001f 	strb	wzr, [x0]
    }
    137c:	d503201f 	nop
    1380:	9100c3ff 	add	sp, sp, #0x30
    1384:	d65f03c0 	ret

Disassembly of section .text.i2a:

0000000000001388 <i2a>:

static void i2a (int num, char * bf)
    {
    1388:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    138c:	910003fd 	mov	x29, sp
    1390:	b9001fe0 	str	w0, [sp, #28]
    1394:	f9000be1 	str	x1, [sp, #16]
    if (num<0) {
    1398:	b9401fe0 	ldr	w0, [sp, #28]
    139c:	7100001f 	cmp	w0, #0x0
    13a0:	5400012a 	b.ge	13c4 <i2a+0x3c>  // b.tcont
        num=-num;
    13a4:	b9401fe0 	ldr	w0, [sp, #28]
    13a8:	4b0003e0 	neg	w0, w0
    13ac:	b9001fe0 	str	w0, [sp, #28]
        *bf++ = '-';
    13b0:	f9400be0 	ldr	x0, [sp, #16]
    13b4:	91000401 	add	x1, x0, #0x1
    13b8:	f9000be1 	str	x1, [sp, #16]
    13bc:	528005a1 	mov	w1, #0x2d                  	// #45
    13c0:	39000001 	strb	w1, [x0]
        }
    ui2a(num,10,0,bf);
    13c4:	b9401fe0 	ldr	w0, [sp, #28]
    13c8:	f9400be3 	ldr	x3, [sp, #16]
    13cc:	52800002 	mov	w2, #0x0                   	// #0
    13d0:	52800141 	mov	w1, #0xa                   	// #10
    13d4:	97ffffa3 	bl	1260 <ui2a>
    }
    13d8:	d503201f 	nop
    13dc:	a8c27bfd 	ldp	x29, x30, [sp], #32
    13e0:	d65f03c0 	ret

Disassembly of section .text.a2d:

00000000000013e4 <a2d>:

static int a2d(char ch)
    {
    13e4:	d10043ff 	sub	sp, sp, #0x10
    13e8:	39003fe0 	strb	w0, [sp, #15]
    if (ch>='0' && ch<='9')
    13ec:	39403fe0 	ldrb	w0, [sp, #15]
    13f0:	7100bc1f 	cmp	w0, #0x2f
    13f4:	540000e9 	b.ls	1410 <a2d+0x2c>  // b.plast
    13f8:	39403fe0 	ldrb	w0, [sp, #15]
    13fc:	7100e41f 	cmp	w0, #0x39
    1400:	54000088 	b.hi	1410 <a2d+0x2c>  // b.pmore
        return ch-'0';
    1404:	39403fe0 	ldrb	w0, [sp, #15]
    1408:	5100c000 	sub	w0, w0, #0x30
    140c:	14000014 	b	145c <a2d+0x78>
    else if (ch>='a' && ch<='f')
    1410:	39403fe0 	ldrb	w0, [sp, #15]
    1414:	7101801f 	cmp	w0, #0x60
    1418:	540000e9 	b.ls	1434 <a2d+0x50>  // b.plast
    141c:	39403fe0 	ldrb	w0, [sp, #15]
    1420:	7101981f 	cmp	w0, #0x66
    1424:	54000088 	b.hi	1434 <a2d+0x50>  // b.pmore
        return ch-'a'+10;
    1428:	39403fe0 	ldrb	w0, [sp, #15]
    142c:	51015c00 	sub	w0, w0, #0x57
    1430:	1400000b 	b	145c <a2d+0x78>
    else if (ch>='A' && ch<='F')
    1434:	39403fe0 	ldrb	w0, [sp, #15]
    1438:	7101001f 	cmp	w0, #0x40
    143c:	540000e9 	b.ls	1458 <a2d+0x74>  // b.plast
    1440:	39403fe0 	ldrb	w0, [sp, #15]
    1444:	7101181f 	cmp	w0, #0x46
    1448:	54000088 	b.hi	1458 <a2d+0x74>  // b.pmore
        return ch-'A'+10;
    144c:	39403fe0 	ldrb	w0, [sp, #15]
    1450:	5100dc00 	sub	w0, w0, #0x37
    1454:	14000002 	b	145c <a2d+0x78>
    else return -1;
    1458:	12800000 	mov	w0, #0xffffffff            	// #-1
    }
    145c:	910043ff 	add	sp, sp, #0x10
    1460:	d65f03c0 	ret

Disassembly of section .text.a2i:

0000000000001464 <a2i>:

static char a2i(char ch, char** src,int base,int* nump)
    {
    1464:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
    1468:	910003fd 	mov	x29, sp
    146c:	3900bfe0 	strb	w0, [sp, #47]
    1470:	f90013e1 	str	x1, [sp, #32]
    1474:	b9002be2 	str	w2, [sp, #40]
    1478:	f9000fe3 	str	x3, [sp, #24]
    char* p= *src;
    147c:	f94013e0 	ldr	x0, [sp, #32]
    1480:	f9400000 	ldr	x0, [x0]
    1484:	f9001fe0 	str	x0, [sp, #56]
    int num=0;
    1488:	b90037ff 	str	wzr, [sp, #52]
    int digit;
    while ((digit=a2d(ch))>=0) {
    148c:	14000010 	b	14cc <a2i+0x68>
        if (digit>base) break;
    1490:	b94033e1 	ldr	w1, [sp, #48]
    1494:	b9402be0 	ldr	w0, [sp, #40]
    1498:	6b00003f 	cmp	w1, w0
    149c:	5400026c 	b.gt	14e8 <a2i+0x84>
        num=num*base+digit;
    14a0:	b94037e1 	ldr	w1, [sp, #52]
    14a4:	b9402be0 	ldr	w0, [sp, #40]
    14a8:	1b007c20 	mul	w0, w1, w0
    14ac:	b94033e1 	ldr	w1, [sp, #48]
    14b0:	0b000020 	add	w0, w1, w0
    14b4:	b90037e0 	str	w0, [sp, #52]
        ch=*p++;
    14b8:	f9401fe0 	ldr	x0, [sp, #56]
    14bc:	91000401 	add	x1, x0, #0x1
    14c0:	f9001fe1 	str	x1, [sp, #56]
    14c4:	39400000 	ldrb	w0, [x0]
    14c8:	3900bfe0 	strb	w0, [sp, #47]
    while ((digit=a2d(ch))>=0) {
    14cc:	3940bfe0 	ldrb	w0, [sp, #47]
    14d0:	97ffffc5 	bl	13e4 <a2d>
    14d4:	b90033e0 	str	w0, [sp, #48]
    14d8:	b94033e0 	ldr	w0, [sp, #48]
    14dc:	7100001f 	cmp	w0, #0x0
    14e0:	54fffd8a 	b.ge	1490 <a2i+0x2c>  // b.tcont
    14e4:	14000002 	b	14ec <a2i+0x88>
        if (digit>base) break;
    14e8:	d503201f 	nop
        }
    *src=p;
    14ec:	f94013e0 	ldr	x0, [sp, #32]
    14f0:	f9401fe1 	ldr	x1, [sp, #56]
    14f4:	f9000001 	str	x1, [x0]
    *nump=num;
    14f8:	f9400fe0 	ldr	x0, [sp, #24]
    14fc:	b94037e1 	ldr	w1, [sp, #52]
    1500:	b9000001 	str	w1, [x0]
    return ch;
    1504:	3940bfe0 	ldrb	w0, [sp, #47]
    }
    1508:	a8c47bfd 	ldp	x29, x30, [sp], #64
    150c:	d65f03c0 	ret

Disassembly of section .text.putchw:

0000000000001510 <putchw>:

static void putchw(void* putp,putcf putf,int n, char z, char* bf)
    {
    1510:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
    1514:	910003fd 	mov	x29, sp
    1518:	f90017e0 	str	x0, [sp, #40]
    151c:	f90013e1 	str	x1, [sp, #32]
    1520:	b9001fe2 	str	w2, [sp, #28]
    1524:	39006fe3 	strb	w3, [sp, #27]
    1528:	f9000be4 	str	x4, [sp, #16]
    char fc=z? '0' : ' ';
    152c:	39406fe0 	ldrb	w0, [sp, #27]
    1530:	7100001f 	cmp	w0, #0x0
    1534:	54000060 	b.eq	1540 <putchw+0x30>  // b.none
    1538:	52800600 	mov	w0, #0x30                  	// #48
    153c:	14000002 	b	1544 <putchw+0x34>
    1540:	52800400 	mov	w0, #0x20                  	// #32
    1544:	3900dfe0 	strb	w0, [sp, #55]
    char ch;
    char* p=bf;
    1548:	f9400be0 	ldr	x0, [sp, #16]
    154c:	f9001fe0 	str	x0, [sp, #56]
    while (*p++ && n > 0)
    1550:	14000004 	b	1560 <putchw+0x50>
        n--;
    1554:	b9401fe0 	ldr	w0, [sp, #28]
    1558:	51000400 	sub	w0, w0, #0x1
    155c:	b9001fe0 	str	w0, [sp, #28]
    while (*p++ && n > 0)
    1560:	f9401fe0 	ldr	x0, [sp, #56]
    1564:	91000401 	add	x1, x0, #0x1
    1568:	f9001fe1 	str	x1, [sp, #56]
    156c:	39400000 	ldrb	w0, [x0]
    1570:	7100001f 	cmp	w0, #0x0
    1574:	54000120 	b.eq	1598 <putchw+0x88>  // b.none
    1578:	b9401fe0 	ldr	w0, [sp, #28]
    157c:	7100001f 	cmp	w0, #0x0
    1580:	54fffeac 	b.gt	1554 <putchw+0x44>
    while (n-- > 0)
    1584:	14000005 	b	1598 <putchw+0x88>
        putf(putp,fc);
    1588:	f94013e2 	ldr	x2, [sp, #32]
    158c:	3940dfe1 	ldrb	w1, [sp, #55]
    1590:	f94017e0 	ldr	x0, [sp, #40]
    1594:	d63f0040 	blr	x2
    while (n-- > 0)
    1598:	b9401fe0 	ldr	w0, [sp, #28]
    159c:	51000401 	sub	w1, w0, #0x1
    15a0:	b9001fe1 	str	w1, [sp, #28]
    15a4:	7100001f 	cmp	w0, #0x0
    15a8:	54ffff0c 	b.gt	1588 <putchw+0x78>
    while ((ch= *bf++))
    15ac:	14000005 	b	15c0 <putchw+0xb0>
        putf(putp,ch);
    15b0:	f94013e2 	ldr	x2, [sp, #32]
    15b4:	3940dbe1 	ldrb	w1, [sp, #54]
    15b8:	f94017e0 	ldr	x0, [sp, #40]
    15bc:	d63f0040 	blr	x2
    while ((ch= *bf++))
    15c0:	f9400be0 	ldr	x0, [sp, #16]
    15c4:	91000401 	add	x1, x0, #0x1
    15c8:	f9000be1 	str	x1, [sp, #16]
    15cc:	39400000 	ldrb	w0, [x0]
    15d0:	3900dbe0 	strb	w0, [sp, #54]
    15d4:	3940dbe0 	ldrb	w0, [sp, #54]
    15d8:	7100001f 	cmp	w0, #0x0
    15dc:	54fffea1 	b.ne	15b0 <putchw+0xa0>  // b.any
    }
    15e0:	d503201f 	nop
    15e4:	a8c47bfd 	ldp	x29, x30, [sp], #64
    15e8:	d65f03c0 	ret

Disassembly of section .text.tfp_format:

00000000000015ec <tfp_format>:

void tfp_format(void* putp,putcf putf,char *fmt, va_list va)
    {
    15ec:	a9ba7bfd 	stp	x29, x30, [sp, #-96]!
    15f0:	910003fd 	mov	x29, sp
    15f4:	f9000bf3 	str	x19, [sp, #16]
    15f8:	f9001fe0 	str	x0, [sp, #56]
    15fc:	f9001be1 	str	x1, [sp, #48]
    1600:	f90017e2 	str	x2, [sp, #40]
    1604:	aa0303f3 	mov	x19, x3
    char bf[12];

    char ch;


    while ((ch=*(fmt++))) {
    1608:	140000f3 	b	19d4 <tfp_format+0x3e8>
        if (ch!='%')
    160c:	39417fe0 	ldrb	w0, [sp, #95]
    1610:	7100941f 	cmp	w0, #0x25
    1614:	540000c0 	b.eq	162c <tfp_format+0x40>  // b.none
            putf(putp,ch);
    1618:	f9401be2 	ldr	x2, [sp, #48]
    161c:	39417fe1 	ldrb	w1, [sp, #95]
    1620:	f9401fe0 	ldr	x0, [sp, #56]
    1624:	d63f0040 	blr	x2
    1628:	140000eb 	b	19d4 <tfp_format+0x3e8>
        else {
            char lz=0;
    162c:	39017bff 	strb	wzr, [sp, #94]
#ifdef  PRINTF_LONG_SUPPORT
            char lng=0;
#endif
            int w=0;
    1630:	b9004fff 	str	wzr, [sp, #76]
            ch=*(fmt++);
    1634:	f94017e0 	ldr	x0, [sp, #40]
    1638:	91000401 	add	x1, x0, #0x1
    163c:	f90017e1 	str	x1, [sp, #40]
    1640:	39400000 	ldrb	w0, [x0]
    1644:	39017fe0 	strb	w0, [sp, #95]
            if (ch=='0') {
    1648:	39417fe0 	ldrb	w0, [sp, #95]
    164c:	7100c01f 	cmp	w0, #0x30
    1650:	54000101 	b.ne	1670 <tfp_format+0x84>  // b.any
                ch=*(fmt++);
    1654:	f94017e0 	ldr	x0, [sp, #40]
    1658:	91000401 	add	x1, x0, #0x1
    165c:	f90017e1 	str	x1, [sp, #40]
    1660:	39400000 	ldrb	w0, [x0]
    1664:	39017fe0 	strb	w0, [sp, #95]
                lz=1;
    1668:	52800020 	mov	w0, #0x1                   	// #1
    166c:	39017be0 	strb	w0, [sp, #94]
                }
            if (ch>='0' && ch<='9') {
    1670:	39417fe0 	ldrb	w0, [sp, #95]
    1674:	7100bc1f 	cmp	w0, #0x2f
    1678:	54000189 	b.ls	16a8 <tfp_format+0xbc>  // b.plast
    167c:	39417fe0 	ldrb	w0, [sp, #95]
    1680:	7100e41f 	cmp	w0, #0x39
    1684:	54000128 	b.hi	16a8 <tfp_format+0xbc>  // b.pmore
                ch=a2i(ch,&fmt,10,&w);
    1688:	910133e1 	add	x1, sp, #0x4c
    168c:	9100a3e0 	add	x0, sp, #0x28
    1690:	aa0103e3 	mov	x3, x1
    1694:	52800142 	mov	w2, #0xa                   	// #10
    1698:	aa0003e1 	mov	x1, x0
    169c:	39417fe0 	ldrb	w0, [sp, #95]
    16a0:	97ffff71 	bl	1464 <a2i>
    16a4:	39017fe0 	strb	w0, [sp, #95]
            if (ch=='l') {
                ch=*(fmt++);
                lng=1;
            }
#endif
            switch (ch) {
    16a8:	39417fe0 	ldrb	w0, [sp, #95]
    16ac:	71018c1f 	cmp	w0, #0x63
    16b0:	54001100 	b.eq	18d0 <tfp_format+0x2e4>  // b.none
    16b4:	71018c1f 	cmp	w0, #0x63
    16b8:	5400010c 	b.gt	16d8 <tfp_format+0xec>
    16bc:	7100941f 	cmp	w0, #0x25
    16c0:	54001800 	b.eq	19c0 <tfp_format+0x3d4>  // b.none
    16c4:	7101601f 	cmp	w0, #0x58
    16c8:	54000ae0 	b.eq	1824 <tfp_format+0x238>  // b.none
    16cc:	7100001f 	cmp	w0, #0x0
    16d0:	54001940 	b.eq	19f8 <tfp_format+0x40c>  // b.none
                    putchw(putp,putf,w,0,va_arg(va, char*));
                    break;
                case '%' :
                    putf(putp,ch);
                default:
                    break;
    16d4:	140000bf 	b	19d0 <tfp_format+0x3e4>
            switch (ch) {
    16d8:	7101cc1f 	cmp	w0, #0x73
    16dc:	54001340 	b.eq	1944 <tfp_format+0x358>  // b.none
    16e0:	7101cc1f 	cmp	w0, #0x73
    16e4:	5400008c 	b.gt	16f4 <tfp_format+0x108>
    16e8:	7101901f 	cmp	w0, #0x64
    16ec:	54000580 	b.eq	179c <tfp_format+0x1b0>  // b.none
                    break;
    16f0:	140000b8 	b	19d0 <tfp_format+0x3e4>
            switch (ch) {
    16f4:	7101d41f 	cmp	w0, #0x75
    16f8:	54000080 	b.eq	1708 <tfp_format+0x11c>  // b.none
    16fc:	7101e01f 	cmp	w0, #0x78
    1700:	54000920 	b.eq	1824 <tfp_format+0x238>  // b.none
                    break;
    1704:	140000b3 	b	19d0 <tfp_format+0x3e4>
                    ui2a(va_arg(va, unsigned int),10,0,bf);
    1708:	b9401a61 	ldr	w1, [x19, #24]
    170c:	f9400260 	ldr	x0, [x19]
    1710:	7100003f 	cmp	w1, #0x0
    1714:	540000cb 	b.lt	172c <tfp_format+0x140>  // b.tstop
    1718:	aa0003e1 	mov	x1, x0
    171c:	91002c21 	add	x1, x1, #0xb
    1720:	927df021 	and	x1, x1, #0xfffffffffffffff8
    1724:	f9000261 	str	x1, [x19]
    1728:	1400000e 	b	1760 <tfp_format+0x174>
    172c:	11002022 	add	w2, w1, #0x8
    1730:	b9001a62 	str	w2, [x19, #24]
    1734:	b9401a62 	ldr	w2, [x19, #24]
    1738:	7100005f 	cmp	w2, #0x0
    173c:	540000cd 	b.le	1754 <tfp_format+0x168>
    1740:	aa0003e1 	mov	x1, x0
    1744:	91002c21 	add	x1, x1, #0xb
    1748:	927df021 	and	x1, x1, #0xfffffffffffffff8
    174c:	f9000261 	str	x1, [x19]
    1750:	14000004 	b	1760 <tfp_format+0x174>
    1754:	f9400662 	ldr	x2, [x19, #8]
    1758:	93407c20 	sxtw	x0, w1
    175c:	8b000040 	add	x0, x2, x0
    1760:	b9400000 	ldr	w0, [x0]
    1764:	910143e1 	add	x1, sp, #0x50
    1768:	aa0103e3 	mov	x3, x1
    176c:	52800002 	mov	w2, #0x0                   	// #0
    1770:	52800141 	mov	w1, #0xa                   	// #10
    1774:	97fffebb 	bl	1260 <ui2a>
                    putchw(putp,putf,w,lz,bf);
    1778:	b9404fe0 	ldr	w0, [sp, #76]
    177c:	910143e1 	add	x1, sp, #0x50
    1780:	aa0103e4 	mov	x4, x1
    1784:	39417be3 	ldrb	w3, [sp, #94]
    1788:	2a0003e2 	mov	w2, w0
    178c:	f9401be1 	ldr	x1, [sp, #48]
    1790:	f9401fe0 	ldr	x0, [sp, #56]
    1794:	97ffff5f 	bl	1510 <putchw>
                    break;
    1798:	1400008f 	b	19d4 <tfp_format+0x3e8>
                    i2a(va_arg(va, int),bf);
    179c:	b9401a61 	ldr	w1, [x19, #24]
    17a0:	f9400260 	ldr	x0, [x19]
    17a4:	7100003f 	cmp	w1, #0x0
    17a8:	540000cb 	b.lt	17c0 <tfp_format+0x1d4>  // b.tstop
    17ac:	aa0003e1 	mov	x1, x0
    17b0:	91002c21 	add	x1, x1, #0xb
    17b4:	927df021 	and	x1, x1, #0xfffffffffffffff8
    17b8:	f9000261 	str	x1, [x19]
    17bc:	1400000e 	b	17f4 <tfp_format+0x208>
    17c0:	11002022 	add	w2, w1, #0x8
    17c4:	b9001a62 	str	w2, [x19, #24]
    17c8:	b9401a62 	ldr	w2, [x19, #24]
    17cc:	7100005f 	cmp	w2, #0x0
    17d0:	540000cd 	b.le	17e8 <tfp_format+0x1fc>
    17d4:	aa0003e1 	mov	x1, x0
    17d8:	91002c21 	add	x1, x1, #0xb
    17dc:	927df021 	and	x1, x1, #0xfffffffffffffff8
    17e0:	f9000261 	str	x1, [x19]
    17e4:	14000004 	b	17f4 <tfp_format+0x208>
    17e8:	f9400662 	ldr	x2, [x19, #8]
    17ec:	93407c20 	sxtw	x0, w1
    17f0:	8b000040 	add	x0, x2, x0
    17f4:	b9400000 	ldr	w0, [x0]
    17f8:	910143e1 	add	x1, sp, #0x50
    17fc:	97fffee3 	bl	1388 <i2a>
                    putchw(putp,putf,w,lz,bf);
    1800:	b9404fe0 	ldr	w0, [sp, #76]
    1804:	910143e1 	add	x1, sp, #0x50
    1808:	aa0103e4 	mov	x4, x1
    180c:	39417be3 	ldrb	w3, [sp, #94]
    1810:	2a0003e2 	mov	w2, w0
    1814:	f9401be1 	ldr	x1, [sp, #48]
    1818:	f9401fe0 	ldr	x0, [sp, #56]
    181c:	97ffff3d 	bl	1510 <putchw>
                    break;
    1820:	1400006d 	b	19d4 <tfp_format+0x3e8>
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
    1824:	b9401a61 	ldr	w1, [x19, #24]
    1828:	f9400260 	ldr	x0, [x19]
    182c:	7100003f 	cmp	w1, #0x0
    1830:	540000cb 	b.lt	1848 <tfp_format+0x25c>  // b.tstop
    1834:	aa0003e1 	mov	x1, x0
    1838:	91002c21 	add	x1, x1, #0xb
    183c:	927df021 	and	x1, x1, #0xfffffffffffffff8
    1840:	f9000261 	str	x1, [x19]
    1844:	1400000e 	b	187c <tfp_format+0x290>
    1848:	11002022 	add	w2, w1, #0x8
    184c:	b9001a62 	str	w2, [x19, #24]
    1850:	b9401a62 	ldr	w2, [x19, #24]
    1854:	7100005f 	cmp	w2, #0x0
    1858:	540000cd 	b.le	1870 <tfp_format+0x284>
    185c:	aa0003e1 	mov	x1, x0
    1860:	91002c21 	add	x1, x1, #0xb
    1864:	927df021 	and	x1, x1, #0xfffffffffffffff8
    1868:	f9000261 	str	x1, [x19]
    186c:	14000004 	b	187c <tfp_format+0x290>
    1870:	f9400662 	ldr	x2, [x19, #8]
    1874:	93407c20 	sxtw	x0, w1
    1878:	8b000040 	add	x0, x2, x0
    187c:	b9400004 	ldr	w4, [x0]
    1880:	39417fe0 	ldrb	w0, [sp, #95]
    1884:	7101601f 	cmp	w0, #0x58
    1888:	1a9f17e0 	cset	w0, eq  // eq = none
    188c:	12001c00 	and	w0, w0, #0xff
    1890:	2a0003e1 	mov	w1, w0
    1894:	910143e0 	add	x0, sp, #0x50
    1898:	aa0003e3 	mov	x3, x0
    189c:	2a0103e2 	mov	w2, w1
    18a0:	52800201 	mov	w1, #0x10                  	// #16
    18a4:	2a0403e0 	mov	w0, w4
    18a8:	97fffe6e 	bl	1260 <ui2a>
                    putchw(putp,putf,w,lz,bf);
    18ac:	b9404fe0 	ldr	w0, [sp, #76]
    18b0:	910143e1 	add	x1, sp, #0x50
    18b4:	aa0103e4 	mov	x4, x1
    18b8:	39417be3 	ldrb	w3, [sp, #94]
    18bc:	2a0003e2 	mov	w2, w0
    18c0:	f9401be1 	ldr	x1, [sp, #48]
    18c4:	f9401fe0 	ldr	x0, [sp, #56]
    18c8:	97ffff12 	bl	1510 <putchw>
                    break;
    18cc:	14000042 	b	19d4 <tfp_format+0x3e8>
                    putf(putp,(char)(va_arg(va, int)));
    18d0:	b9401a61 	ldr	w1, [x19, #24]
    18d4:	f9400260 	ldr	x0, [x19]
    18d8:	7100003f 	cmp	w1, #0x0
    18dc:	540000cb 	b.lt	18f4 <tfp_format+0x308>  // b.tstop
    18e0:	aa0003e1 	mov	x1, x0
    18e4:	91002c21 	add	x1, x1, #0xb
    18e8:	927df021 	and	x1, x1, #0xfffffffffffffff8
    18ec:	f9000261 	str	x1, [x19]
    18f0:	1400000e 	b	1928 <tfp_format+0x33c>
    18f4:	11002022 	add	w2, w1, #0x8
    18f8:	b9001a62 	str	w2, [x19, #24]
    18fc:	b9401a62 	ldr	w2, [x19, #24]
    1900:	7100005f 	cmp	w2, #0x0
    1904:	540000cd 	b.le	191c <tfp_format+0x330>
    1908:	aa0003e1 	mov	x1, x0
    190c:	91002c21 	add	x1, x1, #0xb
    1910:	927df021 	and	x1, x1, #0xfffffffffffffff8
    1914:	f9000261 	str	x1, [x19]
    1918:	14000004 	b	1928 <tfp_format+0x33c>
    191c:	f9400662 	ldr	x2, [x19, #8]
    1920:	93407c20 	sxtw	x0, w1
    1924:	8b000040 	add	x0, x2, x0
    1928:	b9400000 	ldr	w0, [x0]
    192c:	12001c00 	and	w0, w0, #0xff
    1930:	f9401be2 	ldr	x2, [sp, #48]
    1934:	2a0003e1 	mov	w1, w0
    1938:	f9401fe0 	ldr	x0, [sp, #56]
    193c:	d63f0040 	blr	x2
                    break;
    1940:	14000025 	b	19d4 <tfp_format+0x3e8>
                    putchw(putp,putf,w,0,va_arg(va, char*));
    1944:	b9404fe5 	ldr	w5, [sp, #76]
    1948:	b9401a61 	ldr	w1, [x19, #24]
    194c:	f9400260 	ldr	x0, [x19]
    1950:	7100003f 	cmp	w1, #0x0
    1954:	540000cb 	b.lt	196c <tfp_format+0x380>  // b.tstop
    1958:	aa0003e1 	mov	x1, x0
    195c:	91003c21 	add	x1, x1, #0xf
    1960:	927df021 	and	x1, x1, #0xfffffffffffffff8
    1964:	f9000261 	str	x1, [x19]
    1968:	1400000e 	b	19a0 <tfp_format+0x3b4>
    196c:	11002022 	add	w2, w1, #0x8
    1970:	b9001a62 	str	w2, [x19, #24]
    1974:	b9401a62 	ldr	w2, [x19, #24]
    1978:	7100005f 	cmp	w2, #0x0
    197c:	540000cd 	b.le	1994 <tfp_format+0x3a8>
    1980:	aa0003e1 	mov	x1, x0
    1984:	91003c21 	add	x1, x1, #0xf
    1988:	927df021 	and	x1, x1, #0xfffffffffffffff8
    198c:	f9000261 	str	x1, [x19]
    1990:	14000004 	b	19a0 <tfp_format+0x3b4>
    1994:	f9400662 	ldr	x2, [x19, #8]
    1998:	93407c20 	sxtw	x0, w1
    199c:	8b000040 	add	x0, x2, x0
    19a0:	f9400000 	ldr	x0, [x0]
    19a4:	aa0003e4 	mov	x4, x0
    19a8:	52800003 	mov	w3, #0x0                   	// #0
    19ac:	2a0503e2 	mov	w2, w5
    19b0:	f9401be1 	ldr	x1, [sp, #48]
    19b4:	f9401fe0 	ldr	x0, [sp, #56]
    19b8:	97fffed6 	bl	1510 <putchw>
                    break;
    19bc:	14000006 	b	19d4 <tfp_format+0x3e8>
                    putf(putp,ch);
    19c0:	f9401be2 	ldr	x2, [sp, #48]
    19c4:	39417fe1 	ldrb	w1, [sp, #95]
    19c8:	f9401fe0 	ldr	x0, [sp, #56]
    19cc:	d63f0040 	blr	x2
                    break;
    19d0:	d503201f 	nop
    while ((ch=*(fmt++))) {
    19d4:	f94017e0 	ldr	x0, [sp, #40]
    19d8:	91000401 	add	x1, x0, #0x1
    19dc:	f90017e1 	str	x1, [sp, #40]
    19e0:	39400000 	ldrb	w0, [x0]
    19e4:	39017fe0 	strb	w0, [sp, #95]
    19e8:	39417fe0 	ldrb	w0, [sp, #95]
    19ec:	7100001f 	cmp	w0, #0x0
    19f0:	54ffe0e1 	b.ne	160c <tfp_format+0x20>  // b.any
                }
            }
        }
    abort:;
    19f4:	14000002 	b	19fc <tfp_format+0x410>
                    goto abort;
    19f8:	d503201f 	nop
    }
    19fc:	d503201f 	nop
    1a00:	f9400bf3 	ldr	x19, [sp, #16]
    1a04:	a8c67bfd 	ldp	x29, x30, [sp], #96
    1a08:	d65f03c0 	ret

Disassembly of section .text.init_printf:

0000000000001a0c <init_printf>:


void init_printf(void* putp,void (*putf) (void*,char))
    {
    1a0c:	d10043ff 	sub	sp, sp, #0x10
    1a10:	f90007e0 	str	x0, [sp, #8]
    1a14:	f90003e1 	str	x1, [sp]
    stdout_putf=putf;
    1a18:	90000000 	adrp	x0, 1000 <systick_handler+0x9c>
    1a1c:	9138a000 	add	x0, x0, #0xe28
    1a20:	f94003e1 	ldr	x1, [sp]
    1a24:	f9000001 	str	x1, [x0]
    stdout_putp=putp;
    1a28:	90000000 	adrp	x0, 1000 <systick_handler+0x9c>
    1a2c:	9138c000 	add	x0, x0, #0xe30
    1a30:	f94007e1 	ldr	x1, [sp, #8]
    1a34:	f9000001 	str	x1, [x0]
    }
    1a38:	d503201f 	nop
    1a3c:	910043ff 	add	sp, sp, #0x10
    1a40:	d65f03c0 	ret

Disassembly of section .text.tfp_printf:

0000000000001a44 <tfp_printf>:

void tfp_printf(char *fmt, ...)
    {
    1a44:	a9b67bfd 	stp	x29, x30, [sp, #-160]!
    1a48:	910003fd 	mov	x29, sp
    1a4c:	f9001fe0 	str	x0, [sp, #56]
    1a50:	f90037e1 	str	x1, [sp, #104]
    1a54:	f9003be2 	str	x2, [sp, #112]
    1a58:	f9003fe3 	str	x3, [sp, #120]
    1a5c:	f90043e4 	str	x4, [sp, #128]
    1a60:	f90047e5 	str	x5, [sp, #136]
    1a64:	f9004be6 	str	x6, [sp, #144]
    1a68:	f9004fe7 	str	x7, [sp, #152]
    va_list va;
    va_start(va,fmt);
    1a6c:	910283e0 	add	x0, sp, #0xa0
    1a70:	f90023e0 	str	x0, [sp, #64]
    1a74:	910283e0 	add	x0, sp, #0xa0
    1a78:	f90027e0 	str	x0, [sp, #72]
    1a7c:	910183e0 	add	x0, sp, #0x60
    1a80:	f9002be0 	str	x0, [sp, #80]
    1a84:	128006e0 	mov	w0, #0xffffffc8            	// #-56
    1a88:	b9005be0 	str	w0, [sp, #88]
    1a8c:	b9005fff 	str	wzr, [sp, #92]
    tfp_format(stdout_putp,stdout_putf,fmt,va);
    1a90:	90000000 	adrp	x0, 1000 <systick_handler+0x9c>
    1a94:	9138c000 	add	x0, x0, #0xe30
    1a98:	f9400004 	ldr	x4, [x0]
    1a9c:	90000000 	adrp	x0, 1000 <systick_handler+0x9c>
    1aa0:	9138a000 	add	x0, x0, #0xe28
    1aa4:	f9400005 	ldr	x5, [x0]
    1aa8:	910043e2 	add	x2, sp, #0x10
    1aac:	910103e3 	add	x3, sp, #0x40
    1ab0:	a9400460 	ldp	x0, x1, [x3]
    1ab4:	a9000440 	stp	x0, x1, [x2]
    1ab8:	a9410460 	ldp	x0, x1, [x3, #16]
    1abc:	a9010440 	stp	x0, x1, [x2, #16]
    1ac0:	910043e0 	add	x0, sp, #0x10
    1ac4:	aa0003e3 	mov	x3, x0
    1ac8:	f9401fe2 	ldr	x2, [sp, #56]
    1acc:	aa0503e1 	mov	x1, x5
    1ad0:	aa0403e0 	mov	x0, x4
    1ad4:	97fffec6 	bl	15ec <tfp_format>
    va_end(va);
    }
    1ad8:	d503201f 	nop
    1adc:	a8ca7bfd 	ldp	x29, x30, [sp], #160
    1ae0:	d65f03c0 	ret

Disassembly of section .text.delay:

0000000000001ae4 <delay>:
#include "utils.h"
#include "printf.h"

void delay(uint32 cycles){
    1ae4:	d10043ff 	sub	sp, sp, #0x10
    1ae8:	b9000fe0 	str	w0, [sp, #12]

0000000000001aec <loop>:
    asm volatile("loop : subs %0, %0, #1\n\t"
    1aec:	f1000400 	subs	x0, x0, #0x1
    1af0:	54ffffe1 	b.ne	1aec <loop>  // b.any
    1af4:	b9000fe0 	str	w0, [sp, #12]
                  "bne loop"
                  : "=r"(cycles)
                  :
                  : "cc");
}
    1af8:	d503201f 	nop
    1afc:	910043ff 	add	sp, sp, #0x10
    1b00:	d65f03c0 	ret

Disassembly of section .text.get_core_id:

0000000000001b04 <get_core_id>:

int get_core_id(){
    1b04:	d10043ff 	sub	sp, sp, #0x10
    int core_id;
    asm volatile("mrs %0, mpidr_el1\n\t"
    1b08:	d53800a0 	mrs	x0, mpidr_el1
    1b0c:	92401c00 	and	x0, x0, #0xff
    1b10:	b9000fe0 	str	w0, [sp, #12]
                 "and %0, %0, #0xFF\n\t"
                  :"=r"(core_id));
    return core_id;
    1b14:	b9400fe0 	ldr	w0, [sp, #12]
}
    1b18:	910043ff 	add	sp, sp, #0x10
    1b1c:	d65f03c0 	ret

Disassembly of section .text.get_el:

0000000000001b20 <get_el>:

int get_el(){
    1b20:	d10043ff 	sub	sp, sp, #0x10
    int el;
    asm volatile("mrs %0, CurrentEL\n\t"
    1b24:	d5384240 	mrs	x0, currentel
    1b28:	d342fc00 	lsr	x0, x0, #2
    1b2c:	b9000fe0 	str	w0, [sp, #12]
                 "lsr %0, %0, #2\n\t"
                  :"=r"(el));
    return el;
    1b30:	b9400fe0 	ldr	w0, [sp, #12]
}
    1b34:	910043ff 	add	sp, sp, #0x10
    1b38:	d65f03c0 	ret

Disassembly of section .text.mmio_write:

0000000000001b3c <mmio_write>:

inline void mmio_write(uint32 reg, uint32 data)
{
    1b3c:	d10043ff 	sub	sp, sp, #0x10
    1b40:	b9000fe0 	str	w0, [sp, #12]
    1b44:	b9000be1 	str	w1, [sp, #8]
    *(volatile uint32*) reg = data;
    1b48:	b9400fe0 	ldr	w0, [sp, #12]
    1b4c:	aa0003e1 	mov	x1, x0
    1b50:	b9400be0 	ldr	w0, [sp, #8]
    1b54:	b9000020 	str	w0, [x1]
}
    1b58:	d503201f 	nop
    1b5c:	910043ff 	add	sp, sp, #0x10
    1b60:	d65f03c0 	ret

Disassembly of section .text.mmio_read:

0000000000001b64 <mmio_read>:
 
inline uint32 mmio_read(uint32 reg)
{
    1b64:	d10043ff 	sub	sp, sp, #0x10
    1b68:	b9000fe0 	str	w0, [sp, #12]
    return *(volatile uint32*) reg;
    1b6c:	b9400fe0 	ldr	w0, [sp, #12]
    1b70:	b9400000 	ldr	w0, [x0]
}
    1b74:	910043ff 	add	sp, sp, #0x10
    1b78:	d65f03c0 	ret

Disassembly of section .text.dump_regs:

0000000000001b7c <dump_regs>:

void dump_regs()
{
    1b7c:	a9aa7bfd 	stp	x29, x30, [sp, #-352]!
    1b80:	910003fd 	mov	x29, sp
    int i;
    uint64 regs[40];
    asm("mov %0, x0" : "=r"(regs[0]));
    1b84:	aa0003e0 	mov	x0, x0
    1b88:	f9000fe0 	str	x0, [sp, #24]
    asm("mov %0, x1" : "=r"(regs[1]));
    1b8c:	aa0103e0 	mov	x0, x1
    1b90:	f90013e0 	str	x0, [sp, #32]
    asm("mov %0, x2" : "=r"(regs[2]));
    1b94:	aa0203e0 	mov	x0, x2
    1b98:	f90017e0 	str	x0, [sp, #40]
    asm("mov %0, x3" : "=r"(regs[3]));
    1b9c:	aa0303e0 	mov	x0, x3
    1ba0:	f9001be0 	str	x0, [sp, #48]
    asm("mov %0, x4" : "=r"(regs[4]));
    1ba4:	aa0403e0 	mov	x0, x4
    1ba8:	f9001fe0 	str	x0, [sp, #56]
    asm("mov %0, x5" : "=r"(regs[5]));
    1bac:	aa0503e0 	mov	x0, x5
    1bb0:	f90023e0 	str	x0, [sp, #64]
    asm("mov %0, x6" : "=r"(regs[6]));
    1bb4:	aa0603e0 	mov	x0, x6
    1bb8:	f90027e0 	str	x0, [sp, #72]
    asm("mov %0, x7" : "=r"(regs[7]));
    1bbc:	aa0703e0 	mov	x0, x7
    1bc0:	f9002be0 	str	x0, [sp, #80]
    asm("mov %0, x8" : "=r"(regs[8]));
    1bc4:	aa0803e0 	mov	x0, x8
    1bc8:	f9002fe0 	str	x0, [sp, #88]
    asm("mov %0, x9" : "=r"(regs[9]));
    1bcc:	aa0903e0 	mov	x0, x9
    1bd0:	f90033e0 	str	x0, [sp, #96]
    asm("mov %0, x10" : "=r"(regs[10]));
    1bd4:	aa0a03e0 	mov	x0, x10
    1bd8:	f90037e0 	str	x0, [sp, #104]
    asm("mov %0, x11" : "=r"(regs[11]));
    1bdc:	aa0b03e0 	mov	x0, x11
    1be0:	f9003be0 	str	x0, [sp, #112]
    asm("mov %0, x12" : "=r"(regs[12]));
    1be4:	aa0c03e0 	mov	x0, x12
    1be8:	f9003fe0 	str	x0, [sp, #120]
    asm("mov %0, x13" : "=r"(regs[13]));
    1bec:	aa0d03e0 	mov	x0, x13
    1bf0:	f90043e0 	str	x0, [sp, #128]
    asm("mov %0, x14" : "=r"(regs[14]));
    1bf4:	aa0e03e0 	mov	x0, x14
    1bf8:	f90047e0 	str	x0, [sp, #136]
    asm("mov %0, x15" : "=r"(regs[15]));
    1bfc:	aa0f03e0 	mov	x0, x15
    1c00:	f9004be0 	str	x0, [sp, #144]
    asm("mov %0, x16" : "=r"(regs[16]));
    1c04:	aa1003e0 	mov	x0, x16
    1c08:	f9004fe0 	str	x0, [sp, #152]
    asm("mov %0, x17" : "=r"(regs[17]));
    1c0c:	aa1103e0 	mov	x0, x17
    1c10:	f90053e0 	str	x0, [sp, #160]
    asm("mov %0, x18" : "=r"(regs[18]));
    1c14:	aa1203e0 	mov	x0, x18
    1c18:	f90057e0 	str	x0, [sp, #168]
    asm("mov %0, x19" : "=r"(regs[19]));
    1c1c:	aa1303e0 	mov	x0, x19
    1c20:	f9005be0 	str	x0, [sp, #176]
    asm("mov %0, x20" : "=r"(regs[20]));
    1c24:	aa1403e0 	mov	x0, x20
    1c28:	f9005fe0 	str	x0, [sp, #184]
    asm("mov %0, x21" : "=r"(regs[21]));
    1c2c:	aa1503e0 	mov	x0, x21
    1c30:	f90063e0 	str	x0, [sp, #192]
    asm("mov %0, x22" : "=r"(regs[22]));
    1c34:	aa1603e0 	mov	x0, x22
    1c38:	f90067e0 	str	x0, [sp, #200]
    asm("mov %0, x23" : "=r"(regs[23]));
    1c3c:	aa1703e0 	mov	x0, x23
    1c40:	f9006be0 	str	x0, [sp, #208]
    asm("mov %0, x24" : "=r"(regs[24]));
    1c44:	aa1803e0 	mov	x0, x24
    1c48:	f9006fe0 	str	x0, [sp, #216]
    asm("mov %0, x25" : "=r"(regs[25]));
    1c4c:	aa1903e0 	mov	x0, x25
    1c50:	f90073e0 	str	x0, [sp, #224]
    asm("mov %0, x26" : "=r"(regs[26]));
    1c54:	aa1a03e0 	mov	x0, x26
    1c58:	f90077e0 	str	x0, [sp, #232]
    asm("mov %0, x27" : "=r"(regs[27]));
    1c5c:	aa1b03e0 	mov	x0, x27
    1c60:	f9007be0 	str	x0, [sp, #240]
    asm("mov %0, x28" : "=r"(regs[28]));
    1c64:	aa1c03e0 	mov	x0, x28
    1c68:	f9007fe0 	str	x0, [sp, #248]
    asm("mov %0, x29" : "=r"(regs[29]));
    1c6c:	aa1d03e0 	mov	x0, x29
    1c70:	f90083e0 	str	x0, [sp, #256]
    asm("mov %0, x30" : "=r"(regs[30]));
    1c74:	aa1e03e0 	mov	x0, x30
    1c78:	f90087e0 	str	x0, [sp, #264]
    asm("mov %0, sp" : "=r"(regs[31]));
    1c7c:	910003e0 	mov	x0, sp
    1c80:	f9008be0 	str	x0, [sp, #272]
    asm("mrs %0, esr_el1" : "=r"(regs[32]));
    1c84:	d5385200 	mrs	x0, esr_el1
    1c88:	f9008fe0 	str	x0, [sp, #280]
    asm("mrs %0, elr_el1" : "=r"(regs[33]));
    1c8c:	d5384020 	mrs	x0, elr_el1
    1c90:	f90093e0 	str	x0, [sp, #288]
    asm("mrs %0, far_el1" : "=r"(regs[34]));
    1c94:	d5386000 	mrs	x0, far_el1
    1c98:	f90097e0 	str	x0, [sp, #296]
    printf("Hit exception! Dumping regs...\n");
    1c9c:	90000000 	adrp	x0, 1000 <systick_handler+0x9c>
    1ca0:	91356000 	add	x0, x0, #0xd58
    1ca4:	97ffff68 	bl	1a44 <tfp_printf>
    for(i=0; i<35;){
    1ca8:	b9015fff 	str	wzr, [sp, #348]
    1cac:	14000014 	b	1cfc <dump_regs+0x180>
        printf("x%d: 0x%016x    ", i, regs[i]);
    1cb0:	b9815fe0 	ldrsw	x0, [sp, #348]
    1cb4:	d37df000 	lsl	x0, x0, #3
    1cb8:	910063e1 	add	x1, sp, #0x18
    1cbc:	f8606820 	ldr	x0, [x1, x0]
    1cc0:	aa0003e2 	mov	x2, x0
    1cc4:	b9415fe1 	ldr	w1, [sp, #348]
    1cc8:	90000000 	adrp	x0, 1000 <systick_handler+0x9c>
    1ccc:	9135e000 	add	x0, x0, #0xd78
    1cd0:	97ffff5d 	bl	1a44 <tfp_printf>
        i++;
    1cd4:	b9415fe0 	ldr	w0, [sp, #348]
    1cd8:	11000400 	add	w0, w0, #0x1
    1cdc:	b9015fe0 	str	w0, [sp, #348]
        if(i%4 == 0) printf("\n");
    1ce0:	b9415fe0 	ldr	w0, [sp, #348]
    1ce4:	12000400 	and	w0, w0, #0x3
    1ce8:	7100001f 	cmp	w0, #0x0
    1cec:	54000081 	b.ne	1cfc <dump_regs+0x180>  // b.any
    1cf0:	90000000 	adrp	x0, 1000 <systick_handler+0x9c>
    1cf4:	91364000 	add	x0, x0, #0xd90
    1cf8:	97ffff53 	bl	1a44 <tfp_printf>
    for(i=0; i<35;){
    1cfc:	b9415fe0 	ldr	w0, [sp, #348]
    1d00:	7100881f 	cmp	w0, #0x22
    1d04:	54fffd6d 	b.le	1cb0 <dump_regs+0x134>
    }

    return;
    1d08:	d503201f 	nop
}
    1d0c:	a8d67bfd 	ldp	x29, x30, [sp], #352
    1d10:	d65f03c0 	ret

Disassembly of section .rodata:

0000000000001d18 <__data_end-0x7a>:
    1d18:	65726f43 	.word	0x65726f43
    1d1c:	20642520 	.word	0x20642520
    1d20:	61207075 	.word	0x61207075
    1d24:	78452074 	.word	0x78452074
    1d28:	74706563 	.word	0x74706563
    1d2c:	206e6f69 	.word	0x206e6f69
    1d30:	6576656c 	.word	0x6576656c
    1d34:	6425206c 	.word	0x6425206c
    1d38:	0000000a 	.word	0x0000000a
    1d3c:	00000000 	.word	0x00000000
    1d40:	74737953 	.word	0x74737953
    1d44:	206b6369 	.word	0x206b6369
    1d48:	72746e69 	.word	0x72746e69
    1d4c:	73617220 	.word	0x73617220
    1d50:	21646569 	.word	0x21646569
    1d54:	0000000a 	.word	0x0000000a
    1d58:	20746948 	.word	0x20746948
    1d5c:	65637865 	.word	0x65637865
    1d60:	6f697470 	.word	0x6f697470
    1d64:	4420216e 	.word	0x4420216e
    1d68:	69706d75 	.word	0x69706d75
    1d6c:	7220676e 	.word	0x7220676e
    1d70:	2e736765 	.word	0x2e736765
    1d74:	000a2e2e 	.word	0x000a2e2e
    1d78:	3a642578 	.word	0x3a642578
    1d7c:	25783020 	.word	0x25783020
    1d80:	78363130 	.word	0x78363130
    1d84:	20202020 	.word	0x20202020
	...
    1d90:	000a      	.short	0x000a

Disassembly of section .got:

0000000000001d98 <_GLOBAL_OFFSET_TABLE_>:
	...
    1da0:	00001de0 	.inst	0x00001de0 ; undefined
    1da4:	00000000 	.inst	0x00000000 ; undefined
    1da8:	00001de8 	.inst	0x00001de8 ; undefined
    1dac:	00000000 	.inst	0x00000000 ; undefined
    1db0:	0000123c 	.inst	0x0000123c ; undefined
    1db4:	00000000 	.inst	0x00000000 ; undefined
    1db8:	00001df0 	.inst	0x00001df0 ; undefined
    1dbc:	00000000 	.inst	0x00000000 ; undefined
    1dc0:	00001df8 	.inst	0x00001df8 ; undefined
    1dc4:	00000000 	.inst	0x00000000 ; undefined

Disassembly of section .got.plt:

0000000000001dc8 <.got.plt>:
	...

Disassembly of section .data.AUX_ENABLES:

0000000000001de0 <AUX_ENABLES>:
    1de0:	3f215004 	.word	0x3f215004
    1de4:	00000000 	.word	0x00000000

Disassembly of section .data.mini_uart:

0000000000001de8 <mini_uart>:
    1de8:	3f215040 	.word	0x3f215040
    1dec:	00000000 	.word	0x00000000

Disassembly of section .data.gpio:

0000000000001df0 <gpio>:
    1df0:	3f200000 	.word	0x3f200000
    1df4:	00000000 	.word	0x00000000

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
{
       0:	0000015a 	.inst	0x0000015a ; undefined
    cntv_ctl = 0;
       4:	00000004 	.inst	0x00000004 ; undefined
	asm volatile ("msr cntv_ctl_el0, %0" :: "r" (cntv_ctl));
       8:	01080000 	.inst	0x01080000 ; undefined
       c:	00002189 	.inst	0x00002189 ; undefined
}
      10:	000a0d0c 	.inst	0x000a0d0c ; undefined
      14:	0029f900 	.inst	0x0029f900 ; NYI
	...


void tfp_sprintf(char* s,char *fmt, ...)
    {
    va_list va;
    va_start(va,fmt);
      2c:	08010200 	stxrb	w1, w0, [x16]
      30:	00002331 	.inst	0x00002331 ; undefined
      34:	6c070202 	stnp	d2, d0, [x16, #112]
      38:	02000004 	.inst	0x02000004 ; undefined
      3c:	20430704 	.inst	0x20430704 ; undefined
      40:	3b030000 	.inst	0x3b030000 ; undefined
      44:	02000000 	.inst	0x02000000 ; undefined
      48:	0b550708 	add	w8, w24, w21, lsr #1
    tfp_format(&s,putcp,fmt,va);
      4c:	01020000 	.inst	0x01020000 ; undefined
      50:	00212e06 	.inst	0x00212e06 ; NYI
      54:	05020200 	orr	z0.d, z0.d, #0x1ffff
      58:	000005e5 	.inst	0x000005e5 ; undefined
      5c:	69050404 	stgp	x4, x1, [x0, #160]
      60:	0200746e 	.inst	0x0200746e ; undefined
      64:	17690508 	b	fffffffffda41484 <stdout_putp+0xfffffffffda3f654>
      68:	d9050000 	stlur	x0, [x0, #80]
      6c:	0300001d 	.inst	0x0300001d ; undefined
      70:	00421f0d 	.inst	0x00421f0d ; undefined
      74:	f3060000 	.inst	0xf3060000 ; undefined
      78:	2c000023 	stnp	s3, s0, [x1]
      7c:	13100702 	sbfiz	w2, w24, #16, #2
      80:	07000001 	.inst	0x07000001 ; undefined
    putcp(&s,0);
      84:	00000a1f 	.inst	0x00000a1f ; undefined
      88:	6a0b0802 	ands	w2, w0, w11, lsl #2
      8c:	00000000 	.inst	0x00000000 ; undefined
    va_end(va);
    }
      90:	001d9007 	.inst	0x001d9007 ; undefined
      94:	0b090200 	add	w0, w16, w9
      98:	0000006a 	.inst	0x0000006a ; undefined
    vtable_entry    irq_cur_el_sp0
      9c:	2b9a0704 	adds	w4, w24, w26, asr #1
      a0:	0a020000 	and	w0, w0, w2
      a4:	00006a0b 	.inst	0x00006a0b ; undefined
      a8:	6c070800 	stnp	d0, d2, [x0, #112]
      ac:	02000002 	.inst	0x02000002 ; undefined
      b0:	006a0b0b 	.inst	0x006a0b0b ; undefined
      b4:	070c0000 	.inst	0x070c0000 ; undefined
      b8:	00001c9a 	.inst	0x00001c9a ; undefined
      bc:	6a0b0c02 	ands	w2, w0, w11, lsl #3
      c0:	10000000 	adr	x0, c0 <vector_table+0xc0>
      c4:	00226307 	.inst	0x00226307 ; NYI
      c8:	0b0d0200 	add	w0, w16, w13
      cc:	0000006a 	.inst	0x0000006a ; undefined
      d0:	0e190714 	dup	v20.8b, v24.b[12]
      d4:	0e020000 	tbl	v0.8b, {v0.16b}, v2.8b
      d8:	00006a0b 	.inst	0x00006a0b ; undefined
      dc:	2b071800 	adds	w0, w0, w7, lsl #6
      e0:	02000010 	.inst	0x02000010 ; undefined
      e4:	006a0b0f 	.inst	0x006a0b0f ; undefined
      e8:	071c0000 	.inst	0x071c0000 ; undefined
      ec:	000020d4 	.inst	0x000020d4 ; undefined
      f0:	6a0b1002 	ands	w2, w0, w11, lsl #4
      f4:	20000000 	.inst	0x20000000 ; undefined
      f8:	0015d707 	.inst	0x0015d707 ; undefined
      fc:	0b110200 	add	w0, w16, w17
    vtable_entry    fiq_cur_el_sp0
     100:	0000006a 	.inst	0x0000006a ; undefined
     104:	12cf0724 	.inst	0x12cf0724 ; undefined
     108:	12020000 	and	w0, w0, #0x40000000
     10c:	00006a0b 	.inst	0x00006a0b ; undefined
     110:	05002800 	orr	z0.s, z0.s, #0x8000000
     114:	000023f3 	.inst	0x000023f3 ; undefined
     118:	76021302 	.inst	0x76021302 ; undefined
     11c:	08000000 	stxrb	w0, w0, [x0]
     120:	0000137a 	.inst	0x0000137a ; undefined
     124:	2b0f1602 	adds	w2, w16, w15, lsl #5
     128:	09000001 	.inst	0x09000001 ; undefined
     12c:	00006a08 	.inst	0x00006a08 ; undefined
     130:	24620800 	cmphs	p0.h, p2/z, z0.h, #8
     134:	17020000 	b	fffffffffc080134 <stdout_putp+0xfffffffffc07e304>
     138:	00013d1e 	.inst	0x00013d1e ; undefined
     13c:	13080900 	sbfiz	w0, w8, #24, #3
     140:	0a000001 	and	w1, w0, w0
     144:	000025f1 	.inst	0x000025f1 ; undefined
     148:	08060601 	stxrb	w6, w1, [x16]
     14c:	0000000e 	.inst	0x0000000e ; undefined
     150:	6c000000 	stnp	d0, d0, [x0]
     154:	00000000 	.inst	0x00000000 ; undefined
     158:	01000000 	.inst	0x01000000 ; undefined
     15c:	001e009c 	.inst	0x001e009c ; undefined
     160:	00020000 	.inst	0x00020000 ; undefined
     164:	00000099 	.inst	0x00000099 ; undefined
     168:	01030108 	.inst	0x01030108 ; undefined
     16c:	00200000 	.inst	0x00200000 ; NYI
     170:	2d630000 	ldp	s0, s0, [x0, #-232]
     174:	29f90000 	ldp	w0, w0, [x0, #-56]!
     178:	2d780000 	ldp	s0, s0, [x0, #-64]
     17c:	80010000 	.inst	0x80010000 ; undefined
    vtable_entry    serror_cur_el_sp0
     180:	000002db 	.inst	0x000002db ; undefined
     184:	00ab0004 	.inst	0x00ab0004 ; undefined
     188:	01080000 	.inst	0x01080000 ; undefined
     18c:	00002189 	.inst	0x00002189 ; undefined
     190:	002fb10c 	.inst	0x002fb10c ; NYI
     194:	0029f900 	.inst	0x0029f900 ; NYI
     198:	00006000 	.inst	0x00006000 ; undefined
	...
     1a4:	0001a800 	.inst	0x0001a800 ; undefined
     1a8:	0009b100 	.inst	0x0009b100 ; undefined
     1ac:	08010200 	stxrb	w1, w0, [x16]
     1b0:	00002331 	.inst	0x00002331 ; undefined
     1b4:	6c070202 	stnp	d2, d0, [x16, #112]
     1b8:	03000004 	.inst	0x03000004 ; undefined
     1bc:	0000367e 	.inst	0x0000367e ; undefined
     1c0:	47160502 	.inst	0x47160502 ; undefined
     1c4:	02000000 	.inst	0x02000000 ; undefined
     1c8:	20430704 	.inst	0x20430704 ; undefined
     1cc:	4b030000 	sub	w0, w0, w3
     1d0:	02000039 	.inst	0x02000039 ; undefined
     1d4:	005a1c06 	.inst	0x005a1c06 ; undefined
     1d8:	08020000 	stxrb	w2, w0, [x0]
     1dc:	000b5507 	.inst	0x000b5507 ; undefined
     1e0:	06010200 	.inst	0x06010200 ; undefined
     1e4:	0000212e 	.inst	0x0000212e ; undefined
     1e8:	e5050202 	.inst	0xe5050202 ; undefined
     1ec:	04000005 	add	z5.b, p0/m, z5.b, z0.b
     1f0:	6e690504 	uhadd	v4.8h, v8.8h, v9.8h
     1f4:	08020074 	stxrb	w2, w20, [x3]
     1f8:	00176905 	.inst	0x00176905 ; undefined
     1fc:	393e0300 	strb	w0, [x24, #3968]
    vtable_entry    sync_cur_el_spx
     200:	0a010000 	and	w0, w0, w1
     204:	0000891d 	.inst	0x0000891d ; undefined
     208:	393e0500 	strb	w0, [x8, #3969]
     20c:	72060000 	ands	w0, w0, #0x4000000
     210:	30000030 	adr	x16, 215 <vector_table+0x215>
     214:	ea080b01 	ands	x1, x24, x8, lsl #2
     218:	07000000 	.inst	0x07000000 ; undefined
     21c:	000033ec 	.inst	0x000033ec ; undefined
     220:	ea130c01 	ands	x1, x0, x19, lsl #3
     224:	00000000 	.inst	0x00000000 ; undefined
     228:	003af607 	.inst	0x003af607 ; NYI
     22c:	0d0d0100 	.inst	0x0d0d0100 ; undefined
     230:	0000004e 	.inst	0x0000004e ; undefined
     234:	39040708 	strb	w8, [x24, #257]
     238:	0e010000 	tbl	v0.8b, {v0.16b}, v1.8b
     23c:	00004e0d 	.inst	0x00004e0d ; undefined
     240:	05071000 	.inst	0x05071000 ; undefined
     244:	0100002f 	.inst	0x0100002f ; undefined
     248:	004e0d0f 	.inst	0x004e0d0f ; undefined
     24c:	07180000 	.inst	0x07180000 ; undefined
     250:	00002ddc 	.inst	0x00002ddc ; undefined
     254:	4e0d1001 	tbx	v1.16b, {v0.16b}, v13.16b
     258:	20000000 	.inst	0x20000000 ; undefined
     25c:	003c8707 	.inst	0x003c8707 ; NYI
     260:	0c120100 	.inst	0x0c120100 ; undefined
     264:	0000003b 	.inst	0x0000003b ; undefined
     268:	08080028 	stxrb	w8, w8, [x1]
     26c:	0000007d 	.inst	0x0000007d ; undefined
     270:	00333e09 	.inst	0x00333e09 ; NYI
     274:	02140100 	.inst	0x02140100 ; undefined
     278:	0000008e 	.inst	0x0000008e ; undefined
     27c:	1df80309 	.inst	0x1df80309 ; undefined
    vtable_entry    irq_cur_el_spx
     280:	00000000 	.inst	0x00000000 ; undefined
     284:	820a0000 	.inst	0x820a0000 ; undefined
     288:	0100003a 	.inst	0x0100003a ; undefined
     28c:	006f05c1 	.inst	0x006f05c1 ; undefined
     290:	10140000 	adr	x0, 28290 <stdout_putp+0x26460>
     294:	00000000 	.inst	0x00000000 ; undefined
     298:	002c0000 	.inst	0x002c0000 ; NYI
     29c:	00000000 	.inst	0x00000000 ; undefined
     2a0:	9c010000 	ldr	q0, 22a0 <stdout_putp+0x470>
     2a4:	00000138 	.inst	0x00000138 ; undefined
     2a8:	002e650b 	.inst	0x002e650b ; NYI
     2ac:	20c10100 	.inst	0x20c10100 ; undefined
     2b0:	00000138 	.inst	0x00000138 ; undefined
     2b4:	00789102 	.inst	0x00789102 ; undefined
     2b8:	003b0808 	.inst	0x003b0808 ; NYI
     2bc:	550c0000 	.inst	0x550c0000 ; undefined
     2c0:	0100002e 	.inst	0x0100002e ; undefined
     2c4:	0f6406b0 	.inst	0x0f6406b0 ; undefined
     2c8:	00000000 	.inst	0x00000000 ; undefined
     2cc:	00b00000 	.inst	0x00b00000 ; undefined
     2d0:	00000000 	.inst	0x00000000 ; undefined
     2d4:	9c010000 	ldr	q0, 22d4 <stdout_putp+0x4a4>
     2d8:	0033390c 	.inst	0x0033390c ; NYI
     2dc:	06a90100 	.inst	0x06a90100 ; undefined
     2e0:	00000f10 	.inst	0x00000f10 ; undefined
     2e4:	00000000 	.inst	0x00000000 ; undefined
     2e8:	00000054 	.inst	0x00000054 ; undefined
     2ec:	00000000 	.inst	0x00000000 ; undefined
     2f0:	6a0d9c01 	.inst	0x6a0d9c01 ; undefined
     2f4:	01000038 	.inst	0x01000038 ; undefined
     2f8:	003b08a2 	.inst	0x003b08a2 ; NYI
     2fc:	0ef80000 	.inst	0x0ef80000 ; undefined
    vtable_entry    fiq_cur_el_spx
     300:	00000000 	.inst	0x00000000 ; undefined
     304:	00180000 	.inst	0x00180000 ; undefined
     308:	00000000 	.inst	0x00000000 ; undefined
     30c:	9c010000 	ldr	q0, 230c <stdout_putp+0x4dc>
     310:	000001a4 	.inst	0x000001a4 ; undefined
     314:	6c61760e 	ldnp	d14, d29, [x16, #-496]
     318:	0ca40100 	.inst	0x0ca40100 ; undefined
     31c:	0000003b 	.inst	0x0000003b ; undefined
     320:	007c9102 	.inst	0x007c9102 ; undefined
     324:	0031a70f 	.inst	0x0031a70f ; NYI
     328:	069c0100 	.inst	0x069c0100 ; undefined
     32c:	00000edc 	.inst	0x00000edc ; undefined
     330:	00000000 	.inst	0x00000000 ; undefined
     334:	0000001c 	.inst	0x0000001c ; undefined
     338:	00000000 	.inst	0x00000000 ; undefined
     33c:	01d29c01 	.inst	0x01d29c01 ; undefined
     340:	76100000 	.inst	0x76100000 ; undefined
     344:	01006c61 	.inst	0x01006c61 ; undefined
     348:	003b1d9c 	.inst	0x003b1d9c ; NYI
     34c:	91020000 	add	x0, x0, #0x80
     350:	840d007c 	ld1sb	{z28.s}, p0/z, [x3, z13.s, uxtw]
     354:	0100002f 	.inst	0x0100002f ; undefined
     358:	003b0895 	.inst	0x003b0895 ; NYI
	...
     364:	00180000 	.inst	0x00180000 ; undefined
     368:	00000000 	.inst	0x00000000 ; undefined
     36c:	9c010000 	ldr	q0, 236c <stdout_putp+0x53c>
     370:	00000204 	.inst	0x00000204 ; undefined
     374:	6c61760e 	ldnp	d14, d29, [x16, #-496]
     378:	0c970100 	st4	{v0.8b-v3.8b}, [x8], x23
     37c:	0000003b 	.inst	0x0000003b ; undefined
    vtable_entry    serror_cur_el_spx
     380:	007c9102 	.inst	0x007c9102 ; undefined
     384:	002f140d 	.inst	0x002f140d ; NYI
     388:	088e0100 	stllrb	w0, [x8]
     38c:	0000004e 	.inst	0x0000004e ; undefined
	...
     398:	00000018 	.inst	0x00000018 ; undefined
     39c:	00000000 	.inst	0x00000000 ; undefined
     3a0:	02369c01 	.inst	0x02369c01 ; undefined
     3a4:	760e0000 	.inst	0x760e0000 ; undefined
     3a8:	01006c61 	.inst	0x01006c61 ; undefined
     3ac:	004e0990 	.inst	0x004e0990 ; undefined
     3b0:	91020000 	add	x0, x0, #0x80
     3b4:	a10f0078 	.inst	0xa10f0078 ; undefined
     3b8:	01000034 	.inst	0x01000034 ; undefined
     3bc:	00000687 	.inst	0x00000687 ; undefined
     3c0:	00000000 	.inst	0x00000000 ; undefined
     3c4:	001c0000 	.inst	0x001c0000 ; undefined
     3c8:	00000000 	.inst	0x00000000 ; undefined
     3cc:	9c010000 	ldr	q0, 23cc <stdout_putp+0x59c>
     3d0:	00000264 	.inst	0x00000264 ; undefined
     3d4:	0036ab11 	.inst	0x0036ab11 ; NYI
     3d8:	0c890100 	st4	{v0.8b-v3.8b}, [x8], x9
     3dc:	0000003b 	.inst	0x0000003b ; undefined
     3e0:	007c9102 	.inst	0x007c9102 ; undefined
     3e4:	0036850f 	.inst	0x0036850f ; NYI
     3e8:	06800100 	.inst	0x06800100 ; undefined
     3ec:	00000ebc 	.inst	0x00000ebc ; undefined
     3f0:	00000000 	.inst	0x00000000 ; undefined
     3f4:	00000020 	.inst	0x00000020 ; undefined
     3f8:	00000000 	.inst	0x00000000 ; undefined
     3fc:	02929c01 	.inst	0x02929c01 ; undefined
    vtable_entry    sync_lower_el_a64
     400:	ab110000 	adds	x0, x0, x17
     404:	01000036 	.inst	0x01000036 ; undefined
     408:	003b0c82 	.inst	0x003b0c82 ; NYI
     40c:	91020000 	add	x0, x0, #0x80
     410:	070a007c 	.inst	0x070a007c ; undefined
     414:	01000035 	.inst	0x01000035 ; undefined
     418:	003b0879 	.inst	0x003b0879 ; NYI
     41c:	0e980000 	.inst	0x0e980000 ; undefined
     420:	00000000 	.inst	0x00000000 ; undefined
     424:	00240000 	.inst	0x00240000 ; NYI
     428:	00000000 	.inst	0x00000000 ; undefined
     42c:	9c010000 	ldr	q0, 242c <stdout_putp+0x5fc>
     430:	000002c4 	.inst	0x000002c4 ; undefined
     434:	706d740e 	adr	x14, db2b7 <stdout_putp+0xd9487>
     438:	0c7b0100 	.inst	0x0c7b0100 ; undefined
     43c:	0000003b 	.inst	0x0000003b ; undefined
     440:	007c9102 	.inst	0x007c9102 ; undefined
     444:	003a6412 	.inst	0x003a6412 ; NYI
     448:	06740100 	.inst	0x06740100 ; undefined
     44c:	00000e74 	.inst	0x00000e74 ; undefined
     450:	00000000 	.inst	0x00000000 ; undefined
     454:	00000024 	.inst	0x00000024 ; undefined
     458:	00000000 	.inst	0x00000000 ; undefined
     45c:	64009c01 	.inst	0x64009c01 ; undefined
     460:	04000001 	add	z1.b, p0/m, z1.b, z0.b
     464:	0001fc00 	.inst	0x0001fc00 ; undefined
     468:	89010800 	.inst	0x89010800 ; undefined
     46c:	0c000021 	st4	{v1.8b-v4.8b}, [x1]
     470:	00003cfd 	.inst	0x00003cfd ; undefined
     474:	000029f9 	.inst	0x000029f9 ; undefined
     478:	00000120 	.inst	0x00000120 ; undefined
	...
    vtable_entry    irq_lower_el_a64
     484:	00000411 	.inst	0x00000411 ; undefined
     488:	00000d5c 	.inst	0x00000d5c ; undefined
     48c:	69050402 	stgp	x2, x1, [x0, #160]
     490:	0300746e 	.inst	0x0300746e ; undefined
     494:	23310801 	.inst	0x23310801 ; undefined
     498:	02030000 	.inst	0x02030000 ; undefined
     49c:	00046c07 	.inst	0x00046c07 ; undefined
     4a0:	367e0400 	tbz	w0, #15, ffffffffffffc520 <stdout_putp+0xffffffffffffa6f0>
     4a4:	05020000 	orr	z0.d, z0.d, #0x1
     4a8:	00004e16 	.inst	0x00004e16 ; undefined
     4ac:	07040300 	.inst	0x07040300 ; undefined
     4b0:	00002043 	.inst	0x00002043 ; undefined
     4b4:	00394b04 	.inst	0x00394b04 ; NYI
     4b8:	1c060200 	ldr	s0, c4f8 <stdout_putp+0xa6c8>
     4bc:	00000061 	.inst	0x00000061 ; undefined
     4c0:	55070803 	.inst	0x55070803 ; undefined
     4c4:	0500000b 	orr	z11.s, z11.s, #0x1
     4c8:	00000061 	.inst	0x00000061 ; undefined
     4cc:	2e060103 	ext	v3.8b, v8.8b, v6.8b, #0
     4d0:	03000021 	.inst	0x03000021 ; undefined
     4d4:	05e50502 	.inst	0x05e50502 ; undefined
     4d8:	08030000 	stxrb	w3, w0, [x0]
     4dc:	00176905 	.inst	0x00176905 ; undefined
     4e0:	3cc90400 	ldr	q0, [x0], #144
     4e4:	0e020000 	tbl	v0.8b, {v0.16b}, v2.8b
     4e8:	00006825 	.inst	0x00006825 ; undefined
     4ec:	3cbd0600 	.inst	0x3cbd0600 ; undefined
     4f0:	26010000 	.inst	0x26010000 ; undefined
     4f4:	0010b406 	.inst	0x0010b406 ; undefined
     4f8:	00000000 	.inst	0x00000000 ; undefined
     4fc:	00004000 	.inst	0x00004000 ; undefined
    vtable_entry    fiq_lower_el_a64
     500:	00000000 	.inst	0x00000000 ; undefined
     504:	bc9c0100 	.inst	0xbc9c0100 ; undefined
     508:	07000000 	.inst	0x07000000 ; undefined
     50c:	00002e65 	.inst	0x00002e65 ; undefined
     510:	bc0d2801 	.inst	0xbc0d2801 ; undefined
     514:	02000000 	.inst	0x02000000 ; undefined
     518:	08007891 	stxrb	w0, w17, [x4]
     51c:	00004208 	.inst	0x00004208 ; undefined
     520:	3ced0600 	.inst	0x3ced0600 ; undefined
     524:	17010000 	b	fffffffffc040524 <stdout_putp+0xfffffffffc03e6f4>
     528:	00108806 	.inst	0x00108806 ; undefined
     52c:	00000000 	.inst	0x00000000 ; undefined
     530:	00002c00 	.inst	0x00002c00 ; undefined
     534:	00000000 	.inst	0x00000000 ; undefined
     538:	f09c0100 	adrp	x0, ffffffff38023000 <stdout_putp+0xffffffff380211d0>
     53c:	07000000 	.inst	0x07000000 ; undefined
     540:	00003d1e 	.inst	0x00003d1e ; undefined
     544:	550c1801 	.inst	0x550c1801 ; undefined
     548:	02000000 	.inst	0x02000000 ; undefined
     54c:	09007891 	.inst	0x09007891 ; undefined
     550:	00003d0c 	.inst	0x00003d0c ; undefined
     554:	5c061001 	ldr	d1, c754 <stdout_putp+0xa924>
     558:	00000010 	.inst	0x00000010 ; undefined
     55c:	2c000000 	stnp	s0, s0, [x0]
     560:	00000000 	.inst	0x00000000 ; undefined
     564:	01000000 	.inst	0x01000000 ; undefined
     568:	00012d9c 	.inst	0x00012d9c ; undefined
     56c:	3d1e0a00 	str	b0, [x16, #1922]
     570:	10010000 	adr	x0, 2570 <stdout_putp+0x740>
     574:	0000551f 	.inst	0x0000551f ; undefined
     578:	68910200 	stgp	x0, x0, [x16], #544
     57c:	003ccf07 	.inst	0x003ccf07 ; NYI
    vtable_entry    serror_lower_el_a64
     580:	0c110100 	.inst	0x0c110100 ; undefined
     584:	0000012d 	.inst	0x0000012d ; undefined
     588:	00789102 	.inst	0x00789102 ; undefined
     58c:	00820808 	.inst	0x00820808 ; undefined
     590:	da0b0000 	sbc	x0, x0, x11
     594:	0100003c 	.inst	0x0100003c ; undefined
     598:	1040060a 	adr	x10, 80658 <stdout_putp+0x7e828>
     59c:	00000000 	.inst	0x00000000 ; undefined
     5a0:	001c0000 	.inst	0x001c0000 ; undefined
     5a4:	00000000 	.inst	0x00000000 ; undefined
     5a8:	9c010000 	ldr	q0, 25a8 <stdout_putp+0x778>
     5ac:	00000161 	.inst	0x00000161 ; undefined
     5b0:	003d1e0a 	.inst	0x003d1e0a ; NYI
     5b4:	210a0100 	.inst	0x210a0100 ; undefined
     5b8:	00000161 	.inst	0x00000161 ; undefined
     5bc:	00789102 	.inst	0x00789102 ; undefined
     5c0:	00550808 	.inst	0x00550808 ; undefined
     5c4:	2a000000 	orr	w0, w0, w0
     5c8:	02000000 	.inst	0x02000000 ; undefined
     5cc:	0002bc00 	.inst	0x0002bc00 ; undefined
     5d0:	7b010800 	.inst	0x7b010800 ; undefined
     5d4:	48000005 	stxrh	w0, w5, [x0]
     5d8:	0000000d 	.inst	0x0000000d ; undefined
     5dc:	d0000000 	adrp	x0, 2000 <stdout_putp+0x1d0>
     5e0:	0000000d 	.inst	0x0000000d ; undefined
     5e4:	25000000 	cmpge	p0.b, p0/z, z0.b, #0
     5e8:	f900003d 	str	x29, [x1]
     5ec:	78000029 	sturh	w9, [x1]
     5f0:	0100002d 	.inst	0x0100002d ; undefined
     5f4:	00002a80 	.inst	0x00002a80 ; undefined
     5f8:	d0000200 	adrp	x0, 42000 <stdout_putp+0x401d0>
     5fc:	08000002 	stxrb	w0, w2, [x0]
    vtable_entry    sync_lower_el_a32
     600:	0005d201 	.inst	0x0005d201 ; undefined
     604:	000df800 	.inst	0x000df800 ; undefined
     608:	00000000 	.inst	0x00000000 ; undefined
     60c:	000e0800 	.inst	0x000e0800 ; undefined
     610:	00000000 	.inst	0x00000000 ; undefined
     614:	003d3500 	.inst	0x003d3500 ; NYI
     618:	0029f900 	.inst	0x0029f900 ; NYI
     61c:	002d7800 	.inst	0x002d7800 ; NYI
     620:	06800100 	.inst	0x06800100 ; undefined
     624:	04000004 	add	z4.b, p0/m, z4.b, z0.b
     628:	0002e400 	.inst	0x0002e400 ; undefined
     62c:	89010800 	.inst	0x89010800 ; undefined
     630:	0c000021 	st4	{v1.8b-v4.8b}, [x1]
     634:	00003d71 	.inst	0x00003d71 ; undefined
     638:	000029f9 	.inst	0x000029f9 ; undefined
     63c:	00000170 	.inst	0x00000170 ; undefined
	...
     648:	00000613 	.inst	0x00000613 ; undefined
     64c:	00000de2 	.inst	0x00000de2 ; undefined
     650:	003e9502 	.inst	0x003e9502 ; NYI
     654:	17030200 	b	fffffffffc0c0e54 <stdout_putp+0xfffffffffc0bf024>
     658:	00000039 	.inst	0x00000039 ; undefined
     65c:	31080103 	adds	w3, w8, #0x200
     660:	03000023 	.inst	0x03000023 ; undefined
     664:	046c0702 	sub	z2.h, z24.h, z12.h
     668:	7e020000 	.inst	0x7e020000 ; undefined
     66c:	02000036 	.inst	0x02000036 ; undefined
     670:	00531605 	.inst	0x00531605 ; undefined
     674:	04030000 	subr	z0.b, p0/m, z0.b, z0.b
     678:	00204307 	.inst	0x00204307 ; NYI
     67c:	00530400 	.inst	0x00530400 ; undefined
    vtable_entry    irq_lower_el_a32 
     680:	08030000 	stxrb	w3, w0, [x0]
     684:	000b5507 	.inst	0x000b5507 ; undefined
     688:	06010300 	.inst	0x06010300 ; undefined
     68c:	0000212e 	.inst	0x0000212e ; undefined
     690:	e5050203 	.inst	0xe5050203 ; undefined
     694:	05000005 	orr	z5.s, z5.s, #0x1
     698:	6e690504 	uhadd	v4.8h, v8.8h, v9.8h
     69c:	08030074 	stxrb	w3, w20, [x3]
     6a0:	00176905 	.inst	0x00176905 ; undefined
     6a4:	1dd90200 	.inst	0x1dd90200 ; undefined
     6a8:	0d020000 	.inst	0x0d020000 ; undefined
     6ac:	00005a1f 	.inst	0x00005a1f ; undefined
     6b0:	23f30600 	.inst	0x23f30600 ; undefined
     6b4:	032c0000 	.inst	0x032c0000 ; undefined
     6b8:	012b1007 	.inst	0x012b1007 ; undefined
     6bc:	1f070000 	fmadd	s0, s0, s7, s0
     6c0:	0300000a 	.inst	0x0300000a ; undefined
     6c4:	00820b08 	.inst	0x00820b08 ; undefined
     6c8:	07000000 	.inst	0x07000000 ; undefined
     6cc:	00001d90 	.inst	0x00001d90 ; undefined
     6d0:	820b0903 	.inst	0x820b0903 ; undefined
     6d4:	04000000 	add	z0.b, p0/m, z0.b, z0.b
     6d8:	002b9a07 	.inst	0x002b9a07 ; NYI
     6dc:	0b0a0300 	add	w0, w24, w10
     6e0:	00000082 	.inst	0x00000082 ; undefined
     6e4:	026c0708 	.inst	0x026c0708 ; undefined
     6e8:	0b030000 	add	w0, w0, w3
     6ec:	0000820b 	.inst	0x0000820b ; undefined
     6f0:	9a070c00 	.inst	0x9a070c00 ; undefined
     6f4:	0300001c 	.inst	0x0300001c ; undefined
     6f8:	00820b0c 	.inst	0x00820b0c ; undefined
     6fc:	07100000 	.inst	0x07100000 ; undefined
    vtable_entry    fiq_lower_el_a32
     700:	00002263 	.inst	0x00002263 ; undefined
     704:	820b0d03 	.inst	0x820b0d03 ; undefined
     708:	14000000 	b	708 <vector_table+0x708>
     70c:	000e1907 	.inst	0x000e1907 ; undefined
     710:	0b0e0300 	add	w0, w24, w14
     714:	00000082 	.inst	0x00000082 ; undefined
     718:	102b0718 	adr	x24, 567f8 <stdout_putp+0x549c8>
     71c:	0f030000 	.inst	0x0f030000 ; undefined
     720:	0000820b 	.inst	0x0000820b ; undefined
     724:	d4071c00 	.inst	0xd4071c00 ; undefined
     728:	03000020 	.inst	0x03000020 ; undefined
     72c:	00820b10 	.inst	0x00820b10 ; undefined
     730:	07200000 	.inst	0x07200000 ; undefined
     734:	000015d7 	.inst	0x000015d7 ; undefined
     738:	820b1103 	.inst	0x820b1103 ; undefined
     73c:	24000000 	cmphs	p0.b, p0/z, z0.b, z0.b
     740:	0012cf07 	.inst	0x0012cf07 ; undefined
     744:	0b120300 	add	w0, w24, w18
     748:	00000082 	.inst	0x00000082 ; undefined
     74c:	f3020028 	.inst	0xf3020028 ; undefined
     750:	03000023 	.inst	0x03000023 ; undefined
     754:	008e0213 	.inst	0x008e0213 ; undefined
     758:	7a080000 	sbcs	w0, w0, w8
     75c:	03000013 	.inst	0x03000013 ; undefined
     760:	01430f16 	.inst	0x01430f16 ; undefined
     764:	08090000 	stxrb	w9, w0, [x0]
     768:	00000082 	.inst	0x00000082 ; undefined
     76c:	00246208 	.inst	0x00246208 ; NYI
     770:	1e170300 	.inst	0x1e170300 ; undefined
     774:	00000155 	.inst	0x00000155 ; undefined
     778:	012b0809 	.inst	0x012b0809 ; undefined
     77c:	5b060000 	.inst	0x5b060000 ; undefined
    vtable_entry    serror_lower_el_a32
     780:	a400003d 	ld1rqb	{z29.b}, p0/z, [x1, x0]
ehandler_loop_infinite  sync_cur_el_sp0
     784:	d5100504 	msr	s2_0_c0_c5_0, x4
     788:	07000002 	.inst	0x07000002 ; undefined
     78c:	00003dab 	.inst	0x00003dab ; undefined
     790:	820b0604 	.inst	0x820b0604 ; undefined
     794:	00000000 	.inst	0x00000000 ; undefined
     798:	003db307 	.inst	0x003db307 ; NYI
     79c:	0b070400 	add	w0, w0, w7, lsl #1
     7a0:	00000082 	.inst	0x00000082 ; undefined
     7a4:	3dbb0704 	str	q4, [x24, #60432]
     7a8:	08040000 	stxrb	w4, w0, [x0]
     7ac:	0000820b 	.inst	0x0000820b ; undefined
     7b0:	81070800 	.inst	0x81070800 ; undefined
     7b4:	0400003d 	add	z29.b, p0/m, z29.b, z1.b
     7b8:	00820b09 	.inst	0x00820b09 ; undefined
     7bc:	070c0000 	.inst	0x070c0000 ; undefined
     7c0:	00003dc3 	.inst	0x00003dc3 ; undefined
     7c4:	820b0a04 	.inst	0x820b0a04 ; undefined
     7c8:	10000000 	adr	x0, 7c8 <sync_cur_el_sp0+0x44>
     7cc:	003d9d07 	.inst	0x003d9d07 ; NYI
     7d0:	0b0c0400 	add	w0, w0, w12, lsl #1
     7d4:	00000082 	.inst	0x00000082 ; undefined
     7d8:	3da40718 	str	q24, [x24, #36880]
ehandler_loop_infinite  irq_cur_el_sp0
     7dc:	0d040000 	.inst	0x0d040000 ; undefined
     7e0:	0000820b 	.inst	0x0000820b ; undefined
     7e4:	79071c00 	strh	w0, [x0, #910]
     7e8:	0400003e 	add	z30.b, p0/m, z30.b, z1.b
     7ec:	00820b0f 	.inst	0x00820b0f ; undefined
     7f0:	07240000 	.inst	0x07240000 ; undefined
     7f4:	00003e80 	.inst	0x00003e80 ; undefined
     7f8:	820b1004 	.inst	0x820b1004 ; undefined
     7fc:	28000000 	stnp	w0, w0, [x0]
     800:	003dd907 	.inst	0x003dd907 ; NYI
     804:	0b120400 	add	w0, w0, w18, lsl #1
     808:	00000082 	.inst	0x00000082 ; undefined
     80c:	3de00730 	ldr	q16, [x25, #32784]
     810:	13040000 	sbfiz	w0, w0, #28, #1
     814:	0000820b 	.inst	0x0000820b ; undefined
     818:	87073400 	.inst	0x87073400 ; undefined
     81c:	0400003e 	add	z30.b, p0/m, z30.b, z1.b
     820:	00820b15 	.inst	0x00820b15 ; undefined
     824:	073c0000 	.inst	0x073c0000 ; undefined
     828:	00003e8e 	.inst	0x00003e8e ; undefined
     82c:	820b1604 	.inst	0x820b1604 ; undefined
     830:	40000000 	.inst	0x40000000 ; undefined
ehandler_loop_infinite  fiq_cur_el_sp0
     834:	003dcb07 	.inst	0x003dcb07 ; NYI
     838:	0b180400 	add	w0, w0, w24, lsl #1
     83c:	00000082 	.inst	0x00000082 ; undefined
     840:	3dd20748 	ldr	q8, [x26, #18448]
     844:	19040000 	stlurb	w0, [x0, #64]
     848:	0000820b 	.inst	0x0000820b ; undefined
     84c:	54074c00 	b.eq	f1cc <stdout_putp+0xd39c>  // b.none
     850:	0400003d 	add	z29.b, p0/m, z29.b, z1.b
     854:	00820b1b 	.inst	0x00820b1b ; undefined
     858:	07540000 	.inst	0x07540000 ; undefined
     85c:	00003e62 	.inst	0x00003e62 ; undefined
     860:	820b1c04 	.inst	0x820b1c04 ; undefined
     864:	58000000 	ldr	x0, 864 <fiq_cur_el_sp0+0x30>
     868:	003e2a07 	.inst	0x003e2a07 ; NYI
     86c:	0b1e0400 	add	w0, w0, w30, lsl #1
     870:	00000082 	.inst	0x00000082 ; undefined
     874:	3e310760 	.inst	0x3e310760 ; undefined
     878:	1f040000 	fmadd	s0, s0, s4, s0
     87c:	0000820b 	.inst	0x0000820b ; undefined
     880:	42076400 	.inst	0x42076400 ; undefined
     884:	0400003d 	add	z29.b, p0/m, z29.b, z1.b
     888:	00820b21 	.inst	0x00820b21 ; undefined
ehandler_loop_infinite  serror_cur_el_sp0
     88c:	076c0000 	.inst	0x076c0000 ; undefined
     890:	00003de7 	.inst	0x00003de7 ; undefined
     894:	820b2204 	.inst	0x820b2204 ; undefined
     898:	70000000 	adr	x0, 89b <serror_cur_el_sp0+0xf>
     89c:	003e5207 	.inst	0x003e5207 ; NYI
     8a0:	0b240400 	add	w0, w0, w4, uxtb #1
     8a4:	00000082 	.inst	0x00000082 ; undefined
     8a8:	3e5a0778 	.inst	0x3e5a0778 ; undefined
     8ac:	25040000 	cmpge	p0.b, p0/z, z0.b, #4
     8b0:	0000820b 	.inst	0x0000820b ; undefined
     8b4:	71077c00 	subs	w0, w0, #0x1df
     8b8:	0400003e 	add	z30.b, p0/m, z30.b, z1.b
     8bc:	00820b27 	.inst	0x00820b27 ; undefined
     8c0:	07840000 	.inst	0x07840000 ; undefined
     8c4:	00003e69 	.inst	0x00003e69 ; undefined
     8c8:	820b2804 	.inst	0x820b2804 ; undefined
     8cc:	88000000 	stxr	w0, w0, [x0]
     8d0:	003e3807 	.inst	0x003e3807 ; NYI
     8d4:	0b2a0400 	add	w0, w0, w10, uxtb #1
     8d8:	00000082 	.inst	0x00000082 ; undefined
     8dc:	3dee0790 	ldr	q16, [x28, #47120]
     8e0:	2b040000 	adds	w0, w0, w4
ehandler_loop_infinite  sync_cur_el_spx
     8e4:	0000820b 	.inst	0x0000820b ; undefined
     8e8:	f8079400 	str	x0, [x0], #121
     8ec:	0400003d 	add	z29.b, p0/m, z29.b, z1.b
     8f0:	00820b2c 	.inst	0x00820b2c ; undefined
     8f4:	00980000 	.inst	0x00980000 ; undefined
     8f8:	003d5b02 	.inst	0x003d5b02 ; NYI
     8fc:	022f0400 	.inst	0x022f0400 ; undefined
     900:	0000015b 	.inst	0x0000015b ; undefined
     904:	003d9808 	.inst	0x003d9808 ; NYI
     908:	15310400 	b	4c41908 <stdout_putp+0x4c3fad8>
     90c:	000002ed 	.inst	0x000002ed ; undefined
     910:	02d50809 	.inst	0x02d50809 ; undefined
     914:	370a0000 	tbnz	w0, #1, 4914 <stdout_putp+0x2ae4>
     918:	01000001 	.inst	0x01000001 ; undefined
     91c:	03090806 	.inst	0x03090806 ; undefined
     920:	00001de0 	.inst	0x00001de0 ; undefined
     924:	00000000 	.inst	0x00000000 ; undefined
     928:	0001490a 	.inst	0x0001490a ; undefined
     92c:	17070100 	b	fffffffffc1c0d2c <stdout_putp+0xfffffffffc1beefc>
     930:	1de80309 	.inst	0x1de80309 ; undefined
     934:	00000000 	.inst	0x00000000 ; undefined
     938:	e10a0000 	.inst	0xe10a0000 ; undefined
ehandler_loop_infinite  fiq_cur_el_spx
     93c:	01000002 	.inst	0x01000002 ; undefined
     940:	03090e08 	.inst	0x03090e08 ; undefined
     944:	00001df0 	.inst	0x00001df0 ; undefined
     948:	00000000 	.inst	0x00000000 ; undefined
     94c:	003d930b 	.inst	0x003d930b ; NYI
     950:	062f0100 	.inst	0x062f0100 ; undefined
     954:	0000123c 	.inst	0x0000123c ; undefined
     958:	00000000 	.inst	0x00000000 ; undefined
     95c:	00000024 	.inst	0x00000024 ; undefined
     960:	00000000 	.inst	0x00000000 ; undefined
     964:	03649c01 	.inst	0x03649c01 ; undefined
     968:	700c0000 	adr	x0, 1896b <stdout_putp+0x16b3b>
     96c:	112f0100 	add	w0, w8, #0xbc0
     970:	00000364 	.inst	0x00000364 ; undefined
     974:	0d789102 	.inst	0x0d789102 ; undefined
     978:	00003e02 	.inst	0x00003e02 ; undefined
     97c:	6a192f01 	ands	w1, w24, w25, lsl #11
     980:	02000003 	.inst	0x02000003 ; undefined
     984:	09007791 	.inst	0x09007791 ; undefined
     988:	00036a08 	.inst	0x00036a08 ; undefined
     98c:	08010300 	stxrb	w1, w0, [x24]
     990:	00002135 	.inst	0x00002135 ; undefined
ehandler_loop_infinite  serror_cur_el_spx
     994:	003d490e 	.inst	0x003d490e ; NYI
     998:	062b0100 	.inst	0x062b0100 ; undefined
     99c:	00001214 	.inst	0x00001214 ; undefined
     9a0:	00000000 	.inst	0x00000000 ; undefined
     9a4:	00000028 	.inst	0x00000028 ; undefined
     9a8:	00000000 	.inst	0x00000000 ; undefined
     9ac:	039f9c01 	.inst	0x039f9c01 ; undefined
     9b0:	020d0000 	.inst	0x020d0000 ; undefined
     9b4:	0100003e 	.inst	0x0100003e ; undefined
     9b8:	002d172b 	.inst	0x002d172b ; NYI
     9bc:	91020000 	add	x0, x0, #0x80
     9c0:	670f007f 	.inst	0x670f007f ; undefined
     9c4:	0100003d 	.inst	0x0100003d ; undefined
     9c8:	002d0726 	.inst	0x002d0726 ; NYI
     9cc:	11f00000 	.inst	0x11f00000 ; undefined
     9d0:	00000000 	.inst	0x00000000 ; undefined
     9d4:	00240000 	.inst	0x00240000 ; NYI
     9d8:	00000000 	.inst	0x00000000 ; undefined
     9dc:	9c010000 	ldr	q0, 29dc <stdout_putp+0xbac>
     9e0:	000003d1 	.inst	0x000003d1 ; undefined
     9e4:	003e0210 	.inst	0x003e0210 ; NYI
     9e8:	0b270100 	add	w0, w8, w7, uxtb
ehandler_loop_infinite  sync_lower_el_a64
     9ec:	0000002d 	.inst	0x0000002d ; undefined
     9f0:	007f9102 	.inst	0x007f9102 ; undefined
     9f4:	003e3e11 	.inst	0x003e3e11 ; NYI
     9f8:	07220100 	.inst	0x07220100 ; undefined
     9fc:	0000002d 	.inst	0x0000002d ; undefined
     a00:	000011d0 	.inst	0x000011d0 ; undefined
     a04:	00000000 	.inst	0x00000000 ; undefined
     a08:	00000020 	.inst	0x00000020 ; undefined
     a0c:	00000000 	.inst	0x00000000 ; undefined
     a10:	89129c01 	.inst	0x89129c01 ; undefined
     a14:	0100003d 	.inst	0x0100003d ; undefined
     a18:	10f4060a 	adr	x10, fffffffffffe8ad8 <stdout_putp+0xfffffffffffe6ca8>
     a1c:	00000000 	.inst	0x00000000 ; undefined
     a20:	00dc0000 	.inst	0x00dc0000 ; undefined
     a24:	00000000 	.inst	0x00000000 ; undefined
     a28:	9c010000 	ldr	q0, 2a28 <stdout_putp+0xbf8>
     a2c:	0004d000 	.inst	0x0004d000 ; undefined
     a30:	2d000400 	stp	s0, s1, [x0]
     a34:	08000004 	stxrb	w0, w4, [x0]
     a38:	00218901 	.inst	0x00218901 ; NYI
     a3c:	3f070c00 	.inst	0x3f070c00 ; undefined
     a40:	29f90000 	ldp	w0, w0, [x0, #-56]!
ehandler_loop_infinite  irq_lower_el_a64
     a44:	02000000 	.inst	0x02000000 ; undefined
	...
     a50:	07530000 	.inst	0x07530000 ; undefined
     a54:	0e220000 	saddl	v0.8h, v0.8b, v2.8b
     a58:	ca020000 	eor	x0, x0, x2
     a5c:	0200003e 	.inst	0x0200003e ; undefined
     a60:	00391b28 	.inst	0x00391b28 ; NYI
     a64:	3a030000 	adcs	w0, w0, w3
     a68:	20000015 	.inst	0x20000015 ; undefined
     a6c:	00780003 	.inst	0x00780003 ; undefined
     a70:	34040000 	cbz	w0, 8a70 <stdout_putp+0x6c40>
     a74:	7800003f 	sturh	wzr, [x1]
     a78:	00000000 	.inst	0x00000000 ; undefined
     a7c:	003e9b04 	.inst	0x003e9b04 ; NYI
     a80:	00007800 	.inst	0x00007800 ; undefined
     a84:	2b040800 	adds	w0, w0, w4, lsl #2
     a88:	7800003f 	sturh	wzr, [x1]
     a8c:	10000000 	adr	x0, a8c <irq_lower_el_a64+0x48>
     a90:	003edf04 	.inst	0x003edf04 ; NYI
     a94:	00007a00 	.inst	0x00007a00 ; undefined
     a98:	21041800 	.inst	0x21041800 ; undefined
ehandler_loop_infinite  fiq_lower_el_a64
     a9c:	7a00003f 	sbcs	wzr, w1, w0
     aa0:	1c000000 	ldr	s0, aa0 <fiq_lower_el_a64+0x4>
     aa4:	06080500 	.inst	0x06080500 ; undefined
     aa8:	6e690504 	uhadd	v4.8h, v8.8h, v9.8h
     aac:	3c020074 	stur	b20, [x3, #32]
     ab0:	02000015 	.inst	0x02000015 ; undefined
     ab4:	002d1863 	.inst	0x002d1863 ; NYI
     ab8:	a4020000 	ld1rqb	{z0.b}, p0/z, [x0, x2]
     abc:	0100003e 	.inst	0x0100003e ; undefined
     ac0:	00991018 	.inst	0x00991018 ; undefined
     ac4:	08070000 	stxrb	w7, w0, [x0]
     ac8:	0000009f 	.inst	0x0000009f ; undefined
     acc:	0000af08 	.inst	0x0000af08 ; undefined
     ad0:	00780900 	.inst	0x00780900 ; undefined
     ad4:	af090000 	.inst	0xaf090000 ; undefined
     ad8:	00000000 	.inst	0x00000000 ; undefined
     adc:	3508010a 	cbnz	w10, 10afc <stdout_putp+0xeccc>
     ae0:	0b000021 	add	w1, w1, w0
     ae4:	00003ee9 	.inst	0x00003ee9 ; undefined
     ae8:	8d0e1901 	.inst	0x8d0e1901 ; undefined
     aec:	09000000 	.inst	0x09000000 ; undefined
     af0:	001e2803 	.inst	0x001e2803 ; undefined
ehandler_loop_infinite  serror_lower_el_a64
     af4:	00000000 	.inst	0x00000000 ; undefined
     af8:	3ef50b00 	.inst	0x3ef50b00 ; undefined
     afc:	1a010000 	adc	w0, w0, w1
     b00:	0000780e 	.inst	0x0000780e ; undefined
     b04:	30030900 	adr	x0, 6c25 <stdout_putp+0x4df5>
     b08:	0000001e 	.inst	0x0000001e ; undefined
     b0c:	0c000000 	st4	{v0.8b-v3.8b}, [x0]
     b10:	000009cd 	.inst	0x000009cd ; undefined
     b14:	0006e201 	.inst	0x0006e201 ; undefined
     b18:	00000000 	.inst	0x00000000 ; undefined
     b1c:	9c000000 	ldr	q0, b1c <serror_lower_el_a64+0x28>
     b20:	00000000 	.inst	0x00000000 ; undefined
     b24:	01000000 	.inst	0x01000000 ; undefined
     b28:	00012f9c 	.inst	0x00012f9c ; undefined
     b2c:	00730d00 	.inst	0x00730d00 ; undefined
     b30:	2f18e201 	.inst	0x2f18e201 ; undefined
     b34:	03000001 	.inst	0x03000001 ; undefined
     b38:	0d7fa891 	.inst	0x0d7fa891 ; undefined
     b3c:	00746d66 	.inst	0x00746d66 ; undefined
     b40:	2f20e201 	.inst	0x2f20e201 ; undefined
     b44:	03000001 	.inst	0x03000001 ; undefined
     b48:	0e7fa091 	smlsl	v17.4s, v4.4h, v31.4h
ehandler_loop_infinite  sync_lower_el_a32
     b4c:	0061760f 	.inst	0x0061760f ; undefined
     b50:	810de401 	.inst	0x810de401 ; undefined
     b54:	03000000 	.inst	0x03000000 ; undefined
     b58:	007fb091 	.inst	0x007fb091 ; undefined
     b5c:	00af0807 	.inst	0x00af0807 ; undefined
     b60:	aa100000 	orr	x0, x0, x16
     b64:	0100003e 	.inst	0x0100003e ; undefined
     b68:	00000ddb 	.inst	0x00000ddb ; undefined
     b6c:	00000000 	.inst	0x00000000 ; undefined
     b70:	00340000 	.inst	0x00340000 ; NYI
     b74:	00000000 	.inst	0x00000000 ; undefined
     b78:	9c010000 	ldr	q0, 2b78 <stdout_putp+0xd48>
     b7c:	0000016e 	.inst	0x0000016e ; undefined
     b80:	0100700d 	.inst	0x0100700d ; undefined
     b84:	007819db 	.inst	0x007819db ; undefined
     b88:	91020000 	add	x0, x0, #0x80
     b8c:	00630d78 	.inst	0x00630d78 ; undefined
     b90:	af20db01 	.inst	0xaf20db01 ; undefined
     b94:	02000000 	.inst	0x02000000 ; undefined
     b98:	0c007791 	st1	{v17.4h}, [x28]
     b9c:	0000258e 	.inst	0x0000258e ; undefined
     ba0:	4406d301 	.inst	0x4406d301 ; undefined
ehandler_loop_infinite  irq_lower_el_a32
     ba4:	0000001a 	.inst	0x0000001a ; undefined
     ba8:	a0000000 	.inst	0xa0000000 ; undefined
     bac:	00000000 	.inst	0x00000000 ; undefined
     bb0:	01000000 	.inst	0x01000000 ; undefined
     bb4:	0001ad9c 	.inst	0x0001ad9c ; undefined
     bb8:	6d660d00 	ldp	d0, d3, [x8, #-416]
     bbc:	d3010074 	.inst	0xd3010074 ; undefined
     bc0:	00012f17 	.inst	0x00012f17 ; undefined
     bc4:	98910300 	ldrsw	x0, fffffffffff22c24 <stdout_putp+0xfffffffffff20df4>
     bc8:	760f0e7f 	.inst	0x760f0e7f ; undefined
     bcc:	d5010061 	msr	s0_1_c0_c0_3, x1
     bd0:	0000810d 	.inst	0x0000810d ; undefined
     bd4:	a0910300 	.inst	0xa0910300 ; undefined
     bd8:	3c11007f 	stur	b31, [x3, #-240]
     bdc:	0100003f 	.inst	0x0100003f ; undefined
     be0:	1a0c06cd 	.inst	0x1a0c06cd ; undefined
     be4:	00000000 	.inst	0x00000000 ; undefined
     be8:	00380000 	.inst	0x00380000 ; NYI
     bec:	00000000 	.inst	0x00000000 ; undefined
     bf0:	9c010000 	ldr	q0, 2bf0 <stdout_putp+0xdc0>
     bf4:	000001ea 	.inst	0x000001ea ; undefined
     bf8:	003efc12 	.inst	0x003efc12 ; NYI
ehandler_loop_infinite  fiq_lower_el_a32
     bfc:	18cd0100 	ldr	w0, fffffffffff9ac1c <stdout_putp+0xfffffffffff98dec>
     c00:	00000078 	.inst	0x00000078 ; undefined
     c04:	12789102 	.inst	0x12789102 ; undefined
     c08:	00003ef0 	.inst	0x00003ef0 ; undefined
     c0c:	9924cd01 	.inst	0x9924cd01 ; undefined
     c10:	02000000 	.inst	0x02000000 ; undefined
     c14:	0c007091 	st1	{v17.8b}, [x4]
     c18:	00003eb5 	.inst	0x00003eb5 ; undefined
     c1c:	ec067e01 	.inst	0xec067e01 ; undefined
     c20:	00000015 	.inst	0x00000015 ; undefined
     c24:	20000000 	.inst	0x20000000 ; undefined
     c28:	00000004 	.inst	0x00000004 ; undefined
     c2c:	01000000 	.inst	0x01000000 ; undefined
     c30:	0002919c 	.inst	0x0002919c ; undefined
     c34:	3efc1200 	.inst	0x3efc1200 ; undefined
     c38:	7e010000 	.inst	0x7e010000 ; undefined
     c3c:	00007817 	.inst	0x00007817 ; undefined
     c40:	58910200 	ldr	x0, fffffffffff22c80 <stdout_putp+0xfffffffffff20e50>
     c44:	003ef012 	.inst	0x003ef012 ; NYI
     c48:	227e0100 	.inst	0x227e0100 ; undefined
     c4c:	0000008d 	.inst	0x0000008d ; undefined
     c50:	0d509102 	.inst	0x0d509102 ; undefined
ehandler_loop_infinite  serror_lower_el_a32
     c54:	00746d66 	.inst	0x00746d66 ; undefined
     c58:	2f2d7e01 	.inst	0x2f2d7e01 ; undefined
     c5c:	02000001 	.inst	0x02000001 ; undefined
     c60:	760d4891 	.inst	0x760d4891 ; undefined
     c64:	7e010061 	.inst	0x7e010061 ; undefined
     c68:	0000813a 	.inst	0x0000813a ; undefined
     c6c:	00830200 	.inst	0x00830200 ; undefined
     c70:	0066620f 	.inst	0x0066620f ; undefined
     c74:	910a8001 	add	x1, x0, #0x2a0
     c78:	02000002 	.inst	0x02000002 ; undefined
     c7c:	630f7091 	.inst	0x630f7091 ; undefined
     c80:	82010068 	.inst	0x82010068 ; undefined
     c84:	0000af0a 	.inst	0x0000af0a ; undefined
     c88:	7f910200 	.inst	0x7f910200 ; undefined
     c8c:	003ed913 	.inst	0x003ed913 ; NYI
     c90:	05c90100 	.inst	0x05c90100 ; undefined
     c94:	000019fc 	.inst	0x000019fc ; undefined
     c98:	00000000 	.inst	0x00000000 ; undefined
     c9c:	0001d014 	.inst	0x0001d014 ; undefined
     ca0:	7a6c0f00 	.inst	0x7a6c0f00 ; undefined
     ca4:	12890100 	mov	w0, #0xffffb7f7            	// #-18441
     ca8:	000000af 	.inst	0x000000af ; undefined
    context_save
     cac:	0f7e9102 	.inst	0x0f7e9102 ; undefined
     cb0:	8d010077 	.inst	0x8d010077 ; undefined
     cb4:	00007a11 	.inst	0x00007a11 ; undefined
     cb8:	6c910200 	stp	d0, d0, [x16], #272
     cbc:	af150000 	.inst	0xaf150000 ; undefined
     cc0:	a1000000 	.inst	0xa1000000 ; undefined
     cc4:	16000002 	b	fffffffff8000ccc <stdout_putp+0xfffffffff7ffee9c>
     cc8:	000002a1 	.inst	0x000002a1 ; undefined
     ccc:	080a000b 	stxrb	w10, w11, [x0]
     cd0:	00066b07 	.inst	0x00066b07 ; undefined
     cd4:	3f1a1700 	.inst	0x3f1a1700 ; undefined
     cd8:	71010000 	subs	w0, w0, #0x40
     cdc:	0015100d 	.inst	0x0015100d ; undefined
     ce0:	00000000 	.inst	0x00000000 ; undefined
     ce4:	0000dc00 	.inst	0x0000dc00 ; undefined
     ce8:	00000000 	.inst	0x00000000 ; undefined
     cec:	369c0100 	tbz	w0, #19, ffffffffffff8d0c <stdout_putp+0xffffffffffff6edc>
     cf0:	12000003 	and	w3, w0, #0x1
     cf4:	00003efc 	.inst	0x00003efc ; undefined
     cf8:	781a7101 	sturh	w1, [x8, #-89]
    bl irq_handler
     cfc:	02000000 	.inst	0x02000000 ; undefined
    context_restore
     d00:	f0126891 	adrp	x17, 24d13000 <stdout_putp+0x24d111d0>
     d04:	0100003e 	.inst	0x0100003e ; undefined
     d08:	008d2571 	.inst	0x008d2571 ; undefined
     d0c:	91020000 	add	x0, x0, #0x80
     d10:	006e0d60 	.inst	0x006e0d60 ; undefined
     d14:	7a2e7101 	.inst	0x7a2e7101 ; undefined
     d18:	02000000 	.inst	0x02000000 ; undefined
     d1c:	7a0d5c91 	.inst	0x7a0d5c91 ; undefined
     d20:	36710100 	tbz	w0, #14, 2d40 <stdout_putp+0xf10>
     d24:	000000af 	.inst	0x000000af ; undefined
     d28:	0d5b9102 	.inst	0x0d5b9102 ; undefined
     d2c:	01006662 	.inst	0x01006662 ; undefined
     d30:	012f3f71 	.inst	0x012f3f71 ; undefined
     d34:	91020000 	add	x0, x0, #0x80
     d38:	63660f50 	.inst	0x63660f50 ; undefined
     d3c:	0a730100 	bic	w0, w8, w19, lsr #0
     d40:	000000af 	.inst	0x000000af ; undefined
    eret
     d44:	0f779102 	.inst	0x0f779102 ; undefined
    mrs x0, mpidr_el1
     d48:	01006863 	.inst	0x01006863 ; undefined
    and x0, x0, #0xFF
     d4c:	00af0a74 	.inst	0x00af0a74 ; undefined
    cbnz x0, halt_proc
     d50:	91020000 	add	x0, x0, #0x80
    adr x0, __bss_start
     d54:	00700f76 	.inst	0x00700f76 ; undefined
    adr x1, __bss_end
     d58:	2f0b7501 	uqshl	v1.8b, v8.8b, #3
    sub x1, x1, x0
     d5c:	02000001 	.inst	0x02000001 ; undefined
    bl   memzero
     d60:	18007891 	ldr	w17, 1c70 <dump_regs+0xf4>
    bl el1_setup
     d64:	00693261 	.inst	0x00693261 ; undefined
    b   kernel_main
     d68:	af0d6201 	.inst	0xaf0d6201 ; undefined
    wfe
     d6c:	64000000 	.inst	0x64000000 ; undefined
    b halt_proc
     d70:	00000014 	.inst	0x00000014 ; undefined
    ldr x0, =(SCTLR_EL1_EE_LITTLE | SCTLR_EL1_E0E_LITTLE |\
     d74:	ac000000 	stnp	q0, q0, [x0]
    msr SCTLR_EL1, x0
     d78:	00000000 	.inst	0x00000000 ; undefined
    ldr x0, =(SCR_EL3_RW_AARCH64 | SCR_EL3_NS)
     d7c:	01000000 	.inst	0x01000000 ; undefined
    msr SCR_EL3, x0
     d80:	0003bf9c 	.inst	0x0003bf9c ; undefined
    ldr x0, =(HCR_EL2_RW_AARCH64)
     d84:	68630d00 	.inst	0x68630d00 ; undefined
    msr HCR_EL2, x0 
     d88:	16620100 	b	fffffffff9881188 <stdout_putp+0xfffffffff987f358>
    msr ELR_EL3, lr
     d8c:	000000af 	.inst	0x000000af ; undefined
    ldr x0, =(SPSR_MODE_EL1h | SPSR_MASK_EXCEPTIONS)
     d90:	0d6f9102 	.inst	0x0d6f9102 ; undefined
    msr SPSR_EL3, x0
     d94:	00637273 	.inst	0x00637273 ; undefined
    ldr x0, =STACK_BASE
     d98:	bf216201 	.inst	0xbf216201 ; undefined
    msr SP_EL1, x0
     d9c:	02000003 	.inst	0x02000003 ; undefined
    eret
     da0:	c5126091 	ldff1w	{z17.d}, p0/z, [x4, z18.d, uxtw]
     da4:	0100003e 	.inst	0x0100003e ; undefined
     da8:	007a2962 	.inst	0x007a2962 ; undefined
     dac:	91020000 	add	x0, x0, #0x80
     db0:	3eb01268 	.inst	0x3eb01268 ; undefined
     db4:	62010000 	.inst	0x62010000 ; undefined
     db8:	0003c533 	.inst	0x0003c533 ; undefined
     dbc:	58910200 	ldr	x0, fffffffffff22dfc <stdout_putp+0xfffffffffff20fcc>
     dc0:	0100700f 	.inst	0x0100700f ; undefined
     dc4:	012f0b64 	.inst	0x012f0b64 ; undefined
     dc8:	91020000 	add	x0, x0, #0x80
     dcc:	756e0f78 	.inst	0x756e0f78 ; undefined
    ldr x0, =vector_table
     dd0:	6501006d 	.inst	0x6501006d ; undefined
    msr VBAR_EL1, x0
     dd4:	00007a09 	.inst	0x00007a09 ; undefined
    ret
     dd8:	74910200 	.inst	0x74910200 ; undefined
    msr daifclr, #2
     ddc:	003f010b 	.inst	0x003f010b ; NYI
    ret
     de0:	09660100 	.inst	0x09660100 ; undefined
    msr daifset, #2
     de4:	0000007a 	.inst	0x0000007a ; undefined
    ret
     de8:	00709102 	.inst	0x00709102 ; undefined
     dec:	012f0807 	.inst	0x012f0807 ; undefined
     df0:	08070000 	stxrb	w7, w0, [x0]
     df4:	0000007a 	.inst	0x0000007a ; undefined
    str  xzr, [x0], #8
     df8:	64326119 	.inst	0x64326119 ; undefined
    subs x1, x1, #8
     dfc:	0c570100 	.inst	0x0c570100 ; undefined
    b.gt memzero
     e00:	0000007a 	.inst	0x0000007a ; undefined
    ret
     e04:	000013e4 	.inst	0x000013e4 ; undefined
{
     e08:	00000000 	.inst	0x00000000 ; undefined
     e0c:	00000080 	.inst	0x00000080 ; undefined
     e10:	00000000 	.inst	0x00000000 ; undefined
    init_uart();
     e14:	03fc9c01 	.inst	0x03fc9c01 ; undefined
    init_printf(0, putc);
     e18:	630d0000 	.inst	0x630d0000 ; undefined
     e1c:	57010068 	.inst	0x57010068 ; undefined
     e20:	0000af15 	.inst	0x0000af15 ; undefined
     e24:	7f910200 	.inst	0x7f910200 ; undefined
    printf("Core %d up at Exception level %d\n", get_core_id(), get_el());
     e28:	32691a00 	.inst	0x32691a00 ; undefined
     e2c:	4e010061 	tbl	v1.16b, {v3.16b}, v1.16b
     e30:	0013880d 	.inst	0x0013880d ; undefined
     e34:	00000000 	.inst	0x00000000 ; undefined
     e38:	00005c00 	.inst	0x00005c00 ; undefined
     e3c:	00000000 	.inst	0x00000000 ; undefined
     e40:	389c0100 	ldursb	x0, [x8, #-64]
     e44:	0d000004 	st1	{v4.b}[0], [x0]
    init_interrupts();
     e48:	006d756e 	.inst	0x006d756e ; undefined
        if(uart_read_available()){
     e4c:	7a164e01 	.inst	0x7a164e01 ; undefined
     e50:	02000000 	.inst	0x02000000 ; undefined
     e54:	620d7c91 	.inst	0x620d7c91 ; undefined
     e58:	4e010066 	tbl	v6.16b, {v3.16b}, v1.16b
            uart_write('\n');
     e5c:	00012f22 	.inst	0x00012f22 ; undefined
     e60:	70910200 	adr	x0, fffffffffff22ea3 <stdout_putp+0xfffffffffff21073>
            uart_write(uart_read());
     e64:	3ec01000 	.inst	0x3ec01000 ; undefined
     e68:	3c010000 	stur	b0, [x0, #16]
     e6c:	0012600d 	.inst	0x0012600d ; undefined
        if(uart_read_available()){
     e70:	00000000 	.inst	0x00000000 ; undefined
{
     e74:	00012800 	.inst	0x00012800 ; undefined
     e78:	00000000 	.inst	0x00000000 ; undefined
    mmio_write(CORE0_TIMER_IRQCNTL, TIMER3_IRQ);
     e7c:	cc9c0100 	.inst	0xcc9c0100 ; undefined
     e80:	0d000004 	st1	{v4.b}[0], [x0]
     e84:	006d756e 	.inst	0x006d756e ; undefined
     e88:	cc1f3c01 	.inst	0xcc1f3c01 ; undefined
}
     e8c:	02000004 	.inst	0x02000004 ; undefined
     e90:	c5126c91 	ldff1w	{z17.d}, p3/z, [x4, z18.d, uxtw]
     e94:	0100003e 	.inst	0x0100003e ; undefined
{
     e98:	04cc313c 	.inst	0x04cc313c ; undefined
     e9c:	91020000 	add	x0, x0, #0x80
    tmp = mmio_read(CORE0_IRQ_SOURCE);
     ea0:	63750d68 	.inst	0x63750d68 ; undefined
     ea4:	3b3c0100 	.inst	0x3b3c0100 ; undefined
     ea8:	0000007a 	.inst	0x0000007a ; undefined
     eac:	0d649102 	.inst	0x0d649102 ; undefined
    return tmp;
     eb0:	01006662 	.inst	0x01006662 ; undefined
}
     eb4:	012f453c 	.inst	0x012f453c ; undefined
     eb8:	91020000 	add	x0, x0, #0x80
{
     ebc:	006e0f58 	.inst	0x006e0f58 ; undefined
    cntv_ctl = 1;
     ec0:	7a093e01 	.inst	0x7a093e01 ; undefined
     ec4:	02000000 	.inst	0x02000000 ; undefined
	asm volatile ("msr cntv_ctl_el0, %0" :: "r" (cntv_ctl));
     ec8:	640f7c91 	.inst	0x640f7c91 ; undefined
     ecc:	123f0100 	and	w0, w8, #0x2
}
     ed0:	000004cc 	.inst	0x000004cc ; undefined
     ed4:	1b789102 	.inst	0x1b789102 ; undefined
     ed8:	000012b0 	.inst	0x000012b0 ; undefined
{
     edc:	00000000 	.inst	0x00000000 ; undefined
     ee0:	000000b8 	.inst	0x000000b8 ; undefined
	asm volatile ("msr cntv_tval_el0, %0" :: "r" (val));
     ee4:	00000000 	.inst	0x00000000 ; undefined
     ee8:	7467640f 	.inst	0x7467640f ; undefined
    return;
     eec:	0d430100 	.inst	0x0d430100 ; undefined
}
     ef0:	0000007a 	.inst	0x0000007a ; undefined
     ef4:	00749102 	.inst	0x00749102 ; undefined
{
     ef8:	07040a00 	.inst	0x07040a00 ; undefined
	asm volatile ("mrs %0, cntfrq_el0" : "=r" (val));
     efc:	00002043 	.inst	0x00002043 ; undefined
     f00:	0001c900 	.inst	0x0001c900 ; undefined
    return val;
     f04:	dd000400 	.inst	0xdd000400 ; undefined
}
     f08:	08000005 	stxrb	w0, w5, [x0]
     f0c:	00218901 	.inst	0x00218901 ; NYI
void init_systimer(){
     f10:	3f800c00 	.inst	0x3f800c00 ; undefined
     f14:	29f90000 	ldp	w0, w0, [x0, #-56]!
    systimer.ctr_frq = read_cntfrq();
     f18:	02b00000 	.inst	0x02b00000 ; undefined
	...
     f24:	0aaf0000 	bic	w0, w0, w15, asr #0
     f28:	0e4b0000 	.inst	0x0e4b0000 ; undefined
    write_cntv_tval(systimer.ctr_frq/TICKS_PER_SEC);
     f2c:	01020000 	.inst	0x01020000 ; undefined
     f30:	00233108 	.inst	0x00233108 ; NYI
     f34:	07020200 	.inst	0x07020200 ; undefined
     f38:	0000046c 	.inst	0x0000046c ; undefined
     f3c:	00367e03 	.inst	0x00367e03 ; NYI
     f40:	16050200 	b	fffffffff8141740 <stdout_putp+0xfffffffff813f910>
     f44:	00000047 	.inst	0x00000047 ; undefined
     f48:	43070402 	.inst	0x43070402 ; undefined
     f4c:	03000020 	.inst	0x03000020 ; undefined
    routing_core0cntv_to_core0irq();
     f50:	0000394b 	.inst	0x0000394b ; undefined
    enable_cntv();
     f54:	5a1c0602 	.inst	0x5a1c0602 ; undefined
}
     f58:	02000000 	.inst	0x02000000 ; undefined
     f5c:	0b550708 	add	w8, w24, w21, lsr #1
     f60:	01020000 	.inst	0x01020000 ; undefined
void systick_handler(){
     f64:	00212e06 	.inst	0x00212e06 ; NYI
     f68:	05020200 	orr	z0.d, z0.d, #0x1ffff
    write_cntv_tval(systimer.ctr_frq/TICKS_PER_SEC);
     f6c:	000005e5 	.inst	0x000005e5 ; undefined
     f70:	69050404 	stgp	x4, x1, [x0, #160]
     f74:	0200746e 	.inst	0x0200746e ; undefined
     f78:	17690508 	b	fffffffffda42398 <stdout_putp+0xfffffffffda40568>
     f7c:	4f050000 	.inst	0x4f050000 ; undefined
     f80:	0100003f 	.inst	0x0100003f ; undefined
     f84:	1b7c0626 	.inst	0x1b7c0626 ; undefined
     f88:	00000000 	.inst	0x00000000 ; undefined
     f8c:	01980000 	.inst	0x01980000 ; undefined
    systimer.num_ticks_since_boot++;
     f90:	00000000 	.inst	0x00000000 ; undefined
     f94:	9c010000 	ldr	q0, 2f94 <stdout_putp+0x1164>
     f98:	000000b9 	.inst	0x000000b9 ; undefined
     f9c:	01006906 	.inst	0x01006906 ; undefined
     fa0:	006f0928 	.inst	0x006f0928 ; undefined
     fa4:	91020000 	add	x0, x0, #0x80
     fa8:	3f54077c 	.inst	0x3f54077c ; undefined
    systimer.msec_ticks++;
     fac:	29010000 	stp	w0, w0, [x0, #8]
     fb0:	0000b90c 	.inst	0x0000b90c ; undefined
     fb4:	b8910300 	ldursw	x0, [x24, #-240]
     fb8:	4e08007d 	tbl	v29.16b, {v3.16b}, v8.16b
     fbc:	c9000000 	.inst	0xc9000000 ; undefined
     fc0:	09000000 	.inst	0x09000000 ; undefined
     fc4:	000000c9 	.inst	0x000000c9 ; undefined
    if(systimer.msec_ticks == TICKS_PER_SEC){
     fc8:	08020027 	stxrb	w2, w7, [x1]
     fcc:	00066b07 	.inst	0x00066b07 ; undefined
     fd0:	3f760a00 	.inst	0x3f760a00 ; undefined
     fd4:	21010000 	.inst	0x21010000 ; undefined
     fd8:	00003b0f 	.inst	0x00003b0f ; undefined
        systimer.msec_ticks = 0;
     fdc:	001b6400 	.inst	0x001b6400 ; undefined
     fe0:	00000000 	.inst	0x00000000 ; undefined
     fe4:	00001800 	.inst	0x00001800 ; undefined
        systimer.sec_since_boot++;
     fe8:	00000000 	.inst	0x00000000 ; undefined
     fec:	029c0100 	.inst	0x029c0100 ; undefined
     ff0:	0b000001 	add	w1, w0, w0
     ff4:	00676572 	.inst	0x00676572 ; undefined
     ff8:	3b202101 	.inst	0x3b202101 ; undefined
     ffc:	02000000 	.inst	0x02000000 ; undefined
    1000:	0c007c91 	st1	{v17.1d}, [x4]
    return;
    1004:	00003f65 	.inst	0x00003f65 ; undefined
    1008:	3c0d1c01 	str	b1, [x0, #209]!
}
    100c:	0000001b 	.inst	0x0000001b ; undefined
    1010:	28000000 	stnp	w0, w0, [x0]
int timer_intr_pending(uint32* irq_sts){
    1014:	00000000 	.inst	0x00000000 ; undefined
    1018:	01000000 	.inst	0x01000000 ; undefined
    101c:	00013f9c 	.inst	0x00013f9c ; undefined
    if(read_core0timer_pending() & TIMER3_IRQ)
    1020:	65720b00 	fmla	z0.h, p2/m, z24.h, z18.h
    1024:	1c010067 	ldr	s7, 3030 <stdout_putp+0x1200>
    1028:	00003b1f 	.inst	0x00003b1f ; undefined
    102c:	7c910200 	.inst	0x7c910200 ; undefined
        return 1;
    1030:	003e020d 	.inst	0x003e020d ; NYI
    1034:	2b1c0100 	adds	w0, w8, w28
}
    1038:	0000003b 	.inst	0x0000003b ; undefined
    103c:	00789102 	.inst	0x00789102 ; undefined
void init_systick_timer(uint64* irq_en){
    1040:	003f480e 	.inst	0x003f480e ; NYI
    1044:	05140100 	mov	z0.b, p4/z, #8
    1048:	0000006f 	.inst	0x0000006f ; undefined
    init_systimer();
    104c:	00001b20 	.inst	0x00001b20 ; undefined
}
    1050:	00000000 	.inst	0x00000000 ; undefined
    1054:	0000001c 	.inst	0x0000001c ; undefined
    1058:	00000000 	.inst	0x00000000 ; undefined
void enable_interrupts(uint64 irq_en){
    105c:	01709c01 	.inst	0x01709c01 ; undefined
    1060:	65060000 	.inst	0x65060000 ; undefined
    reg64* irq_en_reg = (reg64*)(ARM_INT_BASE + IRQ_EN_1_OFF);
    1064:	1501006c 	b	4041214 <stdout_putp+0x403f3e4>
    1068:	00006f09 	.inst	0x00006f09 ; undefined
    106c:	7c910200 	.inst	0x7c910200 ; undefined
    *irq_en_reg = irq_en;
    1070:	3f590e00 	.inst	0x3f590e00 ; undefined
    1074:	0c010000 	.inst	0x0c010000 ; undefined
    1078:	00006f05 	.inst	0x00006f05 ; undefined
}
    107c:	001b0400 	.inst	0x001b0400 ; undefined
    1080:	00000000 	.inst	0x00000000 ; undefined
    1084:	00001c00 	.inst	0x00001c00 ; undefined
void init_interrupts(){
    1088:	00000000 	.inst	0x00000000 ; undefined
    108c:	a29c0100 	.inst	0xa29c0100 ; undefined
    init_interrupts_base();
    1090:	07000001 	.inst	0x07000001 ; undefined
    init_systick_timer(&irq_en);
    1094:	00003f5d 	.inst	0x00003f5d ; undefined
    1098:	6f090d01 	.inst	0x6f090d01 ; undefined
    enable_interrupts(irq_en);
    109c:	02000000 	.inst	0x02000000 ; undefined
    10a0:	0f007c91 	.inst	0x0f007c91 ; undefined
    irq_enable();
    10a4:	00003f70 	.inst	0x00003f70 ; undefined
}
    10a8:	e4060401 	.inst	0xe4060401 ; undefined
    10ac:	0000001a 	.inst	0x0000001a ; undefined
    10b0:	20000000 	.inst	0x20000000 ; undefined
void irq_handler(){
    10b4:	00000000 	.inst	0x00000000 ; undefined
    10b8:	01000000 	.inst	0x01000000 ; undefined
    uint32* irq_sts = (unsigned int*)(ARM_INT_BASE + IRQ_BASIC_PENDING_OFF); 
    10bc:	3f920d9c 	.inst	0x3f920d9c ; undefined
    10c0:	04010000 	sub	z0.b, p0/m, z0.b, z0.b
    10c4:	00003b13 	.inst	0x00003b13 ; undefined
    if(timer_intr_pending(irq_sts)){
    10c8:	7c910200 	.inst	0x7c910200 ; undefined
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
{
   0:	25011101 	cmpge	p1.b, p4/z, z8.b, #1
    cntv_ctl = 0;
   4:	030b130e 	.inst	0x030b130e ; undefined
	asm volatile ("msr cntv_ctl_el0, %0" :: "r" (cntv_ctl));
   8:	550e1b0e 	.inst	0x550e1b0e ; undefined
   c:	10011117 	adr	x23, 222c <stdout_putp+0x3fc>
}
  10:	17429917 	b	fffffffffd0a646c <stdout_putp+0xfffffffffd0a463c>
  14:	24020000 	cmphs	p0.b, p0/z, z0.b, z2.b
  18:	3e0b0b00 	.inst	0x3e0b0b00 ; undefined
    {
  1c:	000e030b 	.inst	0x000e030b ; undefined
  20:	00350300 	.inst	0x00350300 ; NYI
  24:	00001349 	.inst	0x00001349 ; undefined
    va_start(va,fmt);
  28:	0b002404 	add	w4, w0, w0, lsl #9
  2c:	030b3e0b 	.inst	0x030b3e0b ; undefined
  30:	05000008 	orr	z8.s, z8.s, #0x1
  34:	0e030016 	tbl	v22.8b, {v0.16b}, v3.8b
  38:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
  3c:	13490b39 	.inst	0x13490b39 ; undefined
  40:	13060000 	sbfiz	w0, w0, #26, #1
  44:	0b0e0301 	add	w1, w24, w14
  48:	3b0b3a0b 	.inst	0x3b0b3a0b ; undefined
    tfp_format(&s,putcp,fmt,va);
  4c:	010b390b 	.inst	0x010b390b ; undefined
  50:	07000013 	.inst	0x07000013 ; undefined
  54:	0e03000d 	tbl	v13.8b, {v0.16b}, v3.8b
  58:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
  5c:	13490b39 	.inst	0x13490b39 ; undefined
  60:	00000b38 	.inst	0x00000b38 ; undefined
  64:	03003408 	.inst	0x03003408 ; undefined
  68:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
  6c:	490b390b 	.inst	0x490b390b ; undefined
  70:	3c193f13 	str	b19, [x24, #-109]!
  74:	09000019 	.inst	0x09000019 ; undefined
  78:	0b0b000f 	add	w15, w0, w11
  7c:	00001349 	.inst	0x00001349 ; undefined
  80:	3f002e0a 	.inst	0x3f002e0a ; undefined
    putcp(&s,0);
  84:	3a0e0319 	adcs	w25, w24, w14
  88:	390b3b0b 	strb	w11, [x24, #718]
  8c:	1201110b 	and	w11, w8, #0x8000000f
    }
  90:	96184007 	bl	fffffffff86100ac <stdout_putp+0xfffffffff860e27c>
  94:	00001942 	.inst	0x00001942 ; undefined
  98:	00110100 	.inst	0x00110100 ; undefined
    vtable_entry    irq_cur_el_sp0
  9c:	06550610 	.inst	0x06550610 ; undefined
  a0:	0e1b0e03 	dup	v3.8b, w16
  a4:	05130e25 	mov	z5.b, p3/z, #113
  a8:	01000000 	.inst	0x01000000 ; undefined
  ac:	0e250111 	saddl	v17.8h, v8.8b, v5.8b
  b0:	0e030b13 	.inst	0x0e030b13 ; undefined
  b4:	17550e1b 	b	fffffffffd543920 <stdout_putp+0xfffffffffd541af0>
  b8:	17100111 	b	fffffffffc4004fc <stdout_putp+0xfffffffffc3fe6cc>
  bc:	00174299 	.inst	0x00174299 ; undefined
  c0:	00240200 	.inst	0x00240200 ; NYI
  c4:	0b3e0b0b 	add	w11, w24, w30, uxtb #2
  c8:	00000e03 	.inst	0x00000e03 ; undefined
  cc:	03001603 	.inst	0x03001603 ; undefined
  d0:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
  d4:	490b390b 	.inst	0x490b390b ; undefined
  d8:	04000013 	add	z19.b, p0/m, z19.b, z0.b
  dc:	0b0b0024 	add	w4, w1, w11
  e0:	08030b3e 	stxrb	w3, w30, [x25]
  e4:	13050000 	sbfiz	w0, w0, #27, #1
  e8:	3c0e0300 	stur	b0, [x24, #224]
  ec:	06000019 	.inst	0x06000019 ; undefined
  f0:	0e030113 	tbl	v19.8b, {v8.16b}, v3.8b
  f4:	0b3a0b0b 	add	w11, w24, w26, uxtb #2
  f8:	0b390b3b 	add	w27, w25, w25, uxtb #2
  fc:	00001301 	.inst	0x00001301 ; undefined
    vtable_entry    fiq_cur_el_sp0
 100:	03000d07 	.inst	0x03000d07 ; undefined
 104:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
 108:	490b390b 	.inst	0x490b390b ; undefined
 10c:	000b3813 	.inst	0x000b3813 ; undefined
 110:	000f0800 	.inst	0x000f0800 ; undefined
 114:	13490b0b 	.inst	0x13490b0b ; undefined
 118:	34090000 	cbz	w0, 12118 <stdout_putp+0x102e8>
 11c:	3a0e0300 	adcs	w0, w24, w14
 120:	390b3b0b 	strb	w11, [x24, #718]
 124:	3f13490b 	.inst	0x3f13490b ; undefined
 128:	00180219 	.inst	0x00180219 ; undefined
 12c:	012e0a00 	.inst	0x012e0a00 ; undefined
 130:	0e03193f 	uzp1	v31.8b, v9.8b, v3.8b
 134:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 138:	19270b39 	.inst	0x19270b39 ; undefined
 13c:	01111349 	.inst	0x01111349 ; undefined
 140:	18400712 	ldr	w18, 80220 <stdout_putp+0x7e3f0>
 144:	01194296 	.inst	0x01194296 ; undefined
 148:	0b000013 	add	w19, w0, w0
 14c:	0e030005 	tbl	v5.8b, {v0.16b}, v3.8b
 150:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 154:	13490b39 	.inst	0x13490b39 ; undefined
 158:	00001802 	.inst	0x00001802 ; undefined
 15c:	3f002e0c 	.inst	0x3f002e0c ; undefined
 160:	3a0e0319 	adcs	w25, w24, w14
 164:	390b3b0b 	strb	w11, [x24, #718]
 168:	1201110b 	and	w11, w8, #0x8000000f
 16c:	96184007 	bl	fffffffff8610188 <stdout_putp+0xfffffffff860e358>
 170:	00001942 	.inst	0x00001942 ; undefined
 174:	3f012e0d 	.inst	0x3f012e0d ; undefined
 178:	3a0e0319 	adcs	w25, w24, w14
 17c:	390b3b0b 	strb	w11, [x24, #718]
    vtable_entry    serror_cur_el_sp0
 180:	4919270b 	.inst	0x4919270b ; undefined
 184:	12011113 	and	w19, w8, #0x8000000f
 188:	97184007 	bl	fffffffffc6101a4 <stdout_putp+0xfffffffffc60e374>
 18c:	13011942 	sbfx	w2, w10, #1, #6
 190:	340e0000 	cbz	w0, 1c190 <stdout_putp+0x1a360>
 194:	3a080300 	adcs	w0, w24, w8
 198:	390b3b0b 	strb	w11, [x24, #718]
 19c:	0213490b 	.inst	0x0213490b ; undefined
 1a0:	0f000018 	.inst	0x0f000018 ; undefined
 1a4:	193f012e 	.inst	0x193f012e ; undefined
 1a8:	0b3a0e03 	add	w3, w16, w26, uxtb #3
 1ac:	0b390b3b 	add	w27, w25, w25, uxtb #2
 1b0:	01111927 	.inst	0x01111927 ; undefined
 1b4:	18400712 	ldr	w18, 80294 <stdout_putp+0x7e464>
 1b8:	01194297 	.inst	0x01194297 ; undefined
 1bc:	10000013 	adr	x19, 1bc <vector_table+0x1bc>
 1c0:	08030005 	stxrb	w3, w5, [x0]
 1c4:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 1c8:	13490b39 	.inst	0x13490b39 ; undefined
 1cc:	00001802 	.inst	0x00001802 ; undefined
 1d0:	03003411 	.inst	0x03003411 ; undefined
 1d4:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
 1d8:	490b390b 	.inst	0x490b390b ; undefined
 1dc:	00180213 	.inst	0x00180213 ; undefined
 1e0:	002e1200 	.inst	0x002e1200 ; NYI
 1e4:	0e03193f 	uzp1	v31.8b, v9.8b, v3.8b
 1e8:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 1ec:	19270b39 	.inst	0x19270b39 ; undefined
 1f0:	07120111 	.inst	0x07120111 ; undefined
 1f4:	42961840 	.inst	0x42961840 ; undefined
 1f8:	00000019 	.inst	0x00000019 ; undefined
 1fc:	25011101 	cmpge	p1.b, p4/z, z8.b, #1
    vtable_entry    sync_cur_el_spx
 200:	030b130e 	.inst	0x030b130e ; undefined
 204:	550e1b0e 	.inst	0x550e1b0e ; undefined
 208:	10011117 	adr	x23, 2428 <stdout_putp+0x5f8>
 20c:	17429917 	b	fffffffffd0a6668 <stdout_putp+0xfffffffffd0a4838>
 210:	24020000 	cmphs	p0.b, p0/z, z0.b, z2.b
 214:	3e0b0b00 	.inst	0x3e0b0b00 ; undefined
 218:	0008030b 	.inst	0x0008030b ; undefined
 21c:	00240300 	.inst	0x00240300 ; NYI
 220:	0b3e0b0b 	add	w11, w24, w30, uxtb #2
 224:	00000e03 	.inst	0x00000e03 ; undefined
 228:	03001604 	.inst	0x03001604 ; undefined
 22c:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
 230:	490b390b 	.inst	0x490b390b ; undefined
 234:	05000013 	orr	z19.s, z19.s, #0x1
 238:	13490035 	.inst	0x13490035 ; undefined
 23c:	2e060000 	ext	v0.8b, v0.8b, v6.8b, #0
 240:	03193f01 	.inst	0x03193f01 ; undefined
 244:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
 248:	110b390b 	add	w11, w8, #0x2ce
 24c:	40071201 	.inst	0x40071201 ; undefined
 250:	19429618 	.inst	0x19429618 ; undefined
 254:	00001301 	.inst	0x00001301 ; undefined
 258:	03003407 	.inst	0x03003407 ; undefined
 25c:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
 260:	490b390b 	.inst	0x490b390b ; undefined
 264:	00180213 	.inst	0x00180213 ; undefined
 268:	000f0800 	.inst	0x000f0800 ; undefined
 26c:	13490b0b 	.inst	0x13490b0b ; undefined
 270:	2e090000 	ext	v0.8b, v0.8b, v9.8b, #0
 274:	03193f01 	.inst	0x03193f01 ; undefined
 278:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
 27c:	270b390b 	.inst	0x270b390b ; undefined
    vtable_entry    irq_cur_el_spx
 280:	12011119 	and	w25, w8, #0x8000000f
 284:	97184007 	bl	fffffffffc6102a0 <stdout_putp+0xfffffffffc60e470>
 288:	13011942 	sbfx	w2, w10, #1, #6
 28c:	050a0000 	.inst	0x050a0000 ; undefined
 290:	3a0e0300 	adcs	w0, w24, w14
 294:	390b3b0b 	strb	w11, [x24, #718]
 298:	0213490b 	.inst	0x0213490b ; undefined
 29c:	0b000018 	add	w24, w0, w0
 2a0:	193f012e 	.inst	0x193f012e ; undefined
 2a4:	0b3a0e03 	add	w3, w16, w26, uxtb #3
 2a8:	0b390b3b 	add	w27, w25, w25, uxtb #2
 2ac:	01111927 	.inst	0x01111927 ; undefined
 2b0:	18400712 	ldr	w18, 80390 <stdout_putp+0x7e560>
 2b4:	01194296 	.inst	0x01194296 ; undefined
 2b8:	00000013 	.inst	0x00000013 ; undefined
 2bc:	10001101 	adr	x1, 4dc <vector_table+0x4dc>
 2c0:	12011106 	and	w6, w8, #0x8000000f
 2c4:	1b0e0301 	madd	w1, w24, w14, w0
 2c8:	130e250e 	sbfiz	w14, w8, #18, #10
 2cc:	00000005 	.inst	0x00000005 ; undefined
 2d0:	10001101 	adr	x1, 4f0 <vector_table+0x4f0>
 2d4:	12011106 	and	w6, w8, #0x8000000f
 2d8:	1b0e0301 	madd	w1, w24, w14, w0
 2dc:	130e250e 	sbfiz	w14, w8, #18, #10
 2e0:	00000005 	.inst	0x00000005 ; undefined
 2e4:	25011101 	cmpge	p1.b, p4/z, z8.b, #1
 2e8:	030b130e 	.inst	0x030b130e ; undefined
 2ec:	550e1b0e 	.inst	0x550e1b0e ; undefined
 2f0:	10011117 	adr	x23, 2510 <stdout_putp+0x6e0>
 2f4:	17429917 	b	fffffffffd0a6750 <stdout_putp+0xfffffffffd0a4920>
 2f8:	16020000 	b	fffffffff80802f8 <stdout_putp+0xfffffffff807e4c8>
 2fc:	3a0e0300 	adcs	w0, w24, w14
    vtable_entry    fiq_cur_el_spx
 300:	390b3b0b 	strb	w11, [x24, #718]
 304:	0013490b 	.inst	0x0013490b ; undefined
 308:	00240300 	.inst	0x00240300 ; NYI
 30c:	0b3e0b0b 	add	w11, w24, w30, uxtb #2
 310:	00000e03 	.inst	0x00000e03 ; undefined
 314:	49003504 	.inst	0x49003504 ; undefined
 318:	05000013 	orr	z19.s, z19.s, #0x1
 31c:	0b0b0024 	add	w4, w1, w11
 320:	08030b3e 	stxrb	w3, w30, [x25]
 324:	13060000 	sbfiz	w0, w0, #26, #1
 328:	0b0e0301 	add	w1, w24, w14
 32c:	3b0b3a0b 	.inst	0x3b0b3a0b ; undefined
 330:	010b390b 	.inst	0x010b390b ; undefined
 334:	07000013 	.inst	0x07000013 ; undefined
 338:	0e03000d 	tbl	v13.8b, {v0.16b}, v3.8b
 33c:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 340:	13490b39 	.inst	0x13490b39 ; undefined
 344:	00000b38 	.inst	0x00000b38 ; undefined
 348:	03003408 	.inst	0x03003408 ; undefined
 34c:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
 350:	490b390b 	.inst	0x490b390b ; undefined
 354:	3c193f13 	str	b19, [x24, #-109]!
 358:	09000019 	.inst	0x09000019 ; undefined
 35c:	0b0b000f 	add	w15, w0, w11
 360:	00001349 	.inst	0x00001349 ; undefined
 364:	4700340a 	.inst	0x4700340a ; undefined
 368:	3b0b3a13 	.inst	0x3b0b3a13 ; undefined
 36c:	020b390b 	.inst	0x020b390b ; undefined
 370:	0b000018 	add	w24, w0, w0
 374:	193f012e 	.inst	0x193f012e ; undefined
 378:	0b3a0e03 	add	w3, w16, w26, uxtb #3
 37c:	0b390b3b 	add	w27, w25, w25, uxtb #2
    vtable_entry    serror_cur_el_spx
 380:	01111927 	.inst	0x01111927 ; undefined
 384:	18400712 	ldr	w18, 80464 <stdout_putp+0x7e634>
 388:	01194296 	.inst	0x01194296 ; undefined
 38c:	0c000013 	st4	{v19.8b-v22.8b}, [x0]
 390:	08030005 	stxrb	w3, w5, [x0]
 394:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 398:	13490b39 	.inst	0x13490b39 ; undefined
 39c:	00001802 	.inst	0x00001802 ; undefined
 3a0:	0300050d 	.inst	0x0300050d ; undefined
 3a4:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
 3a8:	490b390b 	.inst	0x490b390b ; undefined
 3ac:	00180213 	.inst	0x00180213 ; undefined
 3b0:	012e0e00 	.inst	0x012e0e00 ; undefined
 3b4:	0e03193f 	uzp1	v31.8b, v9.8b, v3.8b
 3b8:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 3bc:	19270b39 	.inst	0x19270b39 ; undefined
 3c0:	07120111 	.inst	0x07120111 ; undefined
 3c4:	42971840 	.inst	0x42971840 ; undefined
 3c8:	00130119 	.inst	0x00130119 ; undefined
 3cc:	012e0f00 	.inst	0x012e0f00 ; undefined
 3d0:	0e03193f 	uzp1	v31.8b, v9.8b, v3.8b
 3d4:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 3d8:	13490b39 	.inst	0x13490b39 ; undefined
 3dc:	07120111 	.inst	0x07120111 ; undefined
 3e0:	42971840 	.inst	0x42971840 ; undefined
 3e4:	00130119 	.inst	0x00130119 ; undefined
 3e8:	00341000 	.inst	0x00341000 ; NYI
 3ec:	0b3a0e03 	add	w3, w16, w26, uxtb #3
 3f0:	0b390b3b 	add	w27, w25, w25, uxtb #2
 3f4:	18021349 	ldr	w9, 465c <stdout_putp+0x282c>
 3f8:	2e110000 	ext	v0.8b, v0.8b, v17.8b, #0
 3fc:	03193f00 	.inst	0x03193f00 ; undefined
    vtable_entry    sync_lower_el_a64
 400:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
 404:	490b390b 	.inst	0x490b390b ; undefined
 408:	12011113 	and	w19, w8, #0x8000000f
 40c:	97184007 	bl	fffffffffc610428 <stdout_putp+0xfffffffffc60e5f8>
 410:	00001942 	.inst	0x00001942 ; undefined
 414:	3f002e12 	.inst	0x3f002e12 ; undefined
 418:	3a0e0319 	adcs	w25, w24, w14
 41c:	390b3b0b 	strb	w11, [x24, #718]
 420:	1201110b 	and	w11, w8, #0x8000000f
 424:	96184007 	bl	fffffffff8610440 <stdout_putp+0xfffffffff860e610>
 428:	00001942 	.inst	0x00001942 ; undefined
 42c:	01110100 	.inst	0x01110100 ; undefined
 430:	0b130e25 	add	w5, w17, w19, lsl #3
 434:	0e1b0e03 	dup	v3.8b, w16
 438:	01111755 	.inst	0x01111755 ; undefined
 43c:	42991710 	.inst	0x42991710 ; undefined
 440:	02000017 	.inst	0x02000017 ; undefined
 444:	0e030016 	tbl	v22.8b, {v0.16b}, v3.8b
 448:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 44c:	13490b39 	.inst	0x13490b39 ; undefined
 450:	13030000 	sbfiz	w0, w0, #29, #1
 454:	0b0e0301 	add	w1, w24, w14
 458:	3b0b3a0b 	.inst	0x3b0b3a0b ; undefined
 45c:	0013010b 	.inst	0x0013010b ; undefined
 460:	000d0400 	.inst	0x000d0400 ; undefined
 464:	13490e03 	.inst	0x13490e03 ; undefined
 468:	19340b38 	.inst	0x19340b38 ; undefined
 46c:	0f050000 	.inst	0x0f050000 ; undefined
 470:	000b0b00 	.inst	0x000b0b00 ; undefined
 474:	00240600 	.inst	0x00240600 ; NYI
 478:	0b3e0b0b 	add	w11, w24, w30, uxtb #2
 47c:	00000803 	.inst	0x00000803 ; undefined
    vtable_entry    irq_lower_el_a64
 480:	0b000f07 	add	w7, w24, w0, lsl #3
 484:	0013490b 	.inst	0x0013490b ; undefined
 488:	01150800 	.inst	0x01150800 ; undefined
 48c:	13011927 	sbfx	w7, w9, #1, #6
 490:	05090000 	.inst	0x05090000 ; undefined
 494:	00134900 	.inst	0x00134900 ; undefined
 498:	00240a00 	.inst	0x00240a00 ; NYI
 49c:	0b3e0b0b 	add	w11, w24, w30, uxtb #2
 4a0:	00000e03 	.inst	0x00000e03 ; undefined
 4a4:	0300340b 	.inst	0x0300340b ; undefined
 4a8:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
 4ac:	490b390b 	.inst	0x490b390b ; undefined
 4b0:	00180213 	.inst	0x00180213 ; undefined
 4b4:	012e0c00 	.inst	0x012e0c00 ; undefined
 4b8:	0e03193f 	uzp1	v31.8b, v9.8b, v3.8b
 4bc:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 4c0:	19270b39 	.inst	0x19270b39 ; undefined
 4c4:	07120111 	.inst	0x07120111 ; undefined
 4c8:	42961840 	.inst	0x42961840 ; undefined
 4cc:	00130119 	.inst	0x00130119 ; undefined
 4d0:	00050d00 	.inst	0x00050d00 ; undefined
 4d4:	0b3a0803 	add	w3, w0, w26, uxtb #2
 4d8:	0b390b3b 	add	w27, w25, w25, uxtb #2
 4dc:	18021349 	ldr	w9, 4744 <stdout_putp+0x2914>
 4e0:	180e0000 	ldr	w0, 1c4e0 <stdout_putp+0x1a6b0>
 4e4:	0f000000 	.inst	0x0f000000 ; undefined
 4e8:	08030034 	stxrb	w3, w20, [x1]
 4ec:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 4f0:	13490b39 	.inst	0x13490b39 ; undefined
 4f4:	00001802 	.inst	0x00001802 ; undefined
 4f8:	03012e10 	.inst	0x03012e10 ; undefined
 4fc:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
    vtable_entry    fiq_lower_el_a64
 500:	270b390b 	.inst	0x270b390b ; undefined
 504:	12011119 	and	w25, w8, #0x8000000f
 508:	97184007 	bl	fffffffffc610524 <stdout_putp+0xfffffffffc60e6f4>
 50c:	13011942 	sbfx	w2, w10, #1, #6
 510:	2e110000 	ext	v0.8b, v0.8b, v17.8b, #0
 514:	03193f01 	.inst	0x03193f01 ; undefined
 518:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
 51c:	270b390b 	.inst	0x270b390b ; undefined
 520:	12011119 	and	w25, w8, #0x8000000f
 524:	97184007 	bl	fffffffffc610540 <stdout_putp+0xfffffffffc60e710>
 528:	13011942 	sbfx	w2, w10, #1, #6
 52c:	05120000 	mov	z0.b, p2/z, #0
 530:	3a0e0300 	adcs	w0, w24, w14
 534:	390b3b0b 	strb	w11, [x24, #718]
 538:	0213490b 	.inst	0x0213490b ; undefined
 53c:	13000018 	sbfx	w24, w0, #0, #1
 540:	0e03000a 	tbl	v10.8b, {v0.16b}, v3.8b
 544:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 548:	01110b39 	.inst	0x01110b39 ; undefined
 54c:	0b140000 	add	w0, w0, w20
 550:	00175501 	.inst	0x00175501 ; undefined
 554:	01011500 	.inst	0x01011500 ; undefined
 558:	13011349 	sbfx	w9, w26, #1, #4
 55c:	21160000 	.inst	0x21160000 ; undefined
 560:	2f134900 	.inst	0x2f134900 ; undefined
 564:	1700000b 	b	fffffffffc000590 <stdout_putp+0xfffffffffbffe760>
 568:	0e03012e 	tbl	v14.8b, {v9.16b}, v3.8b
 56c:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 570:	19270b39 	.inst	0x19270b39 ; undefined
 574:	07120111 	.inst	0x07120111 ; undefined
 578:	42961840 	.inst	0x42961840 ; undefined
 57c:	00130119 	.inst	0x00130119 ; undefined
    vtable_entry    serror_lower_el_a64
 580:	012e1800 	.inst	0x012e1800 ; undefined
 584:	0b3a0803 	add	w3, w0, w26, uxtb #2
 588:	0b390b3b 	add	w27, w25, w25, uxtb #2
 58c:	13491927 	.inst	0x13491927 ; undefined
 590:	07120111 	.inst	0x07120111 ; undefined
 594:	42961840 	.inst	0x42961840 ; undefined
 598:	00130119 	.inst	0x00130119 ; undefined
 59c:	012e1900 	.inst	0x012e1900 ; undefined
 5a0:	0b3a0803 	add	w3, w0, w26, uxtb #2
 5a4:	0b390b3b 	add	w27, w25, w25, uxtb #2
 5a8:	13491927 	.inst	0x13491927 ; undefined
 5ac:	07120111 	.inst	0x07120111 ; undefined
 5b0:	42971840 	.inst	0x42971840 ; undefined
 5b4:	00130119 	.inst	0x00130119 ; undefined
 5b8:	012e1a00 	.inst	0x012e1a00 ; undefined
 5bc:	0b3a0803 	add	w3, w0, w26, uxtb #2
 5c0:	0b390b3b 	add	w27, w25, w25, uxtb #2
 5c4:	01111927 	.inst	0x01111927 ; undefined
 5c8:	18400712 	ldr	w18, 806a8 <stdout_putp+0x7e878>
 5cc:	01194296 	.inst	0x01194296 ; undefined
 5d0:	1b000013 	madd	w19, w0, w0, w0
 5d4:	0111010b 	.inst	0x0111010b ; undefined
 5d8:	00000712 	.inst	0x00000712 ; undefined
 5dc:	01110100 	.inst	0x01110100 ; undefined
 5e0:	0b130e25 	add	w5, w17, w19, lsl #3
 5e4:	0e1b0e03 	dup	v3.8b, w16
 5e8:	01111755 	.inst	0x01111755 ; undefined
 5ec:	42991710 	.inst	0x42991710 ; undefined
 5f0:	02000017 	.inst	0x02000017 ; undefined
 5f4:	0b0b0024 	add	w4, w1, w11
 5f8:	0e030b3e 	.inst	0x0e030b3e ; undefined
 5fc:	16030000 	b	fffffffff80c05fc <stdout_putp+0xfffffffff80be7cc>
    vtable_entry    sync_lower_el_a32
 600:	3a0e0300 	adcs	w0, w24, w14
 604:	390b3b0b 	strb	w11, [x24, #718]
 608:	0013490b 	.inst	0x0013490b ; undefined
 60c:	00240400 	.inst	0x00240400 ; NYI
 610:	0b3e0b0b 	add	w11, w24, w30, uxtb #2
 614:	00000803 	.inst	0x00000803 ; undefined
 618:	3f012e05 	.inst	0x3f012e05 ; undefined
 61c:	3a0e0319 	adcs	w25, w24, w14
 620:	390b3b0b 	strb	w11, [x24, #718]
 624:	1201110b 	and	w11, w8, #0x8000000f
 628:	96184007 	bl	fffffffff8610644 <stdout_putp+0xfffffffff860e814>
 62c:	13011942 	sbfx	w2, w10, #1, #6
 630:	34060000 	cbz	w0, c630 <stdout_putp+0xa800>
 634:	3a080300 	adcs	w0, w24, w8
 638:	390b3b0b 	strb	w11, [x24, #718]
 63c:	0213490b 	.inst	0x0213490b ; undefined
 640:	07000018 	.inst	0x07000018 ; undefined
 644:	0e030034 	tbl	v20.8b, {v1.16b}, v3.8b
 648:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 64c:	13490b39 	.inst	0x13490b39 ; undefined
 650:	00001802 	.inst	0x00001802 ; undefined
 654:	49010108 	.inst	0x49010108 ; undefined
 658:	00130113 	.inst	0x00130113 ; undefined
 65c:	00210900 	.inst	0x00210900 ; NYI
 660:	0b2f1349 	add	w9, w26, w15, uxtb #4
 664:	2e0a0000 	ext	v0.8b, v0.8b, v10.8b, #0
 668:	03193f01 	.inst	0x03193f01 ; undefined
 66c:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
 670:	270b390b 	.inst	0x270b390b ; undefined
 674:	11134919 	add	w25, w8, #0x4d2
 678:	40071201 	.inst	0x40071201 ; undefined
 67c:	19429718 	.inst	0x19429718 ; undefined
    vtable_entry    irq_lower_el_a32 
 680:	00001301 	.inst	0x00001301 ; undefined
 684:	0300050b 	.inst	0x0300050b ; undefined
 688:	3b0b3a08 	.inst	0x3b0b3a08 ; undefined
 68c:	490b390b 	.inst	0x490b390b ; undefined
 690:	00180213 	.inst	0x00180213 ; undefined
 694:	012e0c00 	.inst	0x012e0c00 ; undefined
 698:	0e03193f 	uzp1	v31.8b, v9.8b, v3.8b
 69c:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 6a0:	19270b39 	.inst	0x19270b39 ; undefined
 6a4:	07120111 	.inst	0x07120111 ; undefined
 6a8:	42971840 	.inst	0x42971840 ; undefined
 6ac:	00130119 	.inst	0x00130119 ; undefined
 6b0:	00050d00 	.inst	0x00050d00 ; undefined
 6b4:	0b3a0e03 	add	w3, w16, w26, uxtb #3
 6b8:	0b390b3b 	add	w27, w25, w25, uxtb #2
 6bc:	18021349 	ldr	w9, 4924 <stdout_putp+0x2af4>
 6c0:	2e0e0000 	ext	v0.8b, v0.8b, v14.8b, #0
 6c4:	03193f01 	.inst	0x03193f01 ; undefined
 6c8:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
 6cc:	490b390b 	.inst	0x490b390b ; undefined
 6d0:	12011113 	and	w19, w8, #0x8000000f
 6d4:	97184007 	bl	fffffffffc6106f0 <stdout_putp+0xfffffffffc60e8c0>
 6d8:	13011942 	sbfx	w2, w10, #1, #6
 6dc:	2e0f0000 	ext	v0.8b, v0.8b, v15.8b, #0
 6e0:	03193f01 	.inst	0x03193f01 ; undefined
 6e4:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
 6e8:	270b390b 	.inst	0x270b390b ; undefined
 6ec:	12011119 	and	w25, w8, #0x8000000f
 6f0:	97184007 	bl	fffffffffc61070c <stdout_putp+0xfffffffffc60e8dc>
 6f4:	00001942 	.inst	0x00001942 ; undefined
	...

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
{
   0:	0000002c 	.inst	0x0000002c ; undefined
    cntv_ctl = 0;
   4:	00000002 	.inst	0x00000002 ; undefined
	asm volatile ("msr cntv_ctl_el0, %0" :: "r" (cntv_ctl));
   8:	00080000 	.inst	0x00080000 ; undefined
   c:	00000000 	.inst	0x00000000 ; undefined
}
  10:	00000e08 	.inst	0x00000e08 ; undefined
  14:	00000000 	.inst	0x00000000 ; undefined
  18:	0000006c 	.inst	0x0000006c ; undefined
	...
    va_start(va,fmt);
  30:	0000003c 	.inst	0x0000003c ; undefined
  34:	015e0002 	.inst	0x015e0002 ; undefined
  38:	00080000 	.inst	0x00080000 ; undefined
	...
  48:	00000d48 	.inst	0x00000d48 ; undefined
    tfp_format(&s,putcp,fmt,va);
  4c:	00000000 	.inst	0x00000000 ; undefined
  50:	00000dd0 	.inst	0x00000dd0 ; undefined
  54:	00000000 	.inst	0x00000000 ; undefined
  58:	00000028 	.inst	0x00000028 ; undefined
	...
  70:	000000cc 	.inst	0x000000cc ; undefined
  74:	01800002 	.inst	0x01800002 ; undefined
  78:	00080000 	.inst	0x00080000 ; undefined
  7c:	00000000 	.inst	0x00000000 ; undefined
  80:	00000e74 	.inst	0x00000e74 ; undefined
    putcp(&s,0);
  84:	00000000 	.inst	0x00000000 ; undefined
  88:	00000024 	.inst	0x00000024 ; undefined
  8c:	00000000 	.inst	0x00000000 ; undefined
    }
  90:	00000e98 	.inst	0x00000e98 ; undefined
  94:	00000000 	.inst	0x00000000 ; undefined
  98:	00000024 	.inst	0x00000024 ; undefined
    vtable_entry    irq_cur_el_sp0
  9c:	00000000 	.inst	0x00000000 ; undefined
  a0:	00000ebc 	.inst	0x00000ebc ; undefined
  a4:	00000000 	.inst	0x00000000 ; undefined
  a8:	00000020 	.inst	0x00000020 ; undefined
	...
  b8:	0000001c 	.inst	0x0000001c ; undefined
	...
  c8:	00000018 	.inst	0x00000018 ; undefined
	...
  d8:	00000018 	.inst	0x00000018 ; undefined
  dc:	00000000 	.inst	0x00000000 ; undefined
  e0:	00000edc 	.inst	0x00000edc ; undefined
  e4:	00000000 	.inst	0x00000000 ; undefined
  e8:	0000001c 	.inst	0x0000001c ; undefined
  ec:	00000000 	.inst	0x00000000 ; undefined
  f0:	00000ef8 	.inst	0x00000ef8 ; undefined
  f4:	00000000 	.inst	0x00000000 ; undefined
  f8:	00000018 	.inst	0x00000018 ; undefined
  fc:	00000000 	.inst	0x00000000 ; undefined
    vtable_entry    fiq_cur_el_sp0
 100:	00000f10 	.inst	0x00000f10 ; undefined
 104:	00000000 	.inst	0x00000000 ; undefined
 108:	00000054 	.inst	0x00000054 ; undefined
 10c:	00000000 	.inst	0x00000000 ; undefined
 110:	00000f64 	.inst	0x00000f64 ; undefined
 114:	00000000 	.inst	0x00000000 ; undefined
 118:	000000b0 	.inst	0x000000b0 ; undefined
 11c:	00000000 	.inst	0x00000000 ; undefined
 120:	00001014 	.inst	0x00001014 ; undefined
 124:	00000000 	.inst	0x00000000 ; undefined
 128:	0000002c 	.inst	0x0000002c ; undefined
	...
 140:	0000005c 	.inst	0x0000005c ; undefined
 144:	045f0002 	.inst	0x045f0002 ; undefined
 148:	00080000 	.inst	0x00080000 ; undefined
 14c:	00000000 	.inst	0x00000000 ; undefined
 150:	00001040 	.inst	0x00001040 ; undefined
 154:	00000000 	.inst	0x00000000 ; undefined
 158:	0000001c 	.inst	0x0000001c ; undefined
 15c:	00000000 	.inst	0x00000000 ; undefined
 160:	0000105c 	.inst	0x0000105c ; undefined
 164:	00000000 	.inst	0x00000000 ; undefined
 168:	0000002c 	.inst	0x0000002c ; undefined
 16c:	00000000 	.inst	0x00000000 ; undefined
 170:	00001088 	.inst	0x00001088 ; undefined
 174:	00000000 	.inst	0x00000000 ; undefined
 178:	0000002c 	.inst	0x0000002c ; undefined
 17c:	00000000 	.inst	0x00000000 ; undefined
    vtable_entry    serror_cur_el_sp0
 180:	000010b4 	.inst	0x000010b4 ; undefined
 184:	00000000 	.inst	0x00000000 ; undefined
 188:	00000040 	.inst	0x00000040 ; undefined
	...
 1a0:	0000002c 	.inst	0x0000002c ; undefined
 1a4:	05c70002 	.inst	0x05c70002 ; undefined
 1a8:	00080000 	.inst	0x00080000 ; undefined
 1ac:	00000000 	.inst	0x00000000 ; undefined
 1b0:	00000d48 	.inst	0x00000d48 ; undefined
 1b4:	00000000 	.inst	0x00000000 ; undefined
 1b8:	00000088 	.inst	0x00000088 ; undefined
	...
 1d0:	0000002c 	.inst	0x0000002c ; undefined
 1d4:	05f50002 	.inst	0x05f50002 ; undefined
 1d8:	00080000 	.inst	0x00080000 ; undefined
 1dc:	00000000 	.inst	0x00000000 ; undefined
 1e0:	00000df8 	.inst	0x00000df8 ; undefined
 1e4:	00000000 	.inst	0x00000000 ; undefined
 1e8:	00000010 	.inst	0x00000010 ; undefined
	...
    vtable_entry    sync_cur_el_spx
 200:	0000006c 	.inst	0x0000006c ; undefined
 204:	06230002 	.inst	0x06230002 ; undefined
 208:	00080000 	.inst	0x00080000 ; undefined
 20c:	00000000 	.inst	0x00000000 ; undefined
 210:	000010f4 	.inst	0x000010f4 ; undefined
 214:	00000000 	.inst	0x00000000 ; undefined
 218:	000000dc 	.inst	0x000000dc ; undefined
 21c:	00000000 	.inst	0x00000000 ; undefined
 220:	000011d0 	.inst	0x000011d0 ; undefined
 224:	00000000 	.inst	0x00000000 ; undefined
 228:	00000020 	.inst	0x00000020 ; undefined
 22c:	00000000 	.inst	0x00000000 ; undefined
 230:	000011f0 	.inst	0x000011f0 ; undefined
 234:	00000000 	.inst	0x00000000 ; undefined
 238:	00000024 	.inst	0x00000024 ; undefined
 23c:	00000000 	.inst	0x00000000 ; undefined
 240:	00001214 	.inst	0x00001214 ; undefined
 244:	00000000 	.inst	0x00000000 ; undefined
 248:	00000028 	.inst	0x00000028 ; undefined
 24c:	00000000 	.inst	0x00000000 ; undefined
 250:	0000123c 	.inst	0x0000123c ; undefined
 254:	00000000 	.inst	0x00000000 ; undefined
 258:	00000024 	.inst	0x00000024 ; undefined
	...
 270:	000000bc 	.inst	0x000000bc ; undefined
 274:	0a2d0002 	bic	w2, w0, w13
 278:	00080000 	.inst	0x00080000 ; undefined
 27c:	00000000 	.inst	0x00000000 ; undefined
    vtable_entry    irq_cur_el_spx
 280:	00001260 	.inst	0x00001260 ; undefined
 284:	00000000 	.inst	0x00000000 ; undefined
 288:	00000128 	.inst	0x00000128 ; undefined
 28c:	00000000 	.inst	0x00000000 ; undefined
 290:	00001388 	.inst	0x00001388 ; undefined
 294:	00000000 	.inst	0x00000000 ; undefined
 298:	0000005c 	.inst	0x0000005c ; undefined
 29c:	00000000 	.inst	0x00000000 ; undefined
 2a0:	000013e4 	.inst	0x000013e4 ; undefined
 2a4:	00000000 	.inst	0x00000000 ; undefined
 2a8:	00000080 	.inst	0x00000080 ; undefined
 2ac:	00000000 	.inst	0x00000000 ; undefined
 2b0:	00001464 	.inst	0x00001464 ; undefined
 2b4:	00000000 	.inst	0x00000000 ; undefined
 2b8:	000000ac 	.inst	0x000000ac ; undefined
 2bc:	00000000 	.inst	0x00000000 ; undefined
 2c0:	00001510 	.inst	0x00001510 ; undefined
 2c4:	00000000 	.inst	0x00000000 ; undefined
 2c8:	000000dc 	.inst	0x000000dc ; undefined
 2cc:	00000000 	.inst	0x00000000 ; undefined
 2d0:	000015ec 	.inst	0x000015ec ; undefined
 2d4:	00000000 	.inst	0x00000000 ; undefined
 2d8:	00000420 	.inst	0x00000420 ; undefined
 2dc:	00000000 	.inst	0x00000000 ; undefined
 2e0:	00001a0c 	.inst	0x00001a0c ; undefined
 2e4:	00000000 	.inst	0x00000000 ; undefined
 2e8:	00000038 	.inst	0x00000038 ; undefined
 2ec:	00000000 	.inst	0x00000000 ; undefined
 2f0:	00001a44 	.inst	0x00001a44 ; undefined
 2f4:	00000000 	.inst	0x00000000 ; undefined
 2f8:	000000a0 	.inst	0x000000a0 ; undefined
	...
    vtable_entry    fiq_cur_el_spx
 308:	00000034 	.inst	0x00000034 ; undefined
	...
 318:	0000009c 	.inst	0x0000009c ; undefined
	...
 330:	0000007c 	.inst	0x0000007c ; undefined
 334:	0f010002 	.inst	0x0f010002 ; undefined
 338:	00080000 	.inst	0x00080000 ; undefined
 33c:	00000000 	.inst	0x00000000 ; undefined
 340:	00001ae4 	.inst	0x00001ae4 ; undefined
 344:	00000000 	.inst	0x00000000 ; undefined
 348:	00000020 	.inst	0x00000020 ; undefined
 34c:	00000000 	.inst	0x00000000 ; undefined
 350:	00001b04 	.inst	0x00001b04 ; undefined
 354:	00000000 	.inst	0x00000000 ; undefined
 358:	0000001c 	.inst	0x0000001c ; undefined
 35c:	00000000 	.inst	0x00000000 ; undefined
 360:	00001b20 	.inst	0x00001b20 ; undefined
 364:	00000000 	.inst	0x00000000 ; undefined
 368:	0000001c 	.inst	0x0000001c ; undefined
 36c:	00000000 	.inst	0x00000000 ; undefined
 370:	00001b3c 	.inst	0x00001b3c ; undefined
 374:	00000000 	.inst	0x00000000 ; undefined
 378:	00000028 	.inst	0x00000028 ; undefined
 37c:	00000000 	.inst	0x00000000 ; undefined
    vtable_entry    serror_cur_el_spx
 380:	00001b64 	.inst	0x00001b64 ; undefined
 384:	00000000 	.inst	0x00000000 ; undefined
 388:	00000018 	.inst	0x00000018 ; undefined
 38c:	00000000 	.inst	0x00000000 ; undefined
 390:	00001b7c 	.inst	0x00001b7c ; undefined
 394:	00000000 	.inst	0x00000000 ; undefined
 398:	00000198 	.inst	0x00000198 ; undefined
	...

Disassembly of section .debug_ranges:

0000000000000000 <.debug_ranges>:
{
   0:	00000e08 	.inst	0x00000e08 ; undefined
    cntv_ctl = 0;
   4:	00000000 	.inst	0x00000000 ; undefined
	asm volatile ("msr cntv_ctl_el0, %0" :: "r" (cntv_ctl));
   8:	00000e74 	.inst	0x00000e74 ; undefined
	...
    {
  20:	ffffffff 	.inst	0xffffffff ; undefined
  24:	ffffffff 	.inst	0xffffffff ; undefined
	...
    va_start(va,fmt);
  38:	00000d48 	.inst	0x00000d48 ; undefined
  3c:	00000000 	.inst	0x00000000 ; undefined
  40:	00000dd0 	.inst	0x00000dd0 ; undefined
  44:	00000000 	.inst	0x00000000 ; undefined
  48:	00000df8 	.inst	0x00000df8 ; undefined
	...
    tfp_format(&s,putcp,fmt,va);
  60:	00000e74 	.inst	0x00000e74 ; undefined
  64:	00000000 	.inst	0x00000000 ; undefined
  68:	00000e98 	.inst	0x00000e98 ; undefined
  6c:	00000000 	.inst	0x00000000 ; undefined
  70:	00000e98 	.inst	0x00000e98 ; undefined
  74:	00000000 	.inst	0x00000000 ; undefined
  78:	00000ebc 	.inst	0x00000ebc ; undefined
  7c:	00000000 	.inst	0x00000000 ; undefined
  80:	00000ebc 	.inst	0x00000ebc ; undefined
    putcp(&s,0);
  84:	00000000 	.inst	0x00000000 ; undefined
  88:	00000edc 	.inst	0x00000edc ; undefined
  8c:	00000000 	.inst	0x00000000 ; undefined
    }
  90:	00000001 	.inst	0x00000001 ; undefined
  94:	00000000 	.inst	0x00000000 ; undefined
  98:	00000001 	.inst	0x00000001 ; undefined
    vtable_entry    irq_cur_el_sp0
  9c:	00000000 	.inst	0x00000000 ; undefined
  a0:	00000001 	.inst	0x00000001 ; undefined
  a4:	00000000 	.inst	0x00000000 ; undefined
  a8:	00000001 	.inst	0x00000001 ; undefined
  ac:	00000000 	.inst	0x00000000 ; undefined
  b0:	00000001 	.inst	0x00000001 ; undefined
  b4:	00000000 	.inst	0x00000000 ; undefined
  b8:	00000001 	.inst	0x00000001 ; undefined
  bc:	00000000 	.inst	0x00000000 ; undefined
  c0:	00000edc 	.inst	0x00000edc ; undefined
  c4:	00000000 	.inst	0x00000000 ; undefined
  c8:	00000ef8 	.inst	0x00000ef8 ; undefined
  cc:	00000000 	.inst	0x00000000 ; undefined
  d0:	00000ef8 	.inst	0x00000ef8 ; undefined
  d4:	00000000 	.inst	0x00000000 ; undefined
  d8:	00000f10 	.inst	0x00000f10 ; undefined
  dc:	00000000 	.inst	0x00000000 ; undefined
  e0:	00000f10 	.inst	0x00000f10 ; undefined
  e4:	00000000 	.inst	0x00000000 ; undefined
  e8:	00000f64 	.inst	0x00000f64 ; undefined
  ec:	00000000 	.inst	0x00000000 ; undefined
  f0:	00000f64 	.inst	0x00000f64 ; undefined
  f4:	00000000 	.inst	0x00000000 ; undefined
  f8:	00001014 	.inst	0x00001014 ; undefined
  fc:	00000000 	.inst	0x00000000 ; undefined
    vtable_entry    fiq_cur_el_sp0
 100:	00001014 	.inst	0x00001014 ; undefined
 104:	00000000 	.inst	0x00000000 ; undefined
 108:	00001040 	.inst	0x00001040 ; undefined
	...
 120:	00001040 	.inst	0x00001040 ; undefined
 124:	00000000 	.inst	0x00000000 ; undefined
 128:	0000105c 	.inst	0x0000105c ; undefined
 12c:	00000000 	.inst	0x00000000 ; undefined
 130:	0000105c 	.inst	0x0000105c ; undefined
 134:	00000000 	.inst	0x00000000 ; undefined
 138:	00001088 	.inst	0x00001088 ; undefined
 13c:	00000000 	.inst	0x00000000 ; undefined
 140:	00001088 	.inst	0x00001088 ; undefined
 144:	00000000 	.inst	0x00000000 ; undefined
 148:	000010b4 	.inst	0x000010b4 ; undefined
 14c:	00000000 	.inst	0x00000000 ; undefined
 150:	000010b4 	.inst	0x000010b4 ; undefined
 154:	00000000 	.inst	0x00000000 ; undefined
 158:	000010f4 	.inst	0x000010f4 ; undefined
	...
 170:	000010f4 	.inst	0x000010f4 ; undefined
 174:	00000000 	.inst	0x00000000 ; undefined
 178:	000011d0 	.inst	0x000011d0 ; undefined
 17c:	00000000 	.inst	0x00000000 ; undefined
    vtable_entry    serror_cur_el_sp0
 180:	000011d0 	.inst	0x000011d0 ; undefined
 184:	00000000 	.inst	0x00000000 ; undefined
 188:	000011f0 	.inst	0x000011f0 ; undefined
 18c:	00000000 	.inst	0x00000000 ; undefined
 190:	000011f0 	.inst	0x000011f0 ; undefined
 194:	00000000 	.inst	0x00000000 ; undefined
 198:	00001214 	.inst	0x00001214 ; undefined
 19c:	00000000 	.inst	0x00000000 ; undefined
 1a0:	00001214 	.inst	0x00001214 ; undefined
 1a4:	00000000 	.inst	0x00000000 ; undefined
 1a8:	0000123c 	.inst	0x0000123c ; undefined
 1ac:	00000000 	.inst	0x00000000 ; undefined
 1b0:	0000123c 	.inst	0x0000123c ; undefined
 1b4:	00000000 	.inst	0x00000000 ; undefined
 1b8:	00001260 	.inst	0x00001260 ; undefined
	...
 1d0:	0000162c 	.inst	0x0000162c ; undefined
 1d4:	00000000 	.inst	0x00000000 ; undefined
 1d8:	000019d4 	.inst	0x000019d4 ; undefined
 1dc:	00000000 	.inst	0x00000000 ; undefined
 1e0:	000019f8 	.inst	0x000019f8 ; undefined
 1e4:	00000000 	.inst	0x00000000 ; undefined
 1e8:	000019fc 	.inst	0x000019fc ; undefined
	...
    vtable_entry    sync_cur_el_spx
 200:	00001260 	.inst	0x00001260 ; undefined
 204:	00000000 	.inst	0x00000000 ; undefined
 208:	00001388 	.inst	0x00001388 ; undefined
 20c:	00000000 	.inst	0x00000000 ; undefined
 210:	00001388 	.inst	0x00001388 ; undefined
 214:	00000000 	.inst	0x00000000 ; undefined
 218:	000013e4 	.inst	0x000013e4 ; undefined
 21c:	00000000 	.inst	0x00000000 ; undefined
 220:	000013e4 	.inst	0x000013e4 ; undefined
 224:	00000000 	.inst	0x00000000 ; undefined
 228:	00001464 	.inst	0x00001464 ; undefined
 22c:	00000000 	.inst	0x00000000 ; undefined
 230:	00001464 	.inst	0x00001464 ; undefined
 234:	00000000 	.inst	0x00000000 ; undefined
 238:	00001510 	.inst	0x00001510 ; undefined
 23c:	00000000 	.inst	0x00000000 ; undefined
 240:	00001510 	.inst	0x00001510 ; undefined
 244:	00000000 	.inst	0x00000000 ; undefined
 248:	000015ec 	.inst	0x000015ec ; undefined
 24c:	00000000 	.inst	0x00000000 ; undefined
 250:	000015ec 	.inst	0x000015ec ; undefined
 254:	00000000 	.inst	0x00000000 ; undefined
 258:	00001a0c 	.inst	0x00001a0c ; undefined
 25c:	00000000 	.inst	0x00000000 ; undefined
 260:	00001a0c 	.inst	0x00001a0c ; undefined
 264:	00000000 	.inst	0x00000000 ; undefined
 268:	00001a44 	.inst	0x00001a44 ; undefined
 26c:	00000000 	.inst	0x00000000 ; undefined
 270:	00001a44 	.inst	0x00001a44 ; undefined
 274:	00000000 	.inst	0x00000000 ; undefined
 278:	00001ae4 	.inst	0x00001ae4 ; undefined
 27c:	00000000 	.inst	0x00000000 ; undefined
    vtable_entry    irq_cur_el_spx
 280:	00000001 	.inst	0x00000001 ; undefined
 284:	00000000 	.inst	0x00000000 ; undefined
 288:	00000001 	.inst	0x00000001 ; undefined
 28c:	00000000 	.inst	0x00000000 ; undefined
 290:	00000001 	.inst	0x00000001 ; undefined
 294:	00000000 	.inst	0x00000000 ; undefined
 298:	00000001 	.inst	0x00000001 ; undefined
	...
 2b0:	00001ae4 	.inst	0x00001ae4 ; undefined
 2b4:	00000000 	.inst	0x00000000 ; undefined
 2b8:	00001b04 	.inst	0x00001b04 ; undefined
 2bc:	00000000 	.inst	0x00000000 ; undefined
 2c0:	00001b04 	.inst	0x00001b04 ; undefined
 2c4:	00000000 	.inst	0x00000000 ; undefined
 2c8:	00001b20 	.inst	0x00001b20 ; undefined
 2cc:	00000000 	.inst	0x00000000 ; undefined
 2d0:	00001b20 	.inst	0x00001b20 ; undefined
 2d4:	00000000 	.inst	0x00000000 ; undefined
 2d8:	00001b3c 	.inst	0x00001b3c ; undefined
 2dc:	00000000 	.inst	0x00000000 ; undefined
 2e0:	00001b3c 	.inst	0x00001b3c ; undefined
 2e4:	00000000 	.inst	0x00000000 ; undefined
 2e8:	00001b64 	.inst	0x00001b64 ; undefined
 2ec:	00000000 	.inst	0x00000000 ; undefined
 2f0:	00001b64 	.inst	0x00001b64 ; undefined
 2f4:	00000000 	.inst	0x00000000 ; undefined
 2f8:	00001b7c 	.inst	0x00001b7c ; undefined
 2fc:	00000000 	.inst	0x00000000 ; undefined
    vtable_entry    fiq_cur_el_spx
 300:	00001b7c 	.inst	0x00001b7c ; undefined
 304:	00000000 	.inst	0x00000000 ; undefined
 308:	00001d14 	.inst	0x00001d14 ; undefined
	...

Disassembly of section .debug_macro:

0000000000000000 <.debug_macro>:
{
   0:	00020004 	.inst	0x00020004 ; undefined
    cntv_ctl = 0;
   4:	07000000 	.inst	0x07000000 ; undefined
	asm volatile ("msr cntv_ctl_el0, %0" :: "r" (cntv_ctl));
   8:	00000049 	.inst	0x00000049 ; undefined
   c:	03010003 	.inst	0x03010003 ; undefined
}
  10:	01030201 	.inst	0x01030201 ; undefined
  14:	09230703 	.inst	0x09230703 ; undefined
  18:	07040000 	.inst	0x07040000 ; undefined
    {
  1c:	00000939 	.inst	0x00000939 ; undefined
  20:	04020304 	.inst	0x04020304 ; undefined
  24:	0aee5c05 	bic	w5, w0, w14, ror #23
    va_start(va,fmt);
  28:	5e030000 	sha1c	q0, s0, v3.4s
  2c:	09490705 	.inst	0x09490705 ; undefined
  30:	07040000 	.inst	0x07040000 ; undefined
  34:	000009a1 	.inst	0x000009a1 ; undefined
  38:	06030304 	.inst	0x06030304 ; undefined
  3c:	07c00205 	.inst	0x07c00205 ; undefined
  40:	03040000 	.inst	0x03040000 ; undefined
  44:	04040704 	.inst	0x04040704 ; undefined
  48:	00000400 	.inst	0x00000400 ; undefined
    tfp_format(&s,putcp,fmt,va);
  4c:	19f60005 	.inst	0x19f60005 ; undefined
  50:	00050000 	.inst	0x00050000 ; undefined
  54:	00002836 	.inst	0x00002836 ; undefined
  58:	1ba30005 	.inst	0x1ba30005 ; undefined
  5c:	00050000 	.inst	0x00050000 ; undefined
  60:	00002b2d 	.inst	0x00002b2d ; undefined
  64:	24bb0005 	cmphs	p5.s, p0/z, z0.s, #108
  68:	00050000 	.inst	0x00050000 ; undefined
  6c:	000004e5 	.inst	0x000004e5 ; undefined
  70:	03810005 	.inst	0x03810005 ; undefined
  74:	00050000 	.inst	0x00050000 ; undefined
  78:	00001b41 	.inst	0x00001b41 ; undefined
  7c:	23510005 	.inst	0x23510005 ; undefined
  80:	00050000 	.inst	0x00050000 ; undefined
    putcp(&s,0);
  84:	00001302 	.inst	0x00001302 ; undefined
  88:	26d30005 	.inst	0x26d30005 ; undefined
  8c:	00050000 	.inst	0x00050000 ; undefined
    }
  90:	0000084d 	.inst	0x0000084d ; undefined
  94:	06350005 	.inst	0x06350005 ; undefined
  98:	00050000 	.inst	0x00050000 ; undefined
    vtable_entry    irq_cur_el_sp0
  9c:	00001d31 	.inst	0x00001d31 ; undefined
  a0:	05910005 	mov	z5.s, p1/z, #0
  a4:	00050000 	.inst	0x00050000 ; undefined
  a8:	00002599 	.inst	0x00002599 ; undefined
  ac:	1a5f0005 	.inst	0x1a5f0005 ; undefined
  b0:	00050000 	.inst	0x00050000 ; undefined
  b4:	000028e3 	.inst	0x000028e3 ; undefined
  b8:	267f0005 	.inst	0x267f0005 ; undefined
  bc:	00050000 	.inst	0x00050000 ; undefined
  c0:	000017ef 	.inst	0x000017ef ; undefined
  c4:	17610005 	b	fffffffffd8400d8 <stdout_putp+0xfffffffffd83e2a8>
  c8:	00050000 	.inst	0x00050000 ; undefined
  cc:	0000170f 	.inst	0x0000170f ; undefined
  d0:	1f3c0005 	fnmadd	s5, s0, s28, s0
  d4:	00050000 	.inst	0x00050000 ; undefined
  d8:	00001a4d 	.inst	0x00001a4d ; undefined
  dc:	22cd0005 	.inst	0x22cd0005 ; undefined
  e0:	00050000 	.inst	0x00050000 ; undefined
  e4:	00000648 	.inst	0x00000648 ; undefined
  e8:	19530005 	ldapurb	w5, [x0, #-208]
  ec:	00050000 	.inst	0x00050000 ; undefined
  f0:	00001b2d 	.inst	0x00001b2d ; undefined
  f4:	0d000005 	st1	{v5.b}[0], [x0]
  f8:	00050000 	.inst	0x00050000 ; undefined
  fc:	0000047f 	.inst	0x0000047f ; undefined
    vtable_entry    fiq_cur_el_sp0
 100:	17770005 	b	fffffffffddc0114 <stdout_putp+0xfffffffffddbe2e4>
 104:	00050000 	.inst	0x00050000 ; undefined
 108:	00002904 	.inst	0x00002904 ; undefined
 10c:	0e400005 	.inst	0x0e400005 ; undefined
 110:	00050000 	.inst	0x00050000 ; undefined
 114:	000004cb 	.inst	0x000004cb ; undefined
 118:	1e7e0005 	fjcvtzs	w5, d0
 11c:	00050000 	.inst	0x00050000 ; undefined
 120:	000006c0 	.inst	0x000006c0 ; undefined
 124:	1c330005 	ldr	s5, 66124 <stdout_putp+0x642f4>
 128:	00050000 	.inst	0x00050000 ; undefined
 12c:	0000238f 	.inst	0x0000238f ; undefined
 130:	135a0005 	.inst	0x135a0005 ; undefined
 134:	00050000 	.inst	0x00050000 ; undefined
 138:	00002809 	.inst	0x00002809 ; undefined
 13c:	18060005 	ldr	w5, c13c <stdout_putp+0xa30c>
 140:	00050000 	.inst	0x00050000 ; undefined
 144:	00001aa2 	.inst	0x00001aa2 ; undefined
 148:	0d900005 	st1	{v5.b}[0], [x0], x16
 14c:	00050000 	.inst	0x00050000 ; undefined
 150:	00001d9f 	.inst	0x00001d9f ; undefined
 154:	045c0005 	.inst	0x045c0005 ; undefined
 158:	00050000 	.inst	0x00050000 ; undefined
 15c:	00002033 	.inst	0x00002033 ; undefined
 160:	2c750005 	ldnp	s5, s0, [x0, #-88]
 164:	00050000 	.inst	0x00050000 ; undefined
 168:	00002120 	.inst	0x00002120 ; undefined
 16c:	05d60005 	mov	z5.d, p6/z, #0
 170:	00050000 	.inst	0x00050000 ; undefined
 174:	00000ea5 	.inst	0x00000ea5 ; undefined
 178:	25d90005 	cmpge	p5.d, p0/z, z0.d, #-7
 17c:	00050000 	.inst	0x00050000 ; undefined
    vtable_entry    serror_cur_el_sp0
 180:	00002322 	.inst	0x00002322 ; undefined
 184:	10fc0005 	adr	x5, ffffffffffff8184 <stdout_putp+0xffffffffffff6354>
 188:	00050000 	.inst	0x00050000 ; undefined
 18c:	0000216c 	.inst	0x0000216c ; undefined
 190:	065b0005 	.inst	0x065b0005 ; undefined
 194:	00050000 	.inst	0x00050000 ; undefined
 198:	0000067d 	.inst	0x0000067d ; undefined
 19c:	16b30005 	b	fffffffffacc01b0 <stdout_putp+0xfffffffffacbe380>
 1a0:	00050000 	.inst	0x00050000 ; undefined
 1a4:	00000993 	.inst	0x00000993 ; undefined
 1a8:	073c0005 	.inst	0x073c0005 ; undefined
 1ac:	00050000 	.inst	0x00050000 ; undefined
 1b0:	000008e8 	.inst	0x000008e8 ; undefined
 1b4:	11dc0005 	.inst	0x11dc0005 ; undefined
 1b8:	00050000 	.inst	0x00050000 ; undefined
 1bc:	0000069d 	.inst	0x0000069d ; undefined
 1c0:	26890005 	.inst	0x26890005 ; undefined
 1c4:	00050000 	.inst	0x00050000 ; undefined
 1c8:	00000d32 	.inst	0x00000d32 ; undefined
 1cc:	10a20005 	adr	x5, fffffffffff441cc <stdout_putp+0xfffffffffff4239c>
 1d0:	00050000 	.inst	0x00050000 ; undefined
 1d4:	000027d9 	.inst	0x000027d9 ; undefined
 1d8:	15e70005 	b	79c01ec <stdout_putp+0x79be3bc>
 1dc:	00050000 	.inst	0x00050000 ; undefined
 1e0:	000014f9 	.inst	0x000014f9 ; undefined
 1e4:	13a60005 	.inst	0x13a60005 ; undefined
 1e8:	00050000 	.inst	0x00050000 ; undefined
 1ec:	00001ffa 	.inst	0x00001ffa ; undefined
 1f0:	2b730005 	.inst	0x2b730005 ; undefined
 1f4:	00050000 	.inst	0x00050000 ; undefined
 1f8:	00000da9 	.inst	0x00000da9 ; undefined
 1fc:	19050005 	stlurb	w5, [x0, #80]
    vtable_entry    sync_cur_el_spx
 200:	00050000 	.inst	0x00050000 ; undefined
 204:	000024f2 	.inst	0x000024f2 ; undefined
 208:	08770005 	.inst	0x08770005 ; undefined
 20c:	00050000 	.inst	0x00050000 ; undefined
 210:	00001432 	.inst	0x00001432 ; undefined
 214:	07cb0005 	.inst	0x07cb0005 ; undefined
 218:	00050000 	.inst	0x00050000 ; undefined
 21c:	00001e49 	.inst	0x00001e49 ; undefined
 220:	057a0005 	.inst	0x057a0005 ; undefined
 224:	00050000 	.inst	0x00050000 ; undefined
 228:	00001f8b 	.inst	0x00001f8b ; undefined
 22c:	119e0005 	.inst	0x119e0005 ; undefined
 230:	00050000 	.inst	0x00050000 ; undefined
 234:	000022b3 	.inst	0x000022b3 ; undefined
 238:	0dfd0005 	ld2	{v5.b, v6.b}[0], [x0], x29
 23c:	00050000 	.inst	0x00050000 ; undefined
 240:	0000213a 	.inst	0x0000213a ; undefined
 244:	1b930005 	.inst	0x1b930005 ; undefined
 248:	00050000 	.inst	0x00050000 ; undefined
 24c:	0000168f 	.inst	0x0000168f ; undefined
 250:	26b10005 	.inst	0x26b10005 ; undefined
 254:	00050000 	.inst	0x00050000 ; undefined
 258:	00001af8 	.inst	0x00001af8 ; undefined
 25c:	233f0005 	.inst	0x233f0005 ; undefined
 260:	00050000 	.inst	0x00050000 ; undefined
 264:	00002416 	.inst	0x00002416 ; undefined
 268:	25340005 	.inst	0x25340005 ; undefined
 26c:	00050000 	.inst	0x00050000 ; undefined
 270:	00000407 	.inst	0x00000407 ; undefined
 274:	11590005 	add	w5, w0, #0x640, lsl #12
 278:	00050000 	.inst	0x00050000 ; undefined
 27c:	00001eeb 	.inst	0x00001eeb ; undefined
    vtable_entry    irq_cur_el_spx
 280:	2b3f0005 	adds	w5, w0, wzr, uxtb
 284:	00050000 	.inst	0x00050000 ; undefined
 288:	000024cd 	.inst	0x000024cd ; undefined
 28c:	12df0005 	.inst	0x12df0005 ; undefined
 290:	00050000 	.inst	0x00050000 ; undefined
 294:	000014e4 	.inst	0x000014e4 ; undefined
 298:	265a0005 	.inst	0x265a0005 ; undefined
 29c:	00050000 	.inst	0x00050000 ; undefined
 2a0:	0000201c 	.inst	0x0000201c ; undefined
 2a4:	164f0005 	b	fffffffff93c02b8 <stdout_putp+0xfffffffff93be488>
 2a8:	00050000 	.inst	0x00050000 ; undefined
 2ac:	00000007 	.inst	0x00000007 ; undefined
 2b0:	1ceb0005 	ldr	s5, fffffffffffd62b0 <stdout_putp+0xfffffffffffd4480>
 2b4:	00050000 	.inst	0x00050000 ; undefined
 2b8:	00001e31 	.inst	0x00001e31 ; undefined
 2bc:	0c3e0005 	.inst	0x0c3e0005 ; undefined
 2c0:	00050000 	.inst	0x00050000 ; undefined
 2c4:	00001ae3 	.inst	0x00001ae3 ; undefined
 2c8:	1d180005 	.inst	0x1d180005 ; undefined
 2cc:	00050000 	.inst	0x00050000 ; undefined
 2d0:	00001d54 	.inst	0x00001d54 ; undefined
 2d4:	15a10005 	b	68402e8 <stdout_putp+0x683e4b8>
 2d8:	00050000 	.inst	0x00050000 ; undefined
 2dc:	000015c1 	.inst	0x000015c1 ; undefined
 2e0:	0f080005 	.inst	0x0f080005 ; undefined
 2e4:	00050000 	.inst	0x00050000 ; undefined
 2e8:	00000392 	.inst	0x00000392 ; undefined
 2ec:	16f70005 	b	fffffffffbdc0300 <stdout_putp+0xfffffffffbdbe4d0>
 2f0:	00050000 	.inst	0x00050000 ; undefined
 2f4:	00000946 	.inst	0x00000946 ; undefined
 2f8:	156c0005 	b	5b0030c <stdout_putp+0x5afe4dc>
 2fc:	00050000 	.inst	0x00050000 ; undefined
    vtable_entry    fiq_cur_el_spx
 300:	000007a5 	.inst	0x000007a5 ; undefined
 304:	19280005 	.inst	0x19280005 ; undefined
 308:	00050000 	.inst	0x00050000 ; undefined
 30c:	000009ac 	.inst	0x000009ac ; undefined
 310:	2b540005 	adds	w5, w0, w20, lsr #0
 314:	00050000 	.inst	0x00050000 ; undefined
 318:	000020f8 	.inst	0x000020f8 ; undefined
 31c:	26410005 	.inst	0x26410005 ; undefined
 320:	00050000 	.inst	0x00050000 ; undefined
 324:	00001544 	.inst	0x00001544 ; undefined
 328:	27c50005 	.inst	0x27c50005 ; undefined
 32c:	00050000 	.inst	0x00050000 ; undefined
 330:	00002365 	.inst	0x00002365 ; undefined
 334:	0c0a0005 	.inst	0x0c0a0005 ; undefined
 338:	00050000 	.inst	0x00050000 ; undefined
 33c:	00001b57 	.inst	0x00001b57 ; undefined
 340:	0ba20005 	.inst	0x0ba20005 ; undefined
 344:	00050000 	.inst	0x00050000 ; undefined
 348:	00001d44 	.inst	0x00001d44 ; undefined
 34c:	2a6b0005 	orn	w5, w0, w11, lsr #0
 350:	00050000 	.inst	0x00050000 ; undefined
 354:	00001b0a 	.inst	0x00001b0a ; undefined
 358:	185e0005 	ldr	w5, bc358 <stdout_putp+0xba528>
 35c:	00050000 	.inst	0x00050000 ; undefined
 360:	000004f0 	.inst	0x000004f0 ; undefined
 364:	04ae0005 	add	z5.s, z0.s, z14.s
 368:	00050000 	.inst	0x00050000 ; undefined
 36c:	00002963 	.inst	0x00002963 ; undefined
 370:	0ad00005 	and	w5, w0, w16, ror #0
 374:	00050000 	.inst	0x00050000 ; undefined
 378:	00000118 	.inst	0x00000118 ; undefined
 37c:	198d0005 	ldapursb	x5, [x0, #208]
    vtable_entry    serror_cur_el_spx
 380:	00050000 	.inst	0x00050000 ; undefined
 384:	00001a72 	.inst	0x00001a72 ; undefined
 388:	02bf0005 	.inst	0x02bf0005 ; undefined
 38c:	00050000 	.inst	0x00050000 ; undefined
 390:	00002d34 	.inst	0x00002d34 ; undefined
 394:	0f820005 	fmlal	v5.2s, v0.2h, v2.h[0]
 398:	00050000 	.inst	0x00050000 ; undefined
 39c:	00001386 	.inst	0x00001386 ; undefined
 3a0:	222e0005 	.inst	0x222e0005 ; undefined
 3a4:	00050000 	.inst	0x00050000 ; undefined
 3a8:	00000bbe 	.inst	0x00000bbe ; undefined
 3ac:	01f80005 	.inst	0x01f80005 ; undefined
 3b0:	00050000 	.inst	0x00050000 ; undefined
 3b4:	000020e4 	.inst	0x000020e4 ; undefined
 3b8:	0b300005 	add	w5, w0, w16, uxtb
 3bc:	00050000 	.inst	0x00050000 ; undefined
 3c0:	0000167f 	.inst	0x0000167f ; undefined
 3c4:	1bcd0005 	.inst	0x1bcd0005 ; undefined
 3c8:	00050000 	.inst	0x00050000 ; undefined
 3cc:	000014a4 	.inst	0x000014a4 ; undefined
 3d0:	27660005 	.inst	0x27660005 ; undefined
 3d4:	00050000 	.inst	0x00050000 ; undefined
 3d8:	000025fd 	.inst	0x000025fd ; undefined
 3dc:	0c9e0005 	st4	{v5.8b-v8.8b}, [x0], x30
 3e0:	00050000 	.inst	0x00050000 ; undefined
 3e4:	0000075a 	.inst	0x0000075a ; undefined
 3e8:	0ac20005 	and	w5, w0, w2, ror #0
 3ec:	00050000 	.inst	0x00050000 ; undefined
 3f0:	00002993 	.inst	0x00002993 ; undefined
 3f4:	27210005 	.inst	0x27210005 ; undefined
 3f8:	00050000 	.inst	0x00050000 ; undefined
 3fc:	00002573 	.inst	0x00002573 ; undefined
    vtable_entry    sync_lower_el_a64
 400:	12050005 	and	w5, w0, #0x8000000
 404:	00050000 	.inst	0x00050000 ; undefined
 408:	00001ea2 	.inst	0x00001ea2 ; undefined
 40c:	13c80005 	.inst	0x13c80005 ; undefined
 410:	00050000 	.inst	0x00050000 ; undefined
 414:	00001a01 	.inst	0x00001a01 ; undefined
 418:	1df70005 	.inst	0x1df70005 ; undefined
 41c:	00050000 	.inst	0x00050000 ; undefined
 420:	0000041e 	.inst	0x0000041e ; undefined
 424:	2d1f0005 	stp	s5, s0, [x0, #248]
 428:	00050000 	.inst	0x00050000 ; undefined
 42c:	000019c6 	.inst	0x000019c6 ; undefined
 430:	27f10005 	.inst	0x27f10005 ; undefined
 434:	00050000 	.inst	0x00050000 ; undefined
 438:	00000506 	.inst	0x00000506 ; undefined
 43c:	16e80005 	b	fffffffffba00450 <stdout_putp+0xfffffffffb9fe620>
 440:	00050000 	.inst	0x00050000 ; undefined
 444:	000002a7 	.inst	0x000002a7 ; undefined
 448:	13ff0005 	.inst	0x13ff0005 ; undefined
 44c:	00050000 	.inst	0x00050000 ; undefined
 450:	00001a38 	.inst	0x00001a38 ; undefined
 454:	28af0005 	stp	w5, w0, [x0], #-136
 458:	00050000 	.inst	0x00050000 ; undefined
 45c:	00002d4c 	.inst	0x00002d4c ; undefined
 460:	10560005 	adr	x5, ac460 <stdout_putp+0xaa630>
 464:	00050000 	.inst	0x00050000 ; undefined
 468:	00001786 	.inst	0x00001786 ; undefined
 46c:	2c140005 	stnp	s5, s0, [x0, #160]
 470:	00050000 	.inst	0x00050000 ; undefined
 474:	000001af 	.inst	0x000001af ; undefined
 478:	2aa60005 	orn	w5, w0, w6, asr #0
 47c:	00050000 	.inst	0x00050000 ; undefined
    vtable_entry    irq_lower_el_a64
 480:	00002787 	.inst	0x00002787 ; undefined
 484:	0d1a0005 	.inst	0x0d1a0005 ; undefined
 488:	00050000 	.inst	0x00050000 ; undefined
 48c:	00000256 	.inst	0x00000256 ; undefined
 490:	0bfa0005 	.inst	0x0bfa0005 ; undefined
 494:	00050000 	.inst	0x00050000 ; undefined
 498:	00001ed1 	.inst	0x00001ed1 ; undefined
 49c:	14490005 	b	12404b0 <stdout_putp+0x123e680>
 4a0:	00050000 	.inst	0x00050000 ; undefined
 4a4:	00000d79 	.inst	0x00000d79 ; undefined
 4a8:	2ba90005 	.inst	0x2ba90005 ; undefined
 4ac:	00050000 	.inst	0x00050000 ; undefined
 4b0:	000009d9 	.inst	0x000009d9 ; undefined
 4b4:	26130005 	.inst	0x26130005 ; undefined
 4b8:	00050000 	.inst	0x00050000 ; undefined
 4bc:	0000111f 	.inst	0x0000111f ; undefined
 4c0:	06e70005 	.inst	0x06e70005 ; undefined
 4c4:	00050000 	.inst	0x00050000 ; undefined
 4c8:	0000121b 	.inst	0x0000121b ; undefined
 4cc:	07de0005 	.inst	0x07de0005 ; undefined
 4d0:	00050000 	.inst	0x00050000 ; undefined
 4d4:	00002cdd 	.inst	0x00002cdd ; undefined
 4d8:	1bb50005 	.inst	0x1bb50005 ; undefined
 4dc:	00050000 	.inst	0x00050000 ; undefined
 4e0:	00002107 	.inst	0x00002107 ; undefined
 4e4:	0afe0005 	bic	w5, w0, w30, ror #0
 4e8:	00050000 	.inst	0x00050000 ; undefined
 4ec:	000005b2 	.inst	0x000005b2 ; undefined
 4f0:	10ba0005 	adr	x5, fffffffffff744f0 <stdout_putp+0xfffffffffff726c0>
 4f4:	00050000 	.inst	0x00050000 ; undefined
 4f8:	00000070 	.inst	0x00000070 ; undefined
 4fc:	12aa0005 	mov	w5, #0xafffffff            	// #-1342177281
    vtable_entry    fiq_lower_el_a64
 500:	00050000 	.inst	0x00050000 ; undefined
 504:	00002abb 	.inst	0x00002abb ; undefined
 508:	1b7b0005 	.inst	0x1b7b0005 ; undefined
 50c:	00050000 	.inst	0x00050000 ; undefined
 510:	00002a1d 	.inst	0x00002a1d ; undefined
 514:	16040005 	b	fffffffff8100528 <stdout_putp+0xfffffffff80fe6f8>
 518:	00050000 	.inst	0x00050000 ; undefined
 51c:	000022e4 	.inst	0x000022e4 ; undefined
 520:	0f230005 	.inst	0x0f230005 ; undefined
 524:	00050000 	.inst	0x00050000 ; undefined
 528:	00001dc2 	.inst	0x00001dc2 ; undefined
 52c:	19dd0005 	ldapursb	w5, [x0, #-48]
 530:	00050000 	.inst	0x00050000 ; undefined
 534:	0000251a 	.inst	0x0000251a ; undefined
 538:	021b0005 	.inst	0x021b0005 ; undefined
 53c:	00050000 	.inst	0x00050000 ; undefined
 540:	0000147d 	.inst	0x0000147d ; undefined
 544:	14190005 	b	640558 <stdout_putp+0x63e728>
 548:	00050000 	.inst	0x00050000 ; undefined
 54c:	00000721 	.inst	0x00000721 ; undefined
 550:	16d20005 	b	fffffffffb480564 <stdout_putp+0xfffffffffb47e734>
 554:	00050000 	.inst	0x00050000 ; undefined
 558:	00002b15 	.inst	0x00002b15 ; undefined
 55c:	10d20005 	adr	x5, fffffffffffa455c <stdout_putp+0xfffffffffffa272c>
 560:	00050000 	.inst	0x00050000 ; undefined
 564:	0000053f 	.inst	0x0000053f ; undefined
 568:	2bd90005 	.inst	0x2bd90005 ; undefined
 56c:	00050000 	.inst	0x00050000 ; undefined
 570:	00001f4d 	.inst	0x00001f4d ; undefined
 574:	1ca90005 	ldr	s5, fffffffffff52574 <stdout_putp+0xfffffffffff50744>
 578:	00050000 	.inst	0x00050000 ; undefined
 57c:	00000a2d 	.inst	0x00000a2d ; undefined
    vtable_entry    serror_lower_el_a64
 580:	008a0005 	.inst	0x008a0005 ; undefined
 584:	00050000 	.inst	0x00050000 ; undefined
 588:	00000b88 	.inst	0x00000b88 ; undefined
 58c:	2cf30005 	ldp	s5, s0, [x0], #-104
 590:	00050000 	.inst	0x00050000 ; undefined
 594:	0000083c 	.inst	0x0000083c ; undefined
 598:	273a0005 	.inst	0x273a0005 ; undefined
 59c:	00050000 	.inst	0x00050000 ; undefined
 5a0:	0000103a 	.inst	0x0000103a ; undefined
 5a4:	00a30005 	.inst	0x00a30005 ; undefined
 5a8:	00050000 	.inst	0x00050000 ; undefined
 5ac:	00001eb8 	.inst	0x00001eb8 ; undefined
 5b0:	131c0005 	sbfiz	w5, w0, #4, #1
 5b4:	00050000 	.inst	0x00050000 ; undefined
 5b8:	00001822 	.inst	0x00001822 ; undefined
 5bc:	03cb0005 	.inst	0x03cb0005 ; undefined
 5c0:	00050000 	.inst	0x00050000 ; undefined
 5c4:	000023a4 	.inst	0x000023a4 ; undefined
 5c8:	2ad20005 	orr	w5, w0, w18, ror #0
 5cc:	00050000 	.inst	0x00050000 ; undefined
 5d0:	0000148d 	.inst	0x0000148d ; undefined
 5d4:	0d490005 	.inst	0x0d490005 ; undefined
 5d8:	00050000 	.inst	0x00050000 ; undefined
 5dc:	00000025 	.inst	0x00000025 ; undefined
 5e0:	0e280005 	saddl	v5.8h, v0.8b, v8.8b
 5e4:	00050000 	.inst	0x00050000 ; undefined
 5e8:	000010ea 	.inst	0x000010ea ; undefined
 5ec:	0b6c0005 	.inst	0x0b6c0005 ; undefined
 5f0:	00050000 	.inst	0x00050000 ; undefined
 5f4:	00001c15 	.inst	0x00001c15 ; undefined
 5f8:	0c850005 	st4	{v5.8b-v8.8b}, [x0], x5
 5fc:	00050000 	.inst	0x00050000 ; undefined
    vtable_entry    sync_lower_el_a32
 600:	00000fd1 	.inst	0x00000fd1 ; undefined
 604:	24270005 	cmphs	p5.b, p0/z, z0.b, #28
 608:	00050000 	.inst	0x00050000 ; undefined
 60c:	00000954 	.inst	0x00000954 ; undefined
 610:	0fec0005 	.inst	0x0fec0005 ; undefined
 614:	00050000 	.inst	0x00050000 ; undefined
 618:	00002272 	.inst	0x00002272 ; undefined
 61c:	291d0005 	stp	w5, w0, [x0, #232]
 620:	00050000 	.inst	0x00050000 ; undefined
 624:	00002cb3 	.inst	0x00002cb3 ; undefined
 628:	08ce0005 	ldlarb	w5, [x0]
 62c:	00050000 	.inst	0x00050000 ; undefined
 630:	00001fac 	.inst	0x00001fac ; undefined
 634:	174a0005 	b	fffffffffd280648 <stdout_putp+0xfffffffffd27e818>
 638:	00050000 	.inst	0x00050000 ; undefined
 63c:	00001738 	.inst	0x00001738 ; undefined
 640:	20b90005 	.inst	0x20b90005 ; undefined
 644:	00050000 	.inst	0x00050000 ; undefined
 648:	00001fdd 	.inst	0x00001fdd ; undefined
 64c:	01000005 	.inst	0x01000005 ; undefined
 650:	00050000 	.inst	0x00050000 ; undefined
 654:	00002a8c 	.inst	0x00002a8c ; undefined
 658:	027b0005 	.inst	0x027b0005 ; undefined
 65c:	00050000 	.inst	0x00050000 ; undefined
 660:	0000031f 	.inst	0x0000031f ; undefined
 664:	18c70005 	ldr	w5, fffffffffff8e664 <stdout_putp+0xfffffffffff8c834>
 668:	00050000 	.inst	0x00050000 ; undefined
 66c:	00001269 	.inst	0x00001269 ; undefined
 670:	0cae0005 	.inst	0x0cae0005 ; undefined
 674:	00050000 	.inst	0x00050000 ; undefined
 678:	000014ba 	.inst	0x000014ba ; undefined
 67c:	08b40005 	.inst	0x08b40005 ; undefined
    vtable_entry    irq_lower_el_a32 
 680:	00050000 	.inst	0x00050000 ; undefined
 684:	00002894 	.inst	0x00002894 ; undefined
 688:	1a8a0005 	csel	w5, w0, w10, eq  // eq = none
 68c:	00050000 	.inst	0x00050000 ; undefined
 690:	00000eb8 	.inst	0x00000eb8 ; undefined
 694:	0a810005 	and	w5, w0, w1, asr #0
 698:	00050000 	.inst	0x00050000 ; undefined
 69c:	00000f64 	.inst	0x00000f64 ; undefined
 6a0:	061c0005 	.inst	0x061c0005 ; undefined
 6a4:	00050000 	.inst	0x00050000 ; undefined
 6a8:	00001be5 	.inst	0x00001be5 ; undefined
 6ac:	1d760005 	.inst	0x1d760005 ; undefined
 6b0:	00050000 	.inst	0x00050000 ; undefined
 6b4:	00001888 	.inst	0x00001888 ; undefined
 6b8:	1efd0005 	.inst	0x1efd0005 ; undefined
 6bc:	00050000 	.inst	0x00050000 ; undefined
 6c0:	00000154 	.inst	0x00000154 ; undefined
 6c4:	00ba0005 	.inst	0x00ba0005 ; undefined
 6c8:	00050000 	.inst	0x00050000 ; undefined
 6cc:	00000eca 	.inst	0x00000eca ; undefined
 6d0:	20500005 	.inst	0x20500005 ; undefined
 6d4:	00050000 	.inst	0x00050000 ; undefined
 6d8:	000019ab 	.inst	0x000019ab ; undefined
 6dc:	1c850005 	ldr	s5, fffffffffff0a6dc <stdout_putp+0xfffffffffff088ac>
 6e0:	00050000 	.inst	0x00050000 ; undefined
 6e4:	000025ac 	.inst	0x000025ac ; undefined
 6e8:	25c40005 	cmpge	p5.d, p0/z, z0.d, #4
 6ec:	00050000 	.inst	0x00050000 ; undefined
 6f0:	00002218 	.inst	0x00002218 ; undefined
 6f4:	16630005 	b	fffffffff98c0708 <stdout_putp+0xfffffffff98be8d8>
 6f8:	00050000 	.inst	0x00050000 ; undefined
 6fc:	00000603 	.inst	0x00000603 ; undefined
    vtable_entry    fiq_lower_el_a32
 700:	19660005 	.inst	0x19660005 ; undefined
 704:	00050000 	.inst	0x00050000 ; undefined
 708:	00002d09 	.inst	0x00002d09 ; undefined
 70c:	151a0005 	b	4680720 <stdout_putp+0x467e8f0>
 710:	00050000 	.inst	0x00050000 ; undefined
 714:	00001fc7 	.inst	0x00001fc7 ; undefined
 718:	2bc20005 	.inst	0x2bc20005 ; undefined
 71c:	00050000 	.inst	0x00050000 ; undefined
 720:	00000dc2 	.inst	0x00000dc2 ; undefined
 724:	01950005 	.inst	0x01950005 ; undefined
 728:	00050000 	.inst	0x00050000 ; undefined
 72c:	0000003f 	.inst	0x0000003f ; undefined
 730:	0e740005 	saddl	v5.4s, v0.4h, v20.4h
 734:	00050000 	.inst	0x00050000 ; undefined
 738:	00000c23 	.inst	0x00000c23 ; undefined
 73c:	1ddf0005 	.inst	0x1ddf0005 ; undefined
 740:	00050000 	.inst	0x00050000 ; undefined
 744:	000020a0 	.inst	0x000020a0 ; undefined
 748:	29aa0005 	stp	w5, w0, [x0, #-176]!
 74c:	00050000 	.inst	0x00050000 ; undefined
 750:	00000c50 	.inst	0x00000c50 ; undefined
 754:	284f0005 	ldnp	w5, w0, [x0, #120]
 758:	00050000 	.inst	0x00050000 ; undefined
 75c:	000029e4 	.inst	0x000029e4 ; undefined
 760:	246c0005 	cmphs	p5.h, p0/z, z0.h, #48
 764:	00050000 	.inst	0x00050000 ; undefined
 768:	000028ed 	.inst	0x000028ed ; undefined
 76c:	12bf0005 	mov	w5, #0x7ffffff             	// #134217727
 770:	00050000 	.inst	0x00050000 ; undefined
 774:	000005c2 	.inst	0x000005c2 ; undefined
 778:	0a5c0005 	and	w5, w0, w28, lsr #0
 77c:	00050000 	.inst	0x00050000 ; undefined
    vtable_entry    serror_lower_el_a32
 780:	00001c60 	.inst	0x00001c60 ; undefined
ehandler_loop_infinite  sync_cur_el_sp0
 784:	13350005 	.inst	0x13350005 ; undefined
 788:	00050000 	.inst	0x00050000 ; undefined
 78c:	00000231 	.inst	0x00000231 ; undefined
 790:	17d10005 	b	ffffffffff4407a4 <stdout_putp+0xffffffffff43e974>
 794:	00050000 	.inst	0x00050000 ; undefined
 798:	0000116c 	.inst	0x0000116c ; undefined
 79c:	02e60005 	.inst	0x02e60005 ; undefined
 7a0:	00050000 	.inst	0x00050000 ; undefined
 7a4:	00002483 	.inst	0x00002483 ; undefined
 7a8:	1e5d0005 	.inst	0x1e5d0005 ; undefined
 7ac:	00050000 	.inst	0x00050000 ; undefined
 7b0:	00002702 	.inst	0x00002702 ; undefined
 7b4:	28c60005 	ldp	w5, w0, [x0], #48
 7b8:	00050000 	.inst	0x00050000 ; undefined
 7bc:	0000171a 	.inst	0x0000171a ; undefined
 7c0:	25540005 	cmpge	p5.h, p0/z, z0.h, #-12
 7c4:	00050000 	.inst	0x00050000 ; undefined
 7c8:	00000130 	.inst	0x00000130 ; undefined
 7cc:	24410005 	cmphs	p5.h, p0/z, z0.h, z1.h
 7d0:	00050000 	.inst	0x00050000 ; undefined
 7d4:	00000fa1 	.inst	0x00000fa1 ; undefined
 7d8:	19370005 	.inst	0x19370005 ; undefined
ehandler_loop_infinite  irq_cur_el_sp0
 7dc:	00050000 	.inst	0x00050000 ; undefined
 7e0:	00002c59 	.inst	0x00002c59 ; undefined
 7e4:	090b0005 	.inst	0x090b0005 ; undefined
 7e8:	00050000 	.inst	0x00050000 ; undefined
 7ec:	00001c00 	.inst	0x00001c00 ; undefined
 7f0:	035d0005 	.inst	0x035d0005 ; undefined
 7f4:	00050000 	.inst	0x00050000 ; undefined
 7f8:	00000e5d 	.inst	0x00000e5d ; undefined
 7fc:	24080005 	cmphs	p5.b, p0/z, z0.b, z8.b
 800:	00050000 	.inst	0x00050000 ; undefined
 804:	00000ee2 	.inst	0x00000ee2 ; undefined
 808:	1b660005 	.inst	0x1b660005 ; undefined
 80c:	00050000 	.inst	0x00050000 ; undefined
 810:	000011c5 	.inst	0x000011c5 ; undefined
 814:	26e50005 	.inst	0x26e50005 ; undefined
 818:	00050000 	.inst	0x00050000 ; undefined
 81c:	00000fc1 	.inst	0x00000fc1 ; undefined
 820:	24a50005 	cmphs	p5.s, p0/z, z0.s, #20
 824:	00050000 	.inst	0x00050000 ; undefined
 828:	0000118a 	.inst	0x0000118a ; undefined
 82c:	0de80005 	ld2	{v5.b, v6.b}[0], [x0], x8
 830:	00050000 	.inst	0x00050000 ; undefined
ehandler_loop_infinite  fiq_cur_el_sp0
 834:	00000e8b 	.inst	0x00000e8b ; undefined
 838:	2a570005 	orr	w5, w0, w23, lsr #0
 83c:	00050000 	.inst	0x00050000 ; undefined
 840:	00000308 	.inst	0x00000308 ; undefined
 844:	1b1f0006 	madd	w6, w0, wzr, w0
 848:	00050000 	.inst	0x00050000 ; undefined
 84c:	00000785 	.inst	0x00000785 ; undefined
 850:	0b140005 	add	w5, w0, w20
 854:	00060000 	.inst	0x00060000 ; undefined
 858:	00002546 	.inst	0x00002546 ; undefined
 85c:	163e0006 	b	fffffffff8f80874 <stdout_putp+0xfffffffff8f7ea44>
 860:	00050000 	.inst	0x00050000 ; undefined
 864:	00000371 	.inst	0x00000371 ; undefined
 868:	27540006 	.inst	0x27540006 ; undefined
 86c:	00060000 	.inst	0x00060000 ; undefined
 870:	000017c8 	.inst	0x000017c8 ; undefined
 874:	0a9d0006 	and	w6, w0, w29, asr #0
 878:	00060000 	.inst	0x00060000 ; undefined
 87c:	0000051a 	.inst	0x0000051a ; undefined
 880:	081f0006 	stxrb	wzr, w6, [x0]
 884:	00060000 	.inst	0x00060000 ; undefined
 888:	00000a02 	.inst	0x00000a02 ; undefined
ehandler_loop_infinite  serror_cur_el_sp0
 88c:	262b0005 	.inst	0x262b0005 ; undefined
 890:	00060000 	.inst	0x00060000 ; undefined
 894:	000009ec 	.inst	0x000009ec ; undefined
 898:	0a440006 	and	w6, w0, w4, lsr #0
 89c:	00060000 	.inst	0x00060000 ; undefined
 8a0:	00002153 	.inst	0x00002153 ; undefined
 8a4:	297a0006 	ldp	w6, w0, [x0, #-48]
 8a8:	00050000 	.inst	0x00050000 ; undefined
 8ac:	00000493 	.inst	0x00000493 ; undefined
 8b0:	00000006 	.inst	0x00000006 ; undefined
 8b4:	00060000 	.inst	0x00060000 ; undefined
 8b8:	00001e98 	.inst	0x00001e98 ; undefined
 8bc:	03b60006 	.inst	0x03b60006 ; undefined
 8c0:	00060000 	.inst	0x00060000 ; undefined
 8c4:	000005ef 	.inst	0x000005ef ; undefined
 8c8:	2ccb0006 	ldp	s6, s0, [x0], #88
 8cc:	00060000 	.inst	0x00060000 ; undefined
 8d0:	00000d62 	.inst	0x00000d62 ; undefined
 8d4:	14d20006 	b	34808ec <stdout_putp+0x347eabc>
 8d8:	00060000 	.inst	0x00060000 ; undefined
 8dc:	00000be7 	.inst	0x00000be7 ; undefined
 8e0:	28230006 	stnp	w6, w0, [x0, #-232]
ehandler_loop_infinite  sync_cur_el_spx
 8e4:	00060000 	.inst	0x00060000 ; undefined
 8e8:	0000224e 	.inst	0x0000224e ; undefined
 8ec:	0ef60006 	.inst	0x0ef60006 ; undefined
 8f0:	00060000 	.inst	0x00060000 ; undefined
 8f4:	00001257 	.inst	0x00001257 ; undefined
 8f8:	08600006 	.inst	0x08600006 ; undefined
 8fc:	00060000 	.inst	0x00060000 ; undefined
 900:	0000208c 	.inst	0x0000208c ; undefined
 904:	14a40005 	b	2900918 <stdout_putp+0x28feae8>
 908:	00060000 	.inst	0x00060000 ; undefined
 90c:	00001465 	.inst	0x00001465 ; undefined
 910:	0c6b0005 	.inst	0x0c6b0005 ; undefined
 914:	00050000 	.inst	0x00050000 ; undefined
 918:	00001098 	.inst	0x00001098 ; undefined
 91c:	07920005 	.inst	0x07920005 ; undefined
 920:	04000000 	add	z0.b, p0/m, z0.b, z0.b
 924:	02050000 	.inst	0x02050000 ; undefined
 928:	000024df 	.inst	0x000024df ; undefined
 92c:	0cf31205 	.inst	0x0cf31205 ; undefined
 930:	14050000 	b	140930 <stdout_putp+0x13eb00>
 934:	0000076e 	.inst	0x0000076e ; undefined
 938:	00000400 	.inst	0x00000400 ; undefined
ehandler_loop_infinite  fiq_cur_el_spx
 93c:	279e0405 	.inst	0x279e0405 ; undefined
 940:	05050000 	.inst	0x05050000 ; undefined
 944:	00002c8d 	.inst	0x00002c8d ; undefined
 948:	00000400 	.inst	0x00000400 ; undefined
 94c:	08a91f05 	.inst	0x08a91f05 ; undefined
 950:	20050000 	.inst	0x20050000 ; undefined
 954:	0000237e 	.inst	0x0000237e ; undefined
 958:	15332206 	b	4cc9170 <stdout_putp+0x4cc7340>
 95c:	27050000 	.inst	0x27050000 ; undefined
 960:	000023e3 	.inst	0x000023e3 ; undefined
 964:	09202f05 	.inst	0x09202f05 ; undefined
 968:	30050000 	adr	x0, a969 <stdout_putp+0x8b39>
 96c:	00001583 	.inst	0x00001583 ; undefined
 970:	206a3105 	.inst	0x206a3105 ; undefined
 974:	34050000 	cbz	w0, a974 <stdout_putp+0x8b44>
 978:	00001abf 	.inst	0x00001abf ; undefined
 97c:	1abd3605 	.inst	0x1abd3605 ; undefined
 980:	69050000 	stgp	x0, x0, [x0, #160]
 984:	00000e0e 	.inst	0x00000e0e ; undefined
 988:	23e96c05 	.inst	0x23e96c05 ; undefined
 98c:	6f050000 	.inst	0x6f050000 ; undefined
 990:	00000295 	.inst	0x00000295 ; undefined
ehandler_loop_infinite  serror_cur_el_spx
 994:	05a47205 	trn1	z5.s, z16.s, z4.s
 998:	75050000 	.inst	0x75050000 ; undefined
 99c:	000015b4 	.inst	0x000015b4 ; undefined
 9a0:	00000400 	.inst	0x00000400 ; undefined
 9a4:	25876705 	nor	p5.b, p9/z, p8.b, p7.b
 9a8:	68050000 	.inst	0x68050000 ; undefined
 9ac:	000009c5 	.inst	0x000009c5 ; undefined
 9b0:	02000400 	.inst	0x02000400 ; undefined
 9b4:	000001a8 	.inst	0x000001a8 ; undefined
 9b8:	00004907 	.inst	0x00004907 ; undefined
 9bc:	01000300 	.inst	0x01000300 ; undefined
 9c0:	07030103 	.inst	0x07030103 ; undefined
 9c4:	00000a0d 	.inst	0x00000a0d ; undefined
 9c8:	04020304 	.inst	0x04020304 ; undefined
 9cc:	000a4707 	.inst	0x000a4707 ; undefined
 9d0:	03030400 	.inst	0x03030400 ; undefined
 9d4:	09230702 	.inst	0x09230702 ; undefined
 9d8:	03040000 	.inst	0x03040000 ; undefined
 9dc:	02050504 	.inst	0x02050504 ; undefined
 9e0:	000007c0 	.inst	0x000007c0 ; undefined
 9e4:	04020403 	.inst	0x04020403 ; undefined
 9e8:	06050304 	.inst	0x06050304 ; undefined
ehandler_loop_infinite  sync_lower_el_a64
 9ec:	07060304 	.inst	0x07060304 ; undefined
 9f0:	0aee5c05 	bic	w5, w0, w14, ror #23
 9f4:	5e030000 	sha1c	q0, s0, v3.4s
 9f8:	09490708 	.inst	0x09490708 ; undefined
 9fc:	07040000 	.inst	0x07040000 ; undefined
 a00:	000009a1 	.inst	0x000009a1 ; undefined
 a04:	e5080504 	.inst	0xe5080504 ; undefined
 a08:	04000035 	add	z21.b, p0/m, z21.b, z1.b
 a0c:	00000400 	.inst	0x00000400 ; undefined
 a10:	3b640205 	.inst	0x3b640205 ; undefined
 a14:	04050000 	.inst	0x04050000 ; undefined
 a18:	000030d6 	.inst	0x000030d6 ; undefined
 a1c:	2fe20505 	.inst	0x2fe20505 ; undefined
 a20:	06050000 	.inst	0x06050000 ; undefined
 a24:	000034e5 	.inst	0x000034e5 ; undefined
 a28:	37cd0705 	tbnz	w5, #25, ffffffffffffab08 <stdout_putp+0xffffffffffff8cd8>
 a2c:	09050000 	.inst	0x09050000 ; undefined
 a30:	0000370c 	.inst	0x0000370c ; undefined
 a34:	3b510c05 	.inst	0x3b510c05 ; undefined
 a38:	0e050000 	tbl	v0.8b, {v0.16b}, v5.8b
 a3c:	00003633 	.inst	0x00003633 ; undefined
 a40:	2e7d1005 	uaddw	v5.4s, v0.4s, v29.4h
ehandler_loop_infinite  irq_lower_el_a64
 a44:	04000000 	add	z0.b, p0/m, z0.b, z0.b
 a48:	02050000 	.inst	0x02050000 ; undefined
 a4c:	0000337a 	.inst	0x0000337a ; undefined
 a50:	3a300505 	.inst	0x3a300505 ; undefined
 a54:	06050000 	.inst	0x06050000 ; undefined
 a58:	000036d8 	.inst	0x000036d8 ; undefined
 a5c:	32120705 	orr	w5, w24, #0xc000
 a60:	08050000 	stxrb	w5, w0, [x0]
 a64:	00002e19 	.inst	0x00002e19 ; undefined
 a68:	31630905 	adds	w5, w8, #0x8c2, lsl #12
 a6c:	0a050000 	and	w0, w0, w5
 a70:	000034c9 	.inst	0x000034c9 ; undefined
 a74:	36b40b05 	tbz	w5, #22, ffffffffffff8bd4 <stdout_putp+0xffffffffffff6da4>
 a78:	0c050000 	.inst	0x0c050000 ; undefined
 a7c:	00003793 	.inst	0x00003793 ; undefined
 a80:	38e70d05 	.inst	0x38e70d05 ; undefined
 a84:	0e050000 	tbl	v0.8b, {v0.16b}, v5.8b
 a88:	0000371f 	.inst	0x0000371f ; undefined
 a8c:	317e0f05 	adds	w5, w24, #0xf83, lsl #12
 a90:	10050000 	adr	x0, aa90 <stdout_putp+0x8c60>
 a94:	0000396f 	.inst	0x0000396f ; undefined
 a98:	33471105 	.inst	0x33471105 ; undefined
ehandler_loop_infinite  fiq_lower_el_a64
 a9c:	14050000 	b	140a9c <stdout_putp+0x13ec6c>
 aa0:	000038b2 	.inst	0x000038b2 ; undefined
 aa4:	2ed61505 	fabd	v5.4h, v8.4h, v22.4h
 aa8:	18050000 	ldr	w0, aaa8 <stdout_putp+0x8c78>
 aac:	0000384f 	.inst	0x0000384f ; undefined
 ab0:	37af1b05 	tbnz	w5, #21, ffffffffffffee10 <stdout_putp+0xffffffffffffcfe0>
 ab4:	1c050000 	ldr	s0, aab4 <stdout_putp+0x8c84>
 ab8:	00002e03 	.inst	0x00002e03 ; undefined
 abc:	076e1f05 	.inst	0x076e1f05 ; undefined
 ac0:	20050000 	.inst	0x20050000 ; undefined
 ac4:	000031dc 	.inst	0x000031dc ; undefined
 ac8:	279e2205 	.inst	0x279e2205 ; undefined
 acc:	23050000 	.inst	0x23050000 ; undefined
 ad0:	00002c8d 	.inst	0x00002c8d ; undefined
 ad4:	382d2405 	.inst	0x382d2405 ; undefined
 ad8:	25050000 	cmpge	p0.b, p0/z, z0.b, #5
 adc:	00003919 	.inst	0x00003919 ; undefined
 ae0:	35a42605 	cbnz	w5, fffffffffff48fa0 <stdout_putp+0xfffffffffff47170>
 ae4:	29050000 	stp	w0, w0, [x0, #40]
 ae8:	00003385 	.inst	0x00003385 ; undefined
 aec:	33602a05 	.inst	0x33602a05 ; undefined
 af0:	2c050000 	stnp	s0, s0, [x0, #40]
ehandler_loop_infinite  serror_lower_el_a64
 af4:	0000351f 	.inst	0x0000351f ; undefined
 af8:	31b72d05 	.inst	0x31b72d05 ; undefined
 afc:	2f050000 	.inst	0x2f050000 ; undefined
 b00:	0000346d 	.inst	0x0000346d ; undefined
 b04:	303a3005 	adr	x5, 75105 <stdout_putp+0x732d5>
 b08:	32050000 	orr	w0, w0, #0x8000000
 b0c:	00003487 	.inst	0x00003487 ; undefined
 b10:	3b7a3405 	.inst	0x3b7a3405 ; undefined
 b14:	38050000 	sturb	w0, [x0, #80]
 b18:	00003774 	.inst	0x00003774 ; undefined
 b1c:	373c3905 	tbnz	w5, #7, ffffffffffff923c <stdout_putp+0xffffffffffff740c>
 b20:	3a050000 	adcs	w0, w0, w5
 b24:	00003bbe 	.inst	0x00003bbe ; undefined
 b28:	380e3b05 	sttrb	w5, [x24, #227]
 b2c:	3f050000 	.inst	0x3f050000 ; undefined
 b30:	00002f74 	.inst	0x00002f74 ; undefined
 b34:	32624005 	.inst	0x32624005 ; undefined
 b38:	41050000 	.inst	0x41050000 ; undefined
 b3c:	00003578 	.inst	0x00003578 ; undefined
 b40:	3ac94205 	.inst	0x3ac94205 ; undefined
 b44:	43050000 	.inst	0x43050000 ; undefined
 b48:	00002e6d 	.inst	0x00002e6d ; undefined
ehandler_loop_infinite  sync_lower_el_a32
 b4c:	32b84405 	.inst	0x32b84405 ; undefined
 b50:	45050000 	.inst	0x45050000 ; undefined
 b54:	00003885 	.inst	0x00003885 ; undefined
 b58:	30fc4605 	adr	x5, ffffffffffff9419 <stdout_putp+0xffffffffffff75e9>
 b5c:	49050000 	.inst	0x49050000 ; undefined
 b60:	00002f93 	.inst	0x00002f93 ; undefined
 b64:	3b014a05 	.inst	0x3b014a05 ; undefined
 b68:	4b050000 	sub	w0, w0, w5
 b6c:	0000312b 	.inst	0x0000312b ; undefined
 b70:	353d4c05 	cbnz	w5, 7b4f0 <stdout_putp+0x796c0>
 b74:	50050000 	adr	x0, ab76 <stdout_putp+0x8d46>
 b78:	0000343a 	.inst	0x0000343a ; undefined
 b7c:	37e45105 	tbnz	w5, #28, ffffffffffff959c <stdout_putp+0xffffffffffff776c>
 b80:	52050000 	eor	w0, w0, #0x8000000
 b84:	000034f8 	.inst	0x000034f8 ; undefined
 b88:	31985305 	.inst	0x31985305 ; undefined
 b8c:	54050000 	b.eq	ab8c <stdout_putp+0x8d5c>  // b.none
 b90:	000032a9 	.inst	0x000032a9 ; undefined
 b94:	38765505 	.inst	0x38765505 ; undefined
 b98:	56050000 	.inst	0x56050000 ; undefined
 b9c:	000033f7 	.inst	0x000033f7 ; undefined
 ba0:	36095705 	tbz	w5, #1, 3680 <stdout_putp+0x1850>
ehandler_loop_infinite  irq_lower_el_a32
 ba4:	5a050000 	sbc	w0, w0, w5
 ba8:	0000339a 	.inst	0x0000339a ; undefined
 bac:	3ba25b05 	.inst	0x3ba25b05 ; undefined
 bb0:	5c050000 	ldr	d0, abb0 <stdout_putp+0x8d80>
 bb4:	00003097 	.inst	0x00003097 ; undefined
 bb8:	2f585d05 	.inst	0x2f585d05 ; undefined
 bbc:	5e050000 	sha1c	q0, s0, v5.4s
 bc0:	0000331d 	.inst	0x0000331d ; undefined
 bc4:	39a45f05 	ldrsb	x5, [x24, #2327]
 bc8:	60050000 	.inst	0x60050000 ; undefined
 bcc:	00003588 	.inst	0x00003588 ; undefined
 bd0:	2de76105 	ldp	s5, s24, [x8, #-200]!
 bd4:	66050000 	.inst	0x66050000 ; undefined
 bd8:	00003149 	.inst	0x00003149 ; undefined
 bdc:	36916705 	tbz	w5, #18, 38bc <stdout_putp+0x1a8c>
 be0:	68050000 	.inst	0x68050000 ; undefined
 be4:	000038cd 	.inst	0x000038cd ; undefined
 be8:	30586905 	adr	x5, b1909 <stdout_putp+0xafad9>
 bec:	6a050000 	ands	w0, w0, w5
 bf0:	000033b6 	.inst	0x000033b6 ; undefined
 bf4:	3bdd6b05 	.inst	0x3bdd6b05 ; undefined
 bf8:	6c050000 	stnp	d0, d0, [x0, #80]
ehandler_loop_infinite  fiq_lower_el_a32
 bfc:	00002d86 	.inst	0x00002d86 ; undefined
 c00:	3c1b6d05 	str	b5, [x8, #-74]!
 c04:	6e050000 	ext	v0.16b, v0.16b, v5.16b, #0
 c08:	00003b1f 	.inst	0x00003b1f ; undefined
 c0c:	34066f05 	cbz	w5, d9ec <stdout_putp+0xbbbc>
 c10:	72050000 	ands	w0, w0, #0x8000000
 c14:	000037f3 	.inst	0x000037f3 ; undefined
 c18:	3c4f7305 	ldur	b5, [x24, #247]
 c1c:	74050000 	.inst	0x74050000 ; undefined
 c20:	000036f1 	.inst	0x000036f1 ; undefined
 c24:	34ae7505 	cbz	w5, fffffffffff5dac4 <stdout_putp+0xfffffffffff5bc94>
 c28:	76050000 	.inst	0x76050000 ; undefined
 c2c:	00003b36 	.inst	0x00003b36 ; undefined
 c30:	3c347705 	.inst	0x3c347705 ; undefined
 c34:	78050000 	sturh	w0, [x0, #80]
 c38:	00003663 	.inst	0x00003663 ; undefined
 c3c:	3c8f7905 	.inst	0x3c8f7905 ; undefined
 c40:	7a050000 	sbcs	w0, w0, w5
 c44:	0000328e 	.inst	0x0000328e ; undefined
 c48:	36187b05 	tbz	w5, #3, 1ba8 <dump_regs+0x2c>
 c4c:	7c050000 	stur	h0, [x0, #80]
 c50:	000039dd 	.inst	0x000039dd ; undefined
ehandler_loop_infinite  serror_lower_el_a32
 c54:	301f7d05 	adr	x5, 3fbf5 <stdout_putp+0x3ddc5>
 c58:	7e050000 	.inst	0x7e050000 ; undefined
 c5c:	00003a95 	.inst	0x00003a95 ; undefined
 c60:	3a157f05 	.inst	0x3a157f05 ; undefined
 c64:	80050000 	.inst	0x80050000 ; undefined
 c68:	0032e501 	.inst	0x0032e501 ; NYI
 c6c:	01810500 	.inst	0x01810500 ; undefined
 c70:	000035ca 	.inst	0x000035ca ; undefined
 c74:	c0018405 	.inst	0xc0018405 ; undefined
 c78:	05000039 	orr	z25.s, z25.s, #0x3
 c7c:	39f80185 	ldrsb	w5, [x12, #3584]
 c80:	86050000 	.inst	0x86050000 ; undefined
 c84:	00355b01 	.inst	0x00355b01 ; NYI
 c88:	01870500 	.inst	0x01870500 ; undefined
 c8c:	0000341d 	.inst	0x0000341d ; undefined
 c90:	95018805 	bl	4062ca4 <stdout_putp+0x4060e74>
 c94:	05000038 	orr	z24.s, z24.s, #0x3
 c98:	32c80189 	.inst	0x32c80189 ; undefined
 c9c:	8a050000 	and	x0, x0, x5
 ca0:	003c6a01 	.inst	0x003c6a01 ; NYI
 ca4:	018b0500 	.inst	0x018b0500 ; undefined
 ca8:	00002ee8 	.inst	0x00002ee8 ; undefined
    context_save
 cac:	bf018c05 	.inst	0xbf018c05 ; undefined
 cb0:	0500002d 	orr	z13.s, z13.s, #0x3
 cb4:	3ad9018d 	.inst	0x3ad9018d ; undefined
 cb8:	8e050000 	.inst	0x8e050000 ; undefined
 cbc:	00307a01 	.inst	0x00307a01 ; NYI
 cc0:	018f0500 	.inst	0x018f0500 ; undefined
 cc4:	00003952 	.inst	0x00003952 ; undefined
 cc8:	00019005 	.inst	0x00019005 ; undefined
 ccc:	05000033 	orr	z19.s, z19.s, #0x3
 cd0:	33cf0191 	.inst	0x33cf0191 ; undefined
 cd4:	92050000 	and	x0, x0, #0x800000008000000
 cd8:	00300201 	.inst	0x00300201 ; NYI
 cdc:	01930500 	.inst	0x01930500 ; undefined
 ce0:	00002e38 	.inst	0x00002e38 ; undefined
 ce4:	c3019605 	.inst	0xc3019605 ; undefined
 ce8:	0500002f 	orr	z15.s, z15.s, #0x3
 cec:	3bf6019a 	.inst	0x3bf6019a ; undefined
 cf0:	9c050000 	ldr	q0, acf0 <stdout_putp+0x8ec0>
 cf4:	002f2001 	.inst	0x002f2001 ; NYI
 cf8:	019d0500 	.inst	0x019d0500 ; undefined
    bl irq_handler
 cfc:	00002f3f 	.inst	0x00002f3f ; undefined
    context_restore
 d00:	49019e05 	.inst	0x49019e05 ; undefined
 d04:	05000032 	orr	z18.s, z18.s, #0x3
 d08:	3230019f 	orr	wsp, w12, #0x10000
 d0c:	a0050000 	.inst	0xa0050000 ; undefined
 d10:	003ab001 	.inst	0x003ab001 ; NYI
 d14:	01a10500 	.inst	0x01a10500 ; undefined
 d18:	0000364a 	.inst	0x0000364a ; undefined
 d1c:	8b01a205 	add	x5, x16, x1, lsl #40
 d20:	05000039 	orr	z25.s, z25.s, #0x3
 d24:	31f901a3 	.inst	0x31f901a3 ; undefined
 d28:	a4050000 	ld1rqb	{z0.b}, p0/z, [x0, x5]
 d2c:	00375b01 	.inst	0x00375b01 ; NYI
 d30:	01a60500 	.inst	0x01a60500 ; undefined
 d34:	00003a48 	.inst	0x00003a48 ; undefined
 d38:	9f01a705 	.inst	0x9f01a705 ; undefined
 d3c:	0500002d 	orr	z13.s, z13.s, #0x3
 d40:	327201a8 	.inst	0x327201a8 ; undefined
    eret
 d44:	aa050000 	orr	x0, x0, x5
    mrs x0, mpidr_el1
 d48:	00310c01 	.inst	0x00310c01 ; NYI
    and x0, x0, #0xFF
 d4c:	01ab0500 	.inst	0x01ab0500 ; undefined
    cbnz x0, halt_proc
 d50:	00003449 	.inst	0x00003449 ; undefined
    adr x0, __bss_start
 d54:	b301ac05 	.inst	0xb301ac05 ; undefined
    adr x1, __bss_end
 d58:	00000030 	.inst	0x00000030 ; undefined
    sub x1, x1, x0
 d5c:	11020004 	add	w4, w0, #0x80
    bl   memzero
 d60:	07000004 	.inst	0x07000004 ; undefined
    bl el1_setup
 d64:	00000049 	.inst	0x00000049 ; undefined
    b   kernel_main
 d68:	03010003 	.inst	0x03010003 ; undefined
    wfe
 d6c:	a8070301 	stnp	x1, x0, [x24, #112]
    b halt_proc
 d70:	0400000d 	add	z13.b, p0/m, z13.b, z0.b
    ldr x0, =(SCTLR_EL1_EE_LITTLE | SCTLR_EL1_E0E_LITTLE |\
 d74:	07040203 	.inst	0x07040203 ; undefined
    msr SCTLR_EL1, x0
 d78:	00000a47 	.inst	0x00000a47 ; undefined
    ldr x0, =(SCR_EL3_RW_AARCH64 | SCR_EL3_NS)
 d7c:	05030304 	orr	z4.d, z4.d, #0x1ffffff00000000
    msr SCR_EL3, x0
 d80:	0aee5c05 	bic	w5, w0, w14, ror #23
    ldr x0, =(HCR_EL2_RW_AARCH64)
 d84:	5e030000 	sha1c	q0, s0, v3.4s
    msr HCR_EL2, x0 
 d88:	09490706 	.inst	0x09490706 ; undefined
    msr ELR_EL3, lr
 d8c:	07040000 	.inst	0x07040000 ; undefined
    ldr x0, =(SPSR_MODE_EL1h | SPSR_MASK_EXCEPTIONS)
 d90:	000009a1 	.inst	0x000009a1 ; undefined
    msr SPSR_EL3, x0
 d94:	02040304 	.inst	0x02040304 ; undefined
    ldr x0, =STACK_BASE
 d98:	00092307 	.inst	0x00092307 ; undefined
    msr SP_EL1, x0
 d9c:	06030400 	.inst	0x06030400 ; undefined
    eret
 da0:	07030407 	.inst	0x07030407 ; undefined
 da4:	00040408 	.inst	0x00040408 ; undefined
 da8:	05000004 	orr	z4.s, z4.s, #0x1
 dac:	003b6402 	.inst	0x003b6402 ; NYI
 db0:	d6040500 	.inst	0xd6040500 ; undefined
 db4:	05000030 	orr	z16.s, z16.s, #0x3
 db8:	002fe205 	.inst	0x002fe205 ; NYI
 dbc:	e5060500 	.inst	0xe5060500 ; undefined
 dc0:	05000034 	orr	z20.s, z20.s, #0x3
 dc4:	0037cd07 	.inst	0x0037cd07 ; NYI
 dc8:	0c090500 	.inst	0x0c090500 ; undefined
 dcc:	05000037 	orr	z23.s, z23.s, #0x3
    ldr x0, =vector_table
 dd0:	003caa0c 	.inst	0x003caa0c ; NYI
    msr VBAR_EL1, x0
 dd4:	330e0500 	bfi	w0, w8, #18, #2
    ret
 dd8:	05000036 	orr	z22.s, z22.s, #0x3
    msr daifclr, #2
 ddc:	002e7d10 	.inst	0x002e7d10 ; NYI
    ret
 de0:	00040000 	.inst	0x00040000 ; undefined
    msr daifset, #2
 de4:	00061302 	.inst	0x00061302 ; undefined
    ret
 de8:	00490700 	.inst	0x00490700 ; undefined
 dec:	00030000 	.inst	0x00030000 ; undefined
 df0:	05010301 	orr	z1.s, z1.s, #0x1ffffff
 df4:	000da807 	.inst	0x000da807 ; undefined
    str  xzr, [x0], #8
 df8:	02030400 	.inst	0x02030400 ; undefined
    subs x1, x1, #8
 dfc:	02010303 	.inst	0x02010303 ; undefined
    b.gt memzero
 e00:	00092307 	.inst	0x00092307 ; undefined
    ret
 e04:	39070400 	strb	w0, [x0, #449]
{
 e08:	04000009 	add	z9.b, p0/m, z9.b, z0.b
 e0c:	05040303 	.inst	0x05040303 ; undefined
 e10:	003e0703 	.inst	0x003e0703 ; NYI
    init_uart();
 e14:	04030400 	subr	z0.b, p1/m, z0.b, z0.b
    init_printf(0, putc);
 e18:	c0020506 	.inst	0xc0020506 ; undefined
 e1c:	04000007 	add	z7.b, p0/m, z7.b, z0.b
 e20:	00040004 	.inst	0x00040004 ; undefined
 e24:	00075302 	.inst	0x00075302 ; undefined
    printf("Core %d up at Exception level %d\n", get_core_id(), get_el());
 e28:	00490700 	.inst	0x00490700 ; undefined
 e2c:	00030000 	.inst	0x00030000 ; undefined
 e30:	04160301 	.inst	0x04160301 ; undefined
 e34:	0aee5c05 	bic	w5, w0, w14, ror #23
 e38:	5e030000 	sha1c	q0, s0, v3.4s
 e3c:	09490702 	.inst	0x09490702 ; undefined
 e40:	07040000 	.inst	0x07040000 ; undefined
 e44:	000009a1 	.inst	0x000009a1 ; undefined
    init_interrupts();
 e48:	04000404 	add	z4.b, p1/m, z4.b, z0.b
        if(uart_read_available()){
 e4c:	0aaf0200 	bic	w0, w16, w15, asr #0
 e50:	49070000 	.inst	0x49070000 ; undefined
 e54:	03000000 	.inst	0x03000000 ; undefined
 e58:	01030100 	.inst	0x01030100 ; undefined
            uart_write('\n');
 e5c:	c0020503 	.inst	0xc0020503 ; undefined
 e60:	03000007 	.inst	0x03000007 ; undefined
            uart_write(uart_read());
 e64:	23070204 	.inst	0x23070204 ; undefined
 e68:	04000009 	add	z9.b, p0/m, z9.b, z0.b
 e6c:	04020304 	.inst	0x04020304 ; undefined
        if(uart_read_available()){
 e70:	0aee5c05 	bic	w5, w0, w14, ror #23
{
 e74:	5e030000 	sha1c	q0, s0, v3.4s
 e78:	09490705 	.inst	0x09490705 ; undefined
    mmio_write(CORE0_TIMER_IRQCNTL, TIMER3_IRQ);
 e7c:	07040000 	.inst	0x07040000 ; undefined
 e80:	000009a1 	.inst	0x000009a1 ; undefined
 e84:	Address 0x0000000000000e84 is out of bounds.


Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
{
   0:	000000ff 	.inst	0x000000ff ; undefined
    cntv_ctl = 0;
   4:	00d30003 	.inst	0x00d30003 ; undefined
	asm volatile ("msr cntv_ctl_el0, %0" :: "r" (cntv_ctl));
   8:	01040000 	.inst	0x01040000 ; undefined
   c:	000d0efb 	.inst	0x000d0efb ; undefined
}
  10:	01010101 	.inst	0x01010101 ; undefined
  14:	01000000 	.inst	0x01000000 ; undefined
  18:	73010000 	.inst	0x73010000 ; undefined
    {
  1c:	69006372 	stgp	x18, x24, [x27]
  20:	756c636e 	.inst	0x756c636e ; undefined
  24:	2f006564 	mvni	v4.2s, #0xb, lsl #24
    va_start(va,fmt);
  28:	656d6f68 	fnmls	z8.h, p3/m, z27.h, z13.h
  2c:	6862612f 	.inst	0x6862612f ; undefined
  30:	65687369 	fnmls	z9.h, p4/m, z27.h, z8.h
  34:	6f442f6b 	.inst	0x6f442f6b ; undefined
  38:	6f6c6e77 	.inst	0x6f6c6e77 ; undefined
  3c:	2f736461 	.inst	0x2f736461 ; undefined
  40:	2d636367 	ldp	s7, s24, [x27, #-232]
  44:	2d6d7261 	ldp	s1, s28, [x19, #-152]
  48:	2d332e38 	stp	s24, s11, [x17, #-104]
    tfp_format(&s,putcp,fmt,va);
  4c:	39313032 	strb	w18, [x1, #3148]
  50:	2d33302e 	stp	s14, s12, [x1, #-104]
  54:	5f363878 	.inst	0x5f363878 ; undefined
  58:	612d3436 	.inst	0x612d3436 ; undefined
  5c:	68637261 	.inst	0x68637261 ; undefined
  60:	652d3436 	.inst	0x652d3436 ; undefined
  64:	6c2f666c 	stnp	d12, d25, [x19, #-272]
  68:	672f6269 	.inst	0x672f6269 ; undefined
  6c:	612f6363 	.inst	0x612f6363 ; undefined
  70:	68637261 	.inst	0x68637261 ; undefined
  74:	652d3436 	.inst	0x652d3436 ; undefined
  78:	382f666c 	.inst	0x382f666c ; undefined
  7c:	302e332e 	adr	x14, 5c6e1 <stdout_putp+0x5a8b1>
  80:	636e692f 	.inst	0x636e692f ; undefined
    putcp(&s,0);
  84:	6564756c 	fnmls	z12.h, p5/m, z11.h, z4.h
  88:	656b0000 	fmla	z0.h, p0/m, z0.h, z11.h
  8c:	6c656e72 	ldnp	d18, d27, [x19, #-432]
    }
  90:	69616d5f 	ldpsw	xzr, x27, [x10, #-248]
  94:	00632e6e 	.inst	0x00632e6e ; undefined
  98:	75000001 	.inst	0x75000001 ; undefined
    vtable_entry    irq_cur_el_sp0
  9c:	2e747261 	uabdl	v1.4s, v19.4h, v20.4h
  a0:	00020068 	.inst	0x00020068 ; undefined
  a4:	70797400 	adr	x0, f2f27 <stdout_putp+0xf10f7>
  a8:	682e7365 	.inst	0x682e7365 ; undefined
  ac:	00000200 	.inst	0x00000200 ; undefined
  b0:	6e697270 	uabdl2	v16.4s, v19.8h, v9.8h
  b4:	682e6674 	.inst	0x682e6674 ; undefined
  b8:	00000200 	.inst	0x00000200 ; undefined
  bc:	61647473 	.inst	0x61647473 ; undefined
  c0:	682e6772 	.inst	0x682e6772 ; undefined
  c4:	00000300 	.inst	0x00000300 ; undefined
  c8:	6c697475 	ldnp	d21, d29, [x3, #-368]
  cc:	00682e73 	.inst	0x00682e73 ; undefined
  d0:	69000002 	stgp	x2, x0, [x0]
  d4:	682e7172 	.inst	0x682e7172 ; undefined
  d8:	00000200 	.inst	0x00000200 ; undefined
  dc:	00010500 	.inst	0x00010500 ; undefined
  e0:	0e080209 	tbl	v9.8b, {v16.16b}, v8.8b
  e4:	00000000 	.inst	0x00000000 ; undefined
  e8:	05180000 	mov	z0.b, p8/z, #0
  ec:	4b213d05 	.inst	0x4b213d05 ; undefined
  f0:	220c0584 	.inst	0x220c0584 ; undefined
  f4:	052e0b05 	ext	z5.b, z5.b, z24.b, #114
  f8:	052f2f0d 	.inst	0x052f2f0d ; undefined
  fc:	01023a0b 	.inst	0x01023a0b ; undefined
    vtable_entry    fiq_cur_el_sp0
 100:	a1010100 	.inst	0xa1010100 ; undefined
 104:	03000000 	.inst	0x03000000 ; undefined
 108:	00002b00 	.inst	0x00002b00 ; undefined
 10c:	fb010400 	.inst	0xfb010400 ; undefined
 110:	01000d0e 	.inst	0x01000d0e ; undefined
 114:	00010101 	.inst	0x00010101 ; undefined
 118:	00010000 	.inst	0x00010000 ; undefined
 11c:	72730100 	.inst	0x72730100 ; undefined
 120:	6e692f63 	uqsub	v3.8h, v27.8h, v9.8h
 124:	00007469 	.inst	0x00007469 ; undefined
 128:	5f717269 	sqdmlsl	s9, h19, v1.h[3]
 12c:	72746e65 	.inst	0x72746e65 ; undefined
 130:	00532e79 	.inst	0x00532e79 ; undefined
 134:	00000001 	.inst	0x00000001 ; undefined
 138:	00020900 	.inst	0x00020900 ; undefined
 13c:	00000000 	.inst	0x00000000 ; undefined
 140:	03000000 	.inst	0x03000000 ; undefined
 144:	080100c7 	stxrb	w1, w7, [x6]
 148:	08e508e5 	.inst	0x08e508e5 ; undefined
 14c:	08e608e5 	.inst	0x08e608e5 ; undefined
 150:	08e508e5 	.inst	0x08e508e5 ; undefined
 154:	08e608e5 	.inst	0x08e608e5 ; undefined
 158:	08e508e5 	.inst	0x08e508e5 ; undefined
 15c:	08e608e5 	.inst	0x08e608e5 ; undefined
 160:	08e508e5 	.inst	0x08e508e5 ; undefined
 164:	590824e5 	.inst	0x590824e5 ; undefined
 168:	59085908 	.inst	0x59085908 ; undefined
 16c:	5a085a08 	.inst	0x5a085a08 ; undefined
 170:	5a085908 	.inst	0x5a085908 ; undefined
 174:	59085908 	.inst	0x59085908 ; undefined
 178:	5a085908 	.inst	0x5a085908 ; undefined
 17c:	59085908 	.inst	0x59085908 ; undefined
    vtable_entry    serror_cur_el_sp0
 180:	5b085908 	.inst	0x5b085908 ; undefined
 184:	08213d08 	.inst	0x08213d08 ; undefined
 188:	00010213 	.inst	0x00010213 ; undefined
 18c:	09000101 	.inst	0x09000101 ; undefined
 190:	000dd002 	.inst	0x000dd002 ; undefined
 194:	00000000 	.inst	0x00000000 ; undefined
 198:	00fb0300 	.inst	0x00fb0300 ; undefined
 19c:	24212101 	cmplo	p1.b, p0/z, z8.b, #4
 1a0:	02212421 	.inst	0x02212421 ; undefined
 1a4:	01010004 	.inst	0x01010004 ; undefined
 1a8:	00000265 	.inst	0x00000265 ; undefined
 1ac:	00e10003 	.inst	0x00e10003 ; undefined
 1b0:	01040000 	.inst	0x01040000 ; undefined
 1b4:	000d0efb 	.inst	0x000d0efb ; undefined
 1b8:	01010101 	.inst	0x01010101 ; undefined
 1bc:	01000000 	.inst	0x01000000 ; undefined
 1c0:	73010000 	.inst	0x73010000 ; undefined
 1c4:	692f6372 	stgp	x18, x24, [x27, #-544]
 1c8:	0074696e 	.inst	0x0074696e ; undefined
 1cc:	6c636e69 	ldnp	d9, d27, [x19, #-464]
 1d0:	00656475 	.inst	0x00656475 ; undefined
 1d4:	6d6f682f 	ldp	d15, d26, [x1, #-272]
 1d8:	62612f65 	.inst	0x62612f65 ; undefined
 1dc:	68736968 	.inst	0x68736968 ; undefined
 1e0:	442f6b65 	.inst	0x442f6b65 ; undefined
 1e4:	6c6e776f 	ldnp	d15, d29, [x27, #-288]
 1e8:	7364616f 	.inst	0x7364616f ; undefined
 1ec:	6363672f 	.inst	0x6363672f ; undefined
 1f0:	6d72612d 	ldp	d13, d24, [x9, #-224]
 1f4:	332e382d 	.inst	0x332e382d ; undefined
 1f8:	3130322d 	adds	w13, w17, #0xc0c
 1fc:	33302e39 	.inst	0x33302e39 ; undefined
    vtable_entry    sync_cur_el_spx
 200:	3638782d 	tbz	w13, #7, 1104 <init_uart+0x10>
 204:	2d34365f 	stp	s31, s13, [x18, #-96]
 208:	63726161 	.inst	0x63726161 ; undefined
 20c:	2d343668 	stp	s8, s13, [x19, #-96]
 210:	2f666c65 	.inst	0x2f666c65 ; undefined
 214:	2f62696c 	umlsl	v12.4s, v11.4h, v2.h[6]
 218:	2f636367 	umlsl	v7.4s, v27.4h, v3.h[2]
 21c:	63726161 	.inst	0x63726161 ; undefined
 220:	2d343668 	stp	s8, s13, [x19, #-96]
 224:	2f666c65 	.inst	0x2f666c65 ; undefined
 228:	2e332e38 	uqsub	v24.8b, v17.8b, v19.8b
 22c:	6e692f30 	uqsub	v16.8h, v25.8h, v9.8h
 230:	64756c63 	.inst	0x64756c63 ; undefined
 234:	74000065 	.inst	0x74000065 ; undefined
 238:	72656d69 	.inst	0x72656d69 ; undefined
 23c:	00632e73 	.inst	0x00632e73 ; undefined
 240:	74000001 	.inst	0x74000001 ; undefined
 244:	73657079 	.inst	0x73657079 ; undefined
 248:	0200682e 	.inst	0x0200682e ; undefined
 24c:	6f630000 	mla	v0.8h, v0.8h, v3.h[2]
 250:	6769666e 	.inst	0x6769666e ; undefined
 254:	0200682e 	.inst	0x0200682e ; undefined
 258:	72610000 	.inst	0x72610000 ; undefined
 25c:	00682e6d 	.inst	0x00682e6d ; undefined
 260:	75000002 	.inst	0x75000002 ; undefined
 264:	736c6974 	.inst	0x736c6974 ; undefined
 268:	0200682e 	.inst	0x0200682e ; undefined
 26c:	69740000 	.inst	0x69740000 ; undefined
 270:	7372656d 	.inst	0x7372656d ; undefined
 274:	0200682e 	.inst	0x0200682e ; undefined
 278:	72700000 	.inst	0x72700000 ; undefined
 27c:	66746e69 	.inst	0x66746e69 ; undefined
    vtable_entry    irq_cur_el_spx
 280:	0200682e 	.inst	0x0200682e ; undefined
 284:	74730000 	.inst	0x74730000 ; undefined
 288:	67726164 	.inst	0x67726164 ; undefined
 28c:	0300682e 	.inst	0x0300682e ; undefined
 290:	05000000 	orr	z0.s, z0.s, #0x1
 294:	02090001 	.inst	0x02090001 ; undefined
 298:	00000e74 	.inst	0x00000e74 ; undefined
 29c:	00000000 	.inst	0x00000000 ; undefined
 2a0:	0100f403 	.inst	0x0100f403 ; undefined
 2a4:	052f0505 	ext	z5.b, z5.b, z8.b, #121
 2a8:	03024b01 	.inst	0x03024b01 ; undefined
 2ac:	05010100 	orr	z0.s, z0.s, #0x1ff
 2b0:	02090001 	.inst	0x02090001 ; undefined
 2b4:	00000e98 	.inst	0x00000e98 ; undefined
 2b8:	00000000 	.inst	0x00000000 ; undefined
 2bc:	0100f903 	.inst	0x0100f903 ; undefined
 2c0:	05300b05 	ext	z5.b, z5.b, z24.b, #130
 2c4:	01054b0c 	.inst	0x01054b0c ; undefined
 2c8:	00020221 	.inst	0x00020221 ; undefined
 2cc:	01050101 	.inst	0x01050101 ; undefined
 2d0:	bc020900 	.inst	0xbc020900 ; undefined
 2d4:	0000000e 	.inst	0x0000000e ; undefined
 2d8:	03000000 	.inst	0x03000000 ; undefined
 2dc:	05010180 	orr	z0.s, z0.s, #0x1fff
 2e0:	0205220e 	.inst	0x0205220e ; undefined
 2e4:	2f01052f 	mvni	v15.2s, #0x29
 2e8:	01000302 	.inst	0x01000302 ; undefined
 2ec:	00010501 	.inst	0x00010501 ; undefined
 2f0:	00000209 	.inst	0x00000209 ; undefined
 2f4:	00000000 	.inst	0x00000000 ; undefined
 2f8:	87030000 	.inst	0x87030000 ; undefined
 2fc:	0e050101 	tbl	v1.8b, {v8.16b}, v5.8b
    vtable_entry    fiq_cur_el_spx
 300:	21020522 	.inst	0x21020522 ; undefined
 304:	022f0105 	.inst	0x022f0105 ; undefined
 308:	01010003 	.inst	0x01010003 ; undefined
 30c:	09000105 	.inst	0x09000105 ; undefined
 310:	00000002 	.inst	0x00000002 ; undefined
 314:	00000000 	.inst	0x00000000 ; undefined
 318:	018e0300 	.inst	0x018e0300 ; undefined
 31c:	22020501 	.inst	0x22020501 ; undefined
 320:	052f0905 	ext	z5.b, z5.b, z8.b, #122
 324:	02022101 	.inst	0x02022101 ; undefined
 328:	05010100 	orr	z0.s, z0.s, #0x1ff
 32c:	02090001 	.inst	0x02090001 ; undefined
	...
 338:	01019503 	.inst	0x01019503 ; undefined
 33c:	05220205 	ext	z5.b, z5.b, z16.b, #16
 340:	01052f0c 	.inst	0x01052f0c ; undefined
 344:	00020221 	.inst	0x00020221 ; undefined
 348:	01050101 	.inst	0x01050101 ; undefined
 34c:	dc020900 	.inst	0xdc020900 ; undefined
 350:	0000000e 	.inst	0x0000000e ; undefined
 354:	03000000 	.inst	0x03000000 ; undefined
 358:	0501019c 	orr	z28.s, z28.s, #0x1fff
 35c:	05052f02 	.inst	0x05052f02 ; undefined
 360:	2101052f 	.inst	0x2101052f ; undefined
 364:	01000202 	.inst	0x01000202 ; undefined
 368:	00010501 	.inst	0x00010501 ; undefined
 36c:	0ef80209 	.inst	0x0ef80209 ; undefined
 370:	00000000 	.inst	0x00000000 ; undefined
 374:	a2030000 	.inst	0xa2030000 ; undefined
 378:	02050101 	.inst	0x02050101 ; undefined
 37c:	2f0c0522 	ushr	v2.8b, v9.8b, #4
    vtable_entry    serror_cur_el_spx
 380:	02210105 	.inst	0x02210105 ; undefined
 384:	01010002 	.inst	0x01010002 ; undefined
 388:	09001505 	.inst	0x09001505 ; undefined
 38c:	000f1002 	.inst	0x000f1002 ; undefined
 390:	00000000 	.inst	0x00000000 ; undefined
 394:	01a80300 	.inst	0x01a80300 ; undefined
 398:	2f180501 	ushr	v1.4h, v8.4h, #8
 39c:	052e1605 	ext	z5.b, z5.b, z16.b, #117
 3a0:	05053d1d 	.inst	0x05053d1d ; undefined
 3a4:	0521673c 	zip2	z28.b, z25.b, z1.b
 3a8:	03022101 	.inst	0x03022101 ; undefined
 3ac:	05010100 	orr	z0.s, z0.s, #0x1ff
 3b0:	02090017 	.inst	0x02090017 ; undefined
 3b4:	00000f64 	.inst	0x00000f64 ; undefined
 3b8:	00000000 	.inst	0x00000000 ; undefined
 3bc:	0101af03 	.inst	0x0101af03 ; undefined
 3c0:	05331d05 	ext	z5.b, z5.b, z8.b, #159
 3c4:	0d053c05 	.inst	0x0d053c05 ; undefined
 3c8:	3c220568 	.inst	0x3c220568 ; undefined
 3cc:	054b0d05 	.inst	0x054b0d05 ; undefined
 3d0:	10053c18 	adr	x24, ab50 <stdout_putp+0x8d20>
 3d4:	3c07054b 	str	b11, [x10], #112
 3d8:	05301d05 	ext	z5.b, z5.b, z8.b, #135
 3dc:	20053d11 	.inst	0x20053d11 ; undefined
 3e0:	4c05053c 	.inst	0x4c05053c ; undefined
 3e4:	022f0105 	.inst	0x022f0105 ; undefined
 3e8:	01010002 	.inst	0x01010002 ; undefined
 3ec:	09002805 	.inst	0x09002805 ; undefined
 3f0:	00101402 	.inst	0x00101402 ; undefined
 3f4:	00000000 	.inst	0x00000000 ; undefined
 3f8:	01c00300 	.inst	0x01c00300 ; undefined
 3fc:	3d080501 	str	b1, [x8, #513]
    vtable_entry    sync_lower_el_a64
 400:	05202205 	.inst	0x05202205 ; undefined
 404:	10052007 	adr	x7, a804 <stdout_putp+0x89d4>
 408:	2f01052f 	mvni	v15.2s, #0x29
 40c:	01000202 	.inst	0x01000202 ; undefined
 410:	00016601 	.inst	0x00016601 ; undefined
 414:	dc000300 	.inst	0xdc000300 ; undefined
 418:	04000000 	add	z0.b, p0/m, z0.b, z0.b
 41c:	0d0efb01 	.inst	0x0d0efb01 ; undefined
 420:	01010100 	.inst	0x01010100 ; undefined
 424:	00000001 	.inst	0x00000001 ; undefined
 428:	01000001 	.inst	0x01000001 ; undefined
 42c:	2f637273 	fcmla	v19.4h, v19.4h, v3.h[1], #270
 430:	74696e69 	.inst	0x74696e69 ; undefined
 434:	636e6900 	.inst	0x636e6900 ; undefined
 438:	6564756c 	fnmls	z12.h, p5/m, z11.h, z4.h
 43c:	6f682f00 	.inst	0x6f682f00 ; undefined
 440:	612f656d 	.inst	0x612f656d ; undefined
 444:	73696862 	.inst	0x73696862 ; undefined
 448:	2f6b6568 	.inst	0x2f6b6568 ; undefined
 44c:	6e776f44 	umin	v4.8h, v26.8h, v23.8h
 450:	64616f6c 	.inst	0x64616f6c ; undefined
 454:	63672f73 	.inst	0x63672f73 ; undefined
 458:	72612d63 	.inst	0x72612d63 ; undefined
 45c:	2e382d6d 	uqsub	v13.8b, v11.8b, v24.8b
 460:	30322d33 	adr	x19, 64a05 <stdout_putp+0x62bd5>
 464:	302e3931 	adr	x17, 5cb89 <stdout_putp+0x5ad59>
 468:	38782d33 	.inst	0x38782d33 ; undefined
 46c:	34365f36 	cbz	w22, 6d050 <stdout_putp+0x6b220>
 470:	7261612d 	.inst	0x7261612d ; undefined
 474:	34366863 	cbz	w3, 6d180 <stdout_putp+0x6b350>
 478:	666c652d 	.inst	0x666c652d ; undefined
 47c:	62696c2f 	.inst	0x62696c2f ; undefined
    vtable_entry    irq_lower_el_a64
 480:	6363672f 	.inst	0x6363672f ; undefined
 484:	7261612f 	.inst	0x7261612f ; undefined
 488:	34366863 	cbz	w3, 6d194 <stdout_putp+0x6b364>
 48c:	666c652d 	.inst	0x666c652d ; undefined
 490:	332e382f 	.inst	0x332e382f ; undefined
 494:	692f302e 	stgp	x14, x12, [x1, #-544]
 498:	756c636e 	.inst	0x756c636e ; undefined
 49c:	00006564 	.inst	0x00006564 ; undefined
 4a0:	2e717269 	uabdl	v9.4s, v19.4h, v17.4h
 4a4:	00010063 	.inst	0x00010063 ; undefined
 4a8:	70797400 	adr	x0, f332b <stdout_putp+0xf14fb>
 4ac:	682e7365 	.inst	0x682e7365 ; undefined
 4b0:	00000200 	.inst	0x00000200 ; undefined
 4b4:	666e6f63 	.inst	0x666e6f63 ; undefined
 4b8:	682e6769 	.inst	0x682e6769 ; undefined
 4bc:	00000200 	.inst	0x00000200 ; undefined
 4c0:	2e6d7261 	uabdl	v1.4s, v19.4h, v13.4h
 4c4:	00020068 	.inst	0x00020068 ; undefined
 4c8:	69727000 	ldpsw	x0, x28, [x0, #-112]
 4cc:	2e66746e 	uabd	v14.4h, v3.4h, v6.4h
 4d0:	00020068 	.inst	0x00020068 ; undefined
 4d4:	64747300 	.inst	0x64747300 ; undefined
 4d8:	2e677261 	uabdl	v1.4s, v19.4h, v7.4h
 4dc:	00030068 	.inst	0x00030068 ; undefined
 4e0:	71726900 	subs	w0, w8, #0xc9a, lsl #12
 4e4:	0200682e 	.inst	0x0200682e ; undefined
 4e8:	69740000 	.inst	0x69740000 ; undefined
 4ec:	7372656d 	.inst	0x7372656d ; undefined
 4f0:	0200682e 	.inst	0x0200682e ; undefined
 4f4:	05000000 	orr	z0.s, z0.s, #0x1
 4f8:	02090028 	.inst	0x02090028 ; undefined
 4fc:	00001040 	.inst	0x00001040 ; undefined
    vtable_entry    fiq_lower_el_a64
 500:	00000000 	.inst	0x00000000 ; undefined
 504:	05010903 	orr	z3.s, z3.s, #0x800000ff
 508:	01053d05 	.inst	0x01053d05 ; undefined
 50c:	00030223 	.inst	0x00030223 ; undefined
 510:	26050101 	.inst	0x26050101 ; undefined
 514:	5c020900 	ldr	d0, 4634 <stdout_putp+0x2804>
 518:	00000010 	.inst	0x00000010 ; undefined
 51c:	03000000 	.inst	0x03000000 ; undefined
 520:	0c05010f 	.inst	0x0c05010f ; undefined
 524:	3d11052f 	str	b15, [x9, #1089]
 528:	023d0105 	.inst	0x023d0105 ; undefined
 52c:	01010003 	.inst	0x01010003 ; undefined
 530:	09001705 	.inst	0x09001705 ; undefined
 534:	00108802 	.inst	0x00108802 ; undefined
 538:	00000000 	.inst	0x00000000 ; undefined
 53c:	01160300 	.inst	0x01160300 ; undefined
 540:	23300505 	.inst	0x23300505 ; undefined
 544:	01053031 	.inst	0x01053031 ; undefined
 548:	00030222 	.inst	0x00030222 ; undefined
 54c:	13050101 	sbfiz	w1, w8, #27, #1
 550:	b4020900 	cbz	x0, 4670 <stdout_putp+0x2840>
 554:	00000010 	.inst	0x00000010 ; undefined
 558:	03000000 	.inst	0x03000000 ; undefined
 55c:	0d050125 	.inst	0x0d050125 ; undefined
 560:	40080530 	.inst	0x40080530 ; undefined
 564:	052e0705 	ext	z5.b, z5.b, z24.b, #113
 568:	04020009 	.inst	0x04020009 ; undefined
 56c:	02002f01 	.inst	0x02002f01 ; undefined
 570:	053d0104 	ext	z4.b, z4.b, z8.b, #232
 574:	03022401 	.inst	0x03022401 ; undefined
 578:	53010100 	lsl	w0, w8, #31
 57c:	03000000 	.inst	0x03000000 ; undefined
    vtable_entry    serror_lower_el_a64
 580:	00002600 	.inst	0x00002600 ; undefined
 584:	fb010400 	.inst	0xfb010400 ; undefined
 588:	01000d0e 	.inst	0x01000d0e ; undefined
 58c:	00010101 	.inst	0x00010101 ; undefined
 590:	00010000 	.inst	0x00010000 ; undefined
 594:	72730100 	.inst	0x72730100 ; undefined
 598:	6e692f63 	uqsub	v3.8h, v27.8h, v9.8h
 59c:	00007469 	.inst	0x00007469 ; undefined
 5a0:	746f6f62 	.inst	0x746f6f62 ; undefined
 5a4:	0100532e 	.inst	0x0100532e ; undefined
 5a8:	00000000 	.inst	0x00000000 ; undefined
 5ac:	0d480209 	.inst	0x0d480209 ; undefined
 5b0:	00000000 	.inst	0x00000000 ; undefined
 5b4:	21180000 	.inst	0x21180000 ; undefined
 5b8:	21212321 	.inst	0x21212321 ; undefined
 5bc:	23212221 	.inst	0x23212221 ; undefined
 5c0:	23232421 	.inst	0x23232421 ; undefined
 5c4:	23212221 	.inst	0x23212221 ; undefined
 5c8:	21232123 	.inst	0x21232123 ; undefined
 5cc:	000c0223 	.inst	0x000c0223 ; undefined
 5d0:	003d0101 	.inst	0x003d0101 ; NYI
 5d4:	00030000 	.inst	0x00030000 ; undefined
 5d8:	00000023 	.inst	0x00000023 ; undefined
 5dc:	0efb0104 	.inst	0x0efb0104 ; undefined
 5e0:	0101000d 	.inst	0x0101000d ; undefined
 5e4:	00000101 	.inst	0x00000101 ; undefined
 5e8:	00000100 	.inst	0x00000100 ; undefined
 5ec:	63727301 	.inst	0x63727301 ; undefined
 5f0:	006d6d2f 	.inst	0x006d6d2f ; undefined
 5f4:	6d656d00 	ldp	d0, d27, [x8, #-432]
 5f8:	0100532e 	.inst	0x0100532e ; undefined
 5fc:	00000000 	.inst	0x00000000 ; undefined
    vtable_entry    sync_lower_el_a32
 600:	0df80209 	ld2	{v9.b, v10.b}[0], [x16], x24
 604:	00000000 	.inst	0x00000000 ; undefined
 608:	21140000 	.inst	0x21140000 ; undefined
 60c:	01022121 	.inst	0x01022121 ; undefined
 610:	3c010100 	stur	b0, [x8, #16]
 614:	03000001 	.inst	0x03000001 ; undefined
 618:	00006400 	.inst	0x00006400 ; undefined
 61c:	fb010400 	.inst	0xfb010400 ; undefined
 620:	01000d0e 	.inst	0x01000d0e ; undefined
 624:	00010101 	.inst	0x00010101 ; undefined
 628:	00010000 	.inst	0x00010000 ; undefined
 62c:	72730100 	.inst	0x72730100 ; undefined
 630:	65702f63 	fmls	z3.h, p3/m, z27.h, z16.h
 634:	69006972 	stgp	x18, x26, [x11]
 638:	756c636e 	.inst	0x756c636e ; undefined
 63c:	00006564 	.inst	0x00006564 ; undefined
 640:	74726175 	.inst	0x74726175 ; undefined
 644:	0100632e 	.inst	0x0100632e ; undefined
 648:	79740000 	ldrh	w0, [x0, #6656]
 64c:	2e736570 	umax	v16.4h, v11.4h, v19.4h
 650:	00020068 	.inst	0x00020068 ; undefined
 654:	72617500 	.inst	0x72617500 ; undefined
 658:	00682e74 	.inst	0x00682e74 ; undefined
 65c:	67000002 	.inst	0x67000002 ; undefined
 660:	2e6f6970 	.inst	0x2e6f6970 ; undefined
 664:	00020068 	.inst	0x00020068 ; undefined
 668:	6e6f6300 	rsubhn2	v0.8h, v24.4s, v15.4s
 66c:	2e676966 	.inst	0x2e676966 ; undefined
 670:	00020068 	.inst	0x00020068 ; undefined
 674:	69747500 	ldpsw	x0, x29, [x8, #-96]
 678:	682e736c 	.inst	0x682e736c ; undefined
 67c:	00000200 	.inst	0x00000200 ; undefined
    vtable_entry    irq_lower_el_a32 
 680:	00110500 	.inst	0x00110500 ; undefined
 684:	10f40209 	adr	x9, fffffffffffe86c4 <stdout_putp+0xfffffffffffe6894>
 688:	00000000 	.inst	0x00000000 ; undefined
 68c:	09030000 	.inst	0x09030000 ; undefined
 690:	30050501 	adr	x1, a731 <stdout_putp+0x8901>
 694:	053c1205 	ext	z5.b, z5.b, z16.b, #228
 698:	13052209 	sbfx	w9, w16, #5, #4
 69c:	2f09053c 	ushr	v28.8b, v9.8b, #7
 6a0:	053c1105 	ext	z5.b, z5.b, z8.b, #228
 6a4:	09052105 	.inst	0x09052105 ; undefined
 6a8:	3c15052f 	str	b15, [x9], #-176
 6ac:	052f0505 	ext	z5.b, z5.b, z8.b, #121
 6b0:	15052f09 	b	414c2d4 <stdout_putp+0x414a4a4>
 6b4:	232a053c 	.inst	0x232a053c ; undefined
 6b8:	054a0e05 	.inst	0x054a0e05 ; undefined
 6bc:	1f053c3b 	fmadd	s27, s1, s5, s15
 6c0:	220e0520 	.inst	0x220e0520 ; undefined
 6c4:	053c1f05 	ext	z5.b, z5.b, z24.b, #231
 6c8:	2005330e 	.inst	0x2005330e ; undefined
 6cc:	3005053c 	adr	x28, a771 <stdout_putp+0x8941>
 6d0:	053c1205 	ext	z5.b, z5.b, z16.b, #228
 6d4:	03022f01 	.inst	0x03022f01 ; undefined
 6d8:	05010100 	orr	z0.s, z0.s, #0x1ff
 6dc:	0209001c 	.inst	0x0209001c ; undefined
 6e0:	000011d0 	.inst	0x000011d0 ; undefined
 6e4:	00000000 	.inst	0x00000000 ; undefined
 6e8:	05012103 	orr	z3.s, z3.s, #0xf000001f
 6ec:	26051315 	.inst	0x26051315 ; undefined
 6f0:	3d01054a 	str	b10, [x10, #65]
 6f4:	01000102 	.inst	0x01000102 ; undefined
 6f8:	00120501 	.inst	0x00120501 ; undefined
 6fc:	11f00209 	.inst	0x11f00209 ; undefined
    vtable_entry    fiq_lower_el_a32
 700:	00000000 	.inst	0x00000000 ; undefined
 704:	25030000 	cmpge	p0.b, p0/z, z0.b, #3
 708:	211b0501 	.inst	0x211b0501 ; undefined
 70c:	054a0b05 	.inst	0x054a0b05 ; undefined
 710:	0105210c 	.inst	0x0105210c ; undefined
 714:	00020221 	.inst	0x00020221 ; undefined
 718:	1c050101 	ldr	s1, a738 <stdout_putp+0x8908>
 71c:	14020900 	b	82b1c <stdout_putp+0x80cec>
 720:	00000012 	.inst	0x00000012 ; undefined
 724:	03000000 	.inst	0x03000000 ; undefined
 728:	0e05012a 	tbl	v10.8b, {v9.16b}, v5.8b
 72c:	3c1e052f 	str	b15, [x9], #-32
 730:	022f0105 	.inst	0x022f0105 ; undefined
 734:	01010003 	.inst	0x01010003 ; undefined
 738:	09001e05 	.inst	0x09001e05 ; undefined
 73c:	00123c02 	.inst	0x00123c02 ; undefined
 740:	00000000 	.inst	0x00000000 ; undefined
 744:	012e0300 	.inst	0x012e0300 ; undefined
 748:	054b0505 	.inst	0x054b0505 ; undefined
 74c:	03022f01 	.inst	0x03022f01 ; undefined
 750:	58010100 	ldr	x0, 2770 <stdout_putp+0x940>
 754:	03000003 	.inst	0x03000003 ; undefined
 758:	0000b900 	.inst	0x0000b900 ; undefined
 75c:	fb010400 	.inst	0xfb010400 ; undefined
 760:	01000d0e 	.inst	0x01000d0e ; undefined
 764:	00010101 	.inst	0x00010101 ; undefined
 768:	00010000 	.inst	0x00010000 ; undefined
 76c:	72730100 	.inst	0x72730100 ; undefined
 770:	74752f63 	.inst	0x74752f63 ; undefined
 774:	00736c69 	.inst	0x00736c69 ; undefined
 778:	6d6f682f 	ldp	d15, d26, [x1, #-272]
 77c:	62612f65 	.inst	0x62612f65 ; undefined
    vtable_entry    serror_lower_el_a32
 780:	68736968 	.inst	0x68736968 ; undefined
ehandler_loop_infinite  sync_cur_el_sp0
 784:	442f6b65 	.inst	0x442f6b65 ; undefined
 788:	6c6e776f 	ldnp	d15, d29, [x27, #-288]
 78c:	7364616f 	.inst	0x7364616f ; undefined
 790:	6363672f 	.inst	0x6363672f ; undefined
 794:	6d72612d 	ldp	d13, d24, [x9, #-224]
 798:	332e382d 	.inst	0x332e382d ; undefined
 79c:	3130322d 	adds	w13, w17, #0xc0c
 7a0:	33302e39 	.inst	0x33302e39 ; undefined
 7a4:	3638782d 	tbz	w13, #7, 16a8 <tfp_format+0xbc>
 7a8:	2d34365f 	stp	s31, s13, [x18, #-96]
 7ac:	63726161 	.inst	0x63726161 ; undefined
 7b0:	2d343668 	stp	s8, s13, [x19, #-96]
 7b4:	2f666c65 	.inst	0x2f666c65 ; undefined
 7b8:	2f62696c 	umlsl	v12.4s, v11.4h, v2.h[6]
 7bc:	2f636367 	umlsl	v7.4s, v27.4h, v3.h[2]
 7c0:	63726161 	.inst	0x63726161 ; undefined
 7c4:	2d343668 	stp	s8, s13, [x19, #-96]
 7c8:	2f666c65 	.inst	0x2f666c65 ; undefined
 7cc:	2e332e38 	uqsub	v24.8b, v17.8b, v19.8b
 7d0:	6e692f30 	uqsub	v16.8h, v25.8h, v9.8h
 7d4:	64756c63 	.inst	0x64756c63 ; undefined
 7d8:	6e690065 	uaddl2	v5.4s, v3.8h, v9.8h
ehandler_loop_infinite  irq_cur_el_sp0
 7dc:	64756c63 	.inst	0x64756c63 ; undefined
 7e0:	70000065 	adr	x5, 7ef <irq_cur_el_sp0+0x13>
 7e4:	746e6972 	.inst	0x746e6972 ; undefined
 7e8:	00632e66 	.inst	0x00632e66 ; undefined
 7ec:	73000001 	.inst	0x73000001 ; undefined
 7f0:	72616474 	.inst	0x72616474 ; undefined
 7f4:	00682e67 	.inst	0x00682e67 ; undefined
 7f8:	3c000002 	stur	b2, [x0]
 7fc:	6c697562 	ldnp	d2, d29, [x11, #-368]
 800:	6e692d74 	uqsub	v20.8h, v11.8h, v9.8h
 804:	0000003e 	.inst	0x0000003e ; undefined
 808:	69727000 	ldpsw	x0, x28, [x0, #-112]
 80c:	2e66746e 	uabd	v14.4h, v3.4h, v6.4h
 810:	00030068 	.inst	0x00030068 ; undefined
 814:	05050000 	.inst	0x05050000 ; undefined
 818:	60020900 	.inst	0x60020900 ; undefined
 81c:	00000012 	.inst	0x00000012 ; undefined
 820:	03000000 	.inst	0x03000000 ; undefined
 824:	0905013c 	.inst	0x0905013c ; undefined
 828:	21120559 	.inst	0x21120559 ; undefined
 82c:	052f0b05 	ext	z5.b, z5.b, z24.b, #122
 830:	0f05210a 	.inst	0x0f05210a ; undefined
ehandler_loop_infinite  fiq_cur_el_sp0
 834:	3c0b0549 	str	b9, [x10], #176
 838:	2117053e 	.inst	0x2117053e ; undefined
 83c:	053c0d05 	ext	z5.b, z5.b, z8.b, #227
 840:	0a05210c 	and	w12, w8, w5, lsl #8
 844:	4b0c0575 	sub	w21, w11, w12, lsl #1
 848:	02000f05 	.inst	0x02000f05 ; undefined
 84c:	053c0104 	ext	z4.b, z4.b, z8.b, #224
 850:	04020018 	.inst	0x04020018 ; undefined
 854:	003d3c02 	.inst	0x003d3c02 ; NYI
 858:	06010402 	.inst	0x06010402 ; undefined
 85c:	0402003c 	.inst	0x0402003c ; undefined
 860:	02003c03 	.inst	0x02003c03 ; undefined
 864:	002e0404 	.inst	0x002e0404 ; NYI
 868:	2e020402 	.inst	0x2e020402 ; undefined
 86c:	08040200 	stxrb	w4, w0, [x16]
 870:	00100520 	.inst	0x00100520 ; undefined
 874:	06080402 	.inst	0x06080402 ; undefined
 878:	0018052e 	.inst	0x0018052e ; undefined
 87c:	3c080402 	str	b2, [x0], #128
 880:	02001305 	.inst	0x02001305 ; undefined
 884:	052e0804 	ext	z4.b, z4.b, z0.b, #114
 888:	0402000d 	.inst	0x0402000d ; undefined
ehandler_loop_infinite  serror_cur_el_sp0
 88c:	0b052108 	add	w8, w8, w5, lsl #8
 890:	053c7a03 	.inst	0x053c7a03 ; undefined
 894:	3c090308 	stur	b8, [x24, #144]
 898:	022f0505 	.inst	0x022f0505 ; undefined
 89c:	01010003 	.inst	0x01010003 ; undefined
 8a0:	09000505 	.inst	0x09000505 ; undefined
 8a4:	00138802 	.inst	0x00138802 ; undefined
 8a8:	00000000 	.inst	0x00000000 ; undefined
 8ac:	00ce0300 	.inst	0x00ce0300 ; undefined
 8b0:	4b080501 	sub	w1, w8, w8, lsl #1
 8b4:	3d3d0c05 	str	b5, [x0, #3907]
 8b8:	053c0f05 	ext	z5.b, z5.b, z24.b, #227
 8bc:	02593005 	.inst	0x02593005 ; undefined
 8c0:	01010003 	.inst	0x01010003 ; undefined
 8c4:	09000505 	.inst	0x09000505 ; undefined
 8c8:	0013e402 	.inst	0x0013e402 ; undefined
 8cc:	00000000 	.inst	0x00000000 ; undefined
 8d0:	00d70300 	.inst	0x00d70300 ; undefined
 8d4:	2f080501 	ushr	v1.8b, v8.8b, #8
 8d8:	02001105 	.inst	0x02001105 ; undefined
 8dc:	053c0104 	ext	z4.b, z4.b, z8.b, #224
 8e0:	0d053d12 	.inst	0x0d053d12 ; undefined
ehandler_loop_infinite  sync_cur_el_spx
 8e4:	0016053d 	.inst	0x0016053d ; undefined
 8e8:	3c010402 	str	b2, [x0], #16
 8ec:	3d0d053d 	str	b29, [x9, #833]
 8f0:	02001605 	.inst	0x02001605 ; undefined
 8f4:	3d3c0104 	str	b4, [x8, #3840]
 8f8:	053d1105 	ext	z5.b, z5.b, z8.b, #236
 8fc:	02022105 	.inst	0x02022105 ; undefined
 900:	05010100 	orr	z0.s, z0.s, #0x1ff
 904:	02090005 	.inst	0x02090005 ; undefined
 908:	00001464 	.inst	0x00001464 ; undefined
 90c:	00000000 	.inst	0x00000000 ; undefined
 910:	0100e203 	.inst	0x0100e203 ; undefined
 914:	05670b05 	.inst	0x05670b05 ; undefined
 918:	0b053d09 	add	w9, w8, w5, lsl #15
 91c:	210c0522 	.inst	0x210c0522 ; undefined
 920:	054b1005 	.inst	0x054b1005 ; undefined
 924:	0e053c0c 	umov	w12, v0.b[2]
 928:	3c0b053d 	str	b29, [x9], #176
 92c:	052b1305 	ext	z5.b, z5.b, z24.b, #92
 930:	09053c0b 	.inst	0x09053c0b ; undefined
 934:	0a05244b 	and	w11, w2, w5, lsl #9
 938:	3d0c053d 	str	b29, [x9, #769]
ehandler_loop_infinite  fiq_cur_el_spx
 93c:	02210505 	.inst	0x02210505 ; undefined
 940:	01010002 	.inst	0x01010002 ; undefined
 944:	09000505 	.inst	0x09000505 ; undefined
 948:	00151002 	.inst	0x00151002 ; undefined
 94c:	00000000 	.inst	0x00000000 ; undefined
 950:	00f10300 	.inst	0x00f10300 ; undefined
 954:	750a0501 	.inst	0x750a0501 ; undefined
 958:	01040200 	.inst	0x01040200 ; undefined
 95c:	02003c06 	.inst	0x02003c06 ; undefined
 960:	002e0204 	.inst	0x002e0204 ; NYI
 964:	20040402 	.inst	0x20040402 ; undefined
 968:	02000b05 	.inst	0x02000b05 ; undefined
 96c:	22060404 	.inst	0x22060404 ; undefined
 970:	04040200 	.inst	0x04040200 ; undefined
 974:	210a052f 	.inst	0x210a052f ; undefined
 978:	053b0e05 	ext	z5.b, z5.b, z16.b, #219
 97c:	0b053c0c 	add	w12, w0, w5, lsl #15
 980:	00110520 	.inst	0x00110520 ; undefined
 984:	2e010402 	.inst	0x2e010402 ; undefined
 988:	053e0b05 	ext	z5.b, z5.b, z24.b, #242
 98c:	0d052109 	.inst	0x0d052109 ; undefined
 990:	3c0b0549 	str	b9, [x10], #176
ehandler_loop_infinite  serror_cur_el_spx
 994:	21090530 	.inst	0x21090530 ; undefined
 998:	05491405 	.inst	0x05491405 ; undefined
 99c:	0b053c0f 	add	w15, w0, w5, lsl #15
 9a0:	3e05052e 	.inst	0x3e05052e ; undefined
 9a4:	01000302 	.inst	0x01000302 ; undefined
 9a8:	00050501 	.inst	0x00050501 ; undefined
 9ac:	15ec0209 	b	7b011d0 <stdout_putp+0x7aff3a0>
 9b0:	00000000 	.inst	0x00000000 ; undefined
 9b4:	fe030000 	.inst	0xfe030000 ; undefined
 9b8:	0b050100 	add	w0, w8, w5
 9bc:	210c057a 	.inst	0x210c057a ; undefined
 9c0:	053d0d05 	ext	z5.b, z5.b, z8.b, #235
 9c4:	11055a12 	add	w18, w16, #0x156
 9c8:	21150524 	.inst	0x21150524 ; undefined
 9cc:	053c0f05 	ext	z5.b, z5.b, z24.b, #227
 9d0:	19052f10 	.inst	0x19052f10 ; undefined
 9d4:	3c13053d 	str	b29, [x9], #-208
 9d8:	3010052f 	adr	x15, 20a7d <stdout_putp+0x1ec4d>
 9dc:	02001905 	.inst	0x02001905 ; undefined
 9e0:	053c0104 	ext	z4.b, z4.b, z8.b, #224
 9e4:	0d053d14 	.inst	0x0d053d14 ; undefined
 9e8:	0315058a 	.inst	0x0315058a ; undefined
ehandler_loop_infinite  sync_lower_el_a64
 9ec:	0d05ac29 	.inst	0x0d05ac29 ; undefined
 9f0:	05205703 	.inst	0x05205703 ; undefined
 9f4:	66290315 	.inst	0x66290315 ; undefined
 9f8:	57030d05 	.inst	0x57030d05 ; undefined
 9fc:	03150520 	.inst	0x03150520 ; undefined
 a00:	60034a29 	.inst	0x60034a29 ; undefined
 a04:	83ad0820 	.inst	0x83ad0820 ; undefined
 a08:	83830828 	.inst	0x83830828 ; undefined
 a0c:	13220228 	.inst	0x13220228 ; undefined
 a10:	22260583 	.inst	0x22260583 ; undefined
 a14:	66081505 	.inst	0x66081505 ; undefined
 a18:	c9082259 	.inst	0xc9082259 ; undefined
 a1c:	40034c22 	.inst	0x40034c22 ; undefined
 a20:	3c0f0520 	str	b0, [x9], #240
 a24:	052e0b05 	ext	z5.b, z5.b, z24.b, #114
 a28:	00c40305 	.inst	0x00c40305 ; undefined
 a2c:	0315053c 	.inst	0x0315053c ; undefined
 a30:	05052055 	.inst	0x05052055 ; undefined
 a34:	02202c03 	.inst	0x02202c03 ; undefined
 a38:	01010004 	.inst	0x01010004 ; undefined
 a3c:	09000505 	.inst	0x09000505 ; undefined
 a40:	001a0c02 	.inst	0x001a0c02 ; undefined
ehandler_loop_infinite  irq_lower_el_a64
 a44:	00000000 	.inst	0x00000000 ; undefined
 a48:	01cd0300 	.inst	0x01cd0300 ; undefined
 a4c:	3d100501 	str	b1, [x8, #1025]
 a50:	4b05054b 	sub	w11, w10, w5, lsl #1
 a54:	01000302 	.inst	0x01000302 ; undefined
 a58:	00050501 	.inst	0x00050501 ; undefined
 a5c:	1a440209 	.inst	0x1a440209 ; undefined
 a60:	00000000 	.inst	0x00000000 ; undefined
 a64:	d3030000 	.inst	0xd3030000 ; undefined
 a68:	91a00101 	addg	x1, x8, #0x200, #0x0
 a6c:	03022208 	.inst	0x03022208 ; undefined
 a70:	05010100 	orr	z0.s, z0.s, #0x1ff
 a74:	02090005 	.inst	0x02090005 ; undefined
	...
 a80:	0101db03 	.inst	0x0101db03 ; undefined
 a84:	053d0705 	ext	z5.b, z5.b, z24.b, #233
 a88:	17052e14 	b	fffffffffc14c2d8 <stdout_putp+0xfffffffffc14a4a8>
 a8c:	2f05053c 	mvni	v28.2s, #0xa9
 a90:	01000302 	.inst	0x01000302 ; undefined
 a94:	00050501 	.inst	0x00050501 ; undefined
 a98:	00000209 	.inst	0x00000209 ; undefined
ehandler_loop_infinite  fiq_lower_el_a64
 a9c:	00000000 	.inst	0x00000000 ; undefined
 aa0:	e2030000 	.inst	0xe2030000 ; undefined
 aa4:	91a00101 	addg	x1, x8, #0x200, #0x0
 aa8:	03023ed7 	.inst	0x03023ed7 ; undefined
 aac:	b6010100 	tbz	x0, #32, 2acc <stdout_putp+0xc9c>
 ab0:	03000001 	.inst	0x03000001 ; undefined
 ab4:	0000c000 	.inst	0x0000c000 ; undefined
 ab8:	fb010400 	.inst	0xfb010400 ; undefined
 abc:	01000d0e 	.inst	0x01000d0e ; undefined
 ac0:	00010101 	.inst	0x00010101 ; undefined
 ac4:	00010000 	.inst	0x00010000 ; undefined
 ac8:	72730100 	.inst	0x72730100 ; undefined
 acc:	74752f63 	.inst	0x74752f63 ; undefined
 ad0:	00736c69 	.inst	0x00736c69 ; undefined
 ad4:	6c636e69 	ldnp	d9, d27, [x19, #-464]
 ad8:	00656475 	.inst	0x00656475 ; undefined
 adc:	6d6f682f 	ldp	d15, d26, [x1, #-272]
 ae0:	62612f65 	.inst	0x62612f65 ; undefined
 ae4:	68736968 	.inst	0x68736968 ; undefined
 ae8:	442f6b65 	.inst	0x442f6b65 ; undefined
 aec:	6c6e776f 	ldnp	d15, d29, [x27, #-288]
 af0:	7364616f 	.inst	0x7364616f ; undefined
ehandler_loop_infinite  serror_lower_el_a64
 af4:	6363672f 	.inst	0x6363672f ; undefined
 af8:	6d72612d 	ldp	d13, d24, [x9, #-224]
 afc:	332e382d 	.inst	0x332e382d ; undefined
 b00:	3130322d 	adds	w13, w17, #0xc0c
 b04:	33302e39 	.inst	0x33302e39 ; undefined
 b08:	3638782d 	tbz	w13, #7, 1a0c <init_printf>
 b0c:	2d34365f 	stp	s31, s13, [x18, #-96]
 b10:	63726161 	.inst	0x63726161 ; undefined
 b14:	2d343668 	stp	s8, s13, [x19, #-96]
 b18:	2f666c65 	.inst	0x2f666c65 ; undefined
 b1c:	2f62696c 	umlsl	v12.4s, v11.4h, v2.h[6]
 b20:	2f636367 	umlsl	v7.4s, v27.4h, v3.h[2]
 b24:	63726161 	.inst	0x63726161 ; undefined
 b28:	2d343668 	stp	s8, s13, [x19, #-96]
 b2c:	2f666c65 	.inst	0x2f666c65 ; undefined
 b30:	2e332e38 	uqsub	v24.8b, v17.8b, v19.8b
 b34:	6e692f30 	uqsub	v16.8h, v25.8h, v9.8h
 b38:	64756c63 	.inst	0x64756c63 ; undefined
 b3c:	75000065 	.inst	0x75000065 ; undefined
 b40:	736c6974 	.inst	0x736c6974 ; undefined
 b44:	0100632e 	.inst	0x0100632e ; undefined
 b48:	79740000 	ldrh	w0, [x0, #6656]
ehandler_loop_infinite  sync_lower_el_a32
 b4c:	2e736570 	umax	v16.4h, v11.4h, v19.4h
 b50:	00020068 	.inst	0x00020068 ; undefined
 b54:	69747500 	ldpsw	x0, x29, [x8, #-96]
 b58:	682e736c 	.inst	0x682e736c ; undefined
 b5c:	00000200 	.inst	0x00000200 ; undefined
 b60:	6e697270 	uabdl2	v16.4s, v19.8h, v9.8h
 b64:	682e6674 	.inst	0x682e6674 ; undefined
 b68:	00000200 	.inst	0x00000200 ; undefined
 b6c:	61647473 	.inst	0x61647473 ; undefined
 b70:	682e6772 	.inst	0x682e6772 ; undefined
 b74:	00000300 	.inst	0x00000300 ; undefined
 b78:	001a0500 	.inst	0x001a0500 ; undefined
 b7c:	1ae40209 	.inst	0x1ae40209 ; undefined
 b80:	00000000 	.inst	0x00000000 ; undefined
 b84:	05150000 	mov	z0.b, p5/z, #0
 b88:	01052f05 	.inst	0x01052f05 ; undefined
 b8c:	00030241 	.inst	0x00030241 ; undefined
 b90:	12050101 	and	w1, w8, #0x8000000
 b94:	04020900 	.inst	0x04020900 ; undefined
 b98:	0000001b 	.inst	0x0000001b ; undefined
 b9c:	03000000 	.inst	0x03000000 ; undefined
 ba0:	0505010b 	.inst	0x0505010b ; undefined
ehandler_loop_infinite  irq_lower_el_a32
 ba4:	3f0c0522 	.inst	0x3f0c0522 ; undefined
 ba8:	02210105 	.inst	0x02210105 ; undefined
 bac:	01010002 	.inst	0x01010002 ; undefined
 bb0:	09000d05 	.inst	0x09000d05 ; undefined
 bb4:	001b2002 	.inst	0x001b2002 ; undefined
 bb8:	00000000 	.inst	0x00000000 ; undefined
 bbc:	01130300 	.inst	0x01130300 ; undefined
 bc0:	05220505 	ext	z5.b, z5.b, z8.b, #17
 bc4:	01053f0c 	.inst	0x01053f0c ; undefined
 bc8:	00020221 	.inst	0x00020221 ; undefined
 bcc:	01050101 	.inst	0x01050101 ; undefined
 bd0:	3c020900 	.inst	0x3c020900 ; undefined
 bd4:	0000001b 	.inst	0x0000001b ; undefined
 bd8:	03000000 	.inst	0x03000000 ; undefined
 bdc:	0605011c 	.inst	0x0605011c ; undefined
 be0:	2e1d053d 	.inst	0x2e1d053d ; undefined
 be4:	022f0105 	.inst	0x022f0105 ; undefined
 be8:	01010003 	.inst	0x01010003 ; undefined
 bec:	09000105 	.inst	0x09000105 ; undefined
 bf0:	001b6402 	.inst	0x001b6402 ; undefined
 bf4:	00000000 	.inst	0x00000000 ; undefined
 bf8:	01210300 	.inst	0x01210300 ; undefined
ehandler_loop_infinite  fiq_lower_el_a32
 bfc:	052f0d05 	ext	z5.b, z5.b, z8.b, #123
 c00:	0105200c 	.inst	0x0105200c ; undefined
 c04:	00020221 	.inst	0x00020221 ; undefined
 c08:	01050101 	.inst	0x01050101 ; undefined
 c0c:	7c020900 	.inst	0x7c020900 ; undefined
 c10:	0000001b 	.inst	0x0000001b ; undefined
 c14:	03000000 	.inst	0x03000000 ; undefined
 c18:	05050126 	.inst	0x05050126 ; undefined
 c1c:	2f2f2f31 	.inst	0x2f2f2f31 ; undefined
 c20:	2f2f2f2f 	.inst	0x2f2f2f2f ; undefined
 c24:	2f2f2f2f 	.inst	0x2f2f2f2f ; undefined
 c28:	2f2f2f2f 	.inst	0x2f2f2f2f ; undefined
 c2c:	2f2f2f2f 	.inst	0x2f2f2f2f ; undefined
 c30:	2f2f2f2f 	.inst	0x2f2f2f2f ; undefined
 c34:	2f2f2f2f 	.inst	0x2f2f2f2f ; undefined
 c38:	2f2f2f2f 	.inst	0x2f2f2f2f ; undefined
 c3c:	2f2f2f2f 	.inst	0x2f2f2f2f ; undefined
 c40:	053d0a05 	ext	z5.b, z5.b, z16.b, #234
 c44:	09052005 	.inst	0x09052005 ; undefined
 c48:	910a0521 	add	x1, x9, #0x281
 c4c:	053d1005 	ext	z5.b, z5.b, z0.b, #236
 c50:	16052e0b 	b	fffffffff814c47c <stdout_putp+0xfffffffff814a64c>
ehandler_loop_infinite  serror_lower_el_a32
 c54:	01040200 	.inst	0x01040200 ; undefined
 c58:	0005052e 	.inst	0x0005052e ; undefined
 c5c:	39010402 	strb	w2, [x0, #65]
 c60:	21010542 	.inst	0x21010542 ; undefined
 c64:	01000202 	.inst	0x01000202 ; undefined
 c68:	Address 0x0000000000000c68 is out of bounds.


Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
{
       0:	504c495f 	adr	xzr, 9892a <stdout_putp+0x96afa>
    cntv_ctl = 0;
       4:	5f003233 	.inst	0x5f003233 ; undefined
	asm volatile ("msr cntv_ctl_el0, %0" :: "r" (cntv_ctl));
       8:	4749535f 	.inst	0x4749535f ; undefined
       c:	4f54415f 	.inst	0x4f54415f ; undefined
}
      10:	5f43494d 	.inst	0x5f43494d ; undefined
      14:	5f58414d 	.inst	0x5f58414d ; undefined
      18:	7830205f 	steorh	w16, [x2]
    {
      1c:	66666637 	.inst	0x66666637 ; undefined
      20:	66666666 	.inst	0x66666666 ; undefined
      24:	465f5f00 	.inst	0x465f5f00 ; undefined
    va_start(va,fmt);
      28:	3436544c 	cbz	w12, 6cab0 <stdout_putp+0x6ac80>
      2c:	5341485f 	.inst	0x5341485f ; undefined
      30:	4955515f 	.inst	0x4955515f ; undefined
      34:	4e5f5445 	.inst	0x4e5f5445 ; undefined
      38:	5f5f4e41 	.inst	0x5f5f4e41 ; undefined
      3c:	5f003120 	.inst	0x5f003120 ; undefined
      40:	4345445f 	.inst	0x4345445f ; undefined
      44:	535f3436 	.inst	0x535f3436 ; undefined
      48:	4f4e4255 	.inst	0x4f4e4255 ; undefined
    tfp_format(&s,putcp,fmt,va);
      4c:	4c414d52 	.inst	0x4c414d52 ; undefined
      50:	4e494d5f 	.inst	0x4e494d5f ; undefined
      54:	30205f5f 	adr	xzr, 40c3d <stdout_putp+0x3ee0d>
      58:	3030302e 	adr	x14, 6065d <stdout_putp+0x5e82d>
      5c:	30303030 	adr	x16, 60661 <stdout_putp+0x5e831>
      60:	30303030 	adr	x16, 60665 <stdout_putp+0x5e835>
      64:	31303030 	adds	w16, w1, #0xc0c
      68:	38332d45 	.inst	0x38332d45 ; undefined
      6c:	00444433 	.inst	0x00444433 ; undefined
      70:	4c465f5f 	.inst	0x4c465f5f ; undefined
      74:	5f363154 	.inst	0x5f363154 ; undefined
      78:	5f4e494d 	.inst	0x5f4e494d ; undefined
      7c:	455f3031 	.inst	0x455f3031 ; undefined
      80:	5f5f5058 	.inst	0x5f5f5058 ; undefined
    putcp(&s,0);
      84:	342d2820 	cbz	w0, 5a588 <stdout_putp+0x58758>
      88:	5f5f0029 	.inst	0x5f5f0029 ; undefined
      8c:	33544c46 	.inst	0x33544c46 ; undefined
    }
      90:	41485f32 	.inst	0x41485f32 ; undefined
      94:	4e495f53 	.inst	0x4e495f53 ; undefined
      98:	494e4946 	.inst	0x494e4946 ; undefined
    vtable_entry    irq_cur_el_sp0
      9c:	5f5f5954 	.inst	0x5f5f5954 ; undefined
      a0:	5f003120 	.inst	0x5f003120 ; undefined
      a4:	544c465f 	.inst	0x544c465f ; undefined
      a8:	4d5f3436 	.inst	0x4d5f3436 ; undefined
      ac:	455f5841 	.inst	0x455f5841 ; undefined
      b0:	5f5f5058 	.inst	0x5f5f5058 ; undefined
      b4:	32303120 	orr	w0, w9, #0x1fff0000
      b8:	5f5f0034 	.inst	0x5f5f0034 ; undefined
      bc:	36544c46 	tbz	w6, #10, ffffffffffff8a44 <stdout_putp+0xffffffffffff6c14>
      c0:	445f5834 	.inst	0x445f5834 ; undefined
      c4:	524f4e45 	.inst	0x524f4e45 ; undefined
      c8:	494d5f4d 	.inst	0x494d5f4d ; undefined
      cc:	205f5f4e 	.inst	0x205f5f4e ; undefined
      d0:	37342e36 	tbnz	w22, #6, ffffffffffff8694 <stdout_putp+0xffffffffffff6864>
      d4:	35373135 	cbnz	w21, 6e6f8 <stdout_putp+0x6c8c8>
      d8:	34393131 	cbz	w17, 726fc <stdout_putp+0x708cc>
      dc:	32303833 	orr	w19, w1, #0x7fff0000
      e0:	30313135 	adr	x21, 62705 <stdout_putp+0x608d5>
      e4:	34343239 	cbz	w25, 68728 <stdout_putp+0x668f8>
      e8:	35393833 	cbnz	w19, 727ec <stdout_putp+0x709bc>
      ec:	37323238 	tbnz	w24, #6, 4730 <stdout_putp+0x2900>
      f0:	35363436 	cbnz	w22, 6c774 <stdout_putp+0x6a944>
      f4:	342d6535 	cbz	w21, 5ad98 <stdout_putp+0x58f68>
      f8:	46363639 	.inst	0x46363639 ; undefined
      fc:	00783436 	.inst	0x00783436 ; undefined
    vtable_entry    fiq_cur_el_sp0
     100:	4c465f5f 	.inst	0x4c465f5f ; undefined
     104:	58323354 	ldr	x20, 6476c <stdout_putp+0x6293c>
     108:	58414d5f 	ldr	xzr, 82ab0 <stdout_putp+0x80c80>
     10c:	5058455f 	adr	xzr, b09b6 <stdout_putp+0xaeb86>
     110:	31205f5f 	cmn	w26, #0x817
     114:	00343230 	.inst	0x00343230 ; NYI
     118:	4e495f5f 	.inst	0x4e495f5f ; undefined
     11c:	41465f54 	.inst	0x41465f54 ; undefined
     120:	36315453 	tbz	w19, #6, 2ba8 <stdout_putp+0xd78>
     124:	4449575f 	.inst	0x4449575f ; undefined
     128:	5f5f4854 	.inst	0x5f5f4854 ; undefined
     12c:	00323320 	.inst	0x00323320 ; NYI
     130:	43475f5f 	.inst	0x43475f5f ; undefined
     134:	54415f43 	b.cc	82d1c <stdout_putp+0x80eec>  // b.lo, b.ul, b.last
     138:	43494d4f 	.inst	0x43494d4f ; undefined
     13c:	5345545f 	.inst	0x5345545f ; undefined
     140:	4e415f54 	.inst	0x4e415f54 ; undefined
     144:	45535f44 	.inst	0x45535f44 ; undefined
     148:	52545f54 	.inst	0x52545f54 ; undefined
     14c:	41564555 	.inst	0x41564555 ; undefined
     150:	0031204c 	.inst	0x0031204c ; NYI
     154:	4c465f5f 	.inst	0x4c465f5f ; undefined
     158:	58343654 	ldr	x20, 68820 <stdout_putp+0x669f0>
     15c:	5350455f 	.inst	0x5350455f ; undefined
     160:	4e4f4c49 	.inst	0x4e4f4c49 ; undefined
     164:	31205f5f 	cmn	w26, #0x817
     168:	3532392e 	cbnz	w14, 6488c <stdout_putp+0x62a5c>
     16c:	39393239 	strb	w25, [x17, #3660]
     170:	38333434 	.inst	0x38333434 ; undefined
     174:	35333237 	cbnz	w23, 667b8 <stdout_putp+0x64988>
     178:	30333538 	adr	x24, 6681d <stdout_putp+0x649ed>
     17c:	37393535 	tbnz	w21, #7, 2820 <stdout_putp+0x9f0>
    vtable_entry    serror_cur_el_sp0
     180:	32343937 	orr	w23, w9, #0x7fff000
     184:	39343835 	strb	w21, [x1, #3342]
     188:	32333732 	orr	w18, w25, #0x7ffe000
     18c:	34332d65 	cbz	w5, 66738 <stdout_putp+0x64908>
     190:	78343646 	.inst	0x78343646 ; undefined
     194:	445f5f00 	.inst	0x445f5f00 ; undefined
     198:	34364345 	cbz	w5, 6ca00 <stdout_putp+0x6abd0>
     19c:	5350455f 	.inst	0x5350455f ; undefined
     1a0:	4e4f4c49 	.inst	0x4e4f4c49 ; undefined
     1a4:	31205f5f 	cmn	w26, #0x817
     1a8:	35312d45 	cbnz	w5, 62750 <stdout_putp+0x60920>
     1ac:	5f004444 	.inst	0x5f004444 ; undefined
     1b0:	4c42445f 	.inst	0x4c42445f ; undefined
     1b4:	4e45445f 	.inst	0x4e45445f ; undefined
     1b8:	5f4d524f 	.inst	0x5f4d524f ; undefined
     1bc:	5f4e494d 	.inst	0x5f4e494d ; undefined
     1c0:	2828205f 	stnp	wzr, w8, [x2, #-192]
     1c4:	62756f64 	.inst	0x62756f64 ; undefined
     1c8:	3429656c 	cbz	w12, 52e74 <stdout_putp+0x51044>
     1cc:	3034392e 	adr	x14, 688f1 <stdout_putp+0x66ac1>
     1d0:	34363536 	cbz	w22, 6c874 <stdout_putp+0x6aa44>
     1d4:	31343835 	adds	w21, w1, #0xd0e
     1d8:	35363432 	cbnz	w18, 6c85c <stdout_putp+0x6aa2c>
     1dc:	37313434 	tbnz	w20, #6, 2860 <stdout_putp+0xa30>
     1e0:	38363536 	.inst	0x38363536 ; undefined
     1e4:	38323937 	.inst	0x38323937 ; undefined
     1e8:	32323836 	orr	w22, w1, #0x1fffc000
     1ec:	32373331 	orr	w17, w25, #0x3ffe00
     1f0:	32332d65 	orr	w5, w11, #0x1ffe000
     1f4:	00294c34 	.inst	0x00294c34 ; NYI
     1f8:	4e495f5f 	.inst	0x4e495f5f ; undefined
     1fc:	52545054 	.inst	0x52545054 ; undefined
    vtable_entry    sync_cur_el_spx
     200:	58414d5f 	ldr	xzr, 82ba8 <stdout_putp+0x80d78>
     204:	30205f5f 	adr	xzr, 40ded <stdout_putp+0x3efbd>
     208:	66663778 	.inst	0x66663778 ; undefined
     20c:	66666666 	.inst	0x66666666 ; undefined
     210:	66666666 	.inst	0x66666666 ; undefined
     214:	66666666 	.inst	0x66666666 ; undefined
     218:	5f004c66 	.inst	0x5f004c66 ; undefined
     21c:	544c465f 	.inst	0x544c465f ; undefined
     220:	4d5f3233 	.inst	0x4d5f3233 ; undefined
     224:	5f544e41 	.inst	0x5f544e41 ; undefined
     228:	5f474944 	.inst	0x5f474944 ; undefined
     22c:	3432205f 	cbz	wzr, 64634 <stdout_putp+0x62804>
     230:	475f5f00 	.inst	0x475f5f00 ; undefined
     234:	485f4343 	ldxrh	w3, [x26]
     238:	5f455641 	shl	d1, d18, #5
     23c:	434e5953 	.inst	0x434e5953 ; undefined
     240:	4d4f435f 	.inst	0x4d4f435f ; undefined
     244:	45524150 	.inst	0x45524150 ; undefined
     248:	444e415f 	.inst	0x444e415f ; undefined
     24c:	4157535f 	.inst	0x4157535f ; undefined
     250:	20385f50 	.inst	0x20385f50 ; undefined
     254:	5f5f0031 	.inst	0x5f5f0031 ; undefined
     258:	4c42444c 	.inst	0x4c42444c ; undefined
     25c:	4e414d5f 	.inst	0x4e414d5f ; undefined
     260:	49445f54 	.inst	0x49445f54 ; undefined
     264:	205f5f47 	.inst	0x205f5f47 ; undefined
     268:	00333131 	.inst	0x00333131 ; NYI
     26c:	5f585541 	shl	d1, d10, #24
     270:	4c5f554d 	.inst	0x4c5f554d ; undefined
     274:	525f5243 	.inst	0x525f5243 ; undefined
     278:	5f004745 	.inst	0x5f004745 ; undefined
     27c:	544c465f 	.inst	0x544c465f ; undefined
    vtable_entry    irq_cur_el_spx
     280:	5f583233 	sqdmlal	s19, h17, v8.h[1]
     284:	49434544 	.inst	0x49434544 ; undefined
     288:	5f4c414d 	.inst	0x5f4c414d ; undefined
     28c:	5f474944 	.inst	0x5f474944 ; undefined
     290:	3731205f 	tbnz	wzr, #6, 2698 <stdout_putp+0x868>
     294:	41565f00 	.inst	0x41565f00 ; undefined
     298:	53494c5f 	.inst	0x53494c5f ; undefined
     29c:	45445f54 	.inst	0x45445f54 ; undefined
     2a0:	454e4946 	.inst	0x454e4946 ; undefined
     2a4:	5f002044 	.inst	0x5f002044 ; undefined
     2a8:	4c42445f 	.inst	0x4c42445f ; undefined
     2ac:	4e494d5f 	.inst	0x4e494d5f ; undefined
     2b0:	5058455f 	adr	xzr, b0b5a <stdout_putp+0xaed2a>
     2b4:	28205f5f 	stnp	wzr, w23, [x26, #-256]
     2b8:	3230312d 	orr	w13, w9, #0x1fff0000
     2bc:	5f002931 	.inst	0x5f002931 ; undefined
     2c0:	544e495f 	.inst	0x544e495f ; undefined
     2c4:	5341465f 	.inst	0x5341465f ; undefined
     2c8:	5f343654 	.inst	0x5f343654 ; undefined
     2cc:	5f58414d 	.inst	0x5f58414d ; undefined
     2d0:	7830205f 	steorh	w16, [x2]
     2d4:	66666637 	.inst	0x66666637 ; undefined
     2d8:	66666666 	.inst	0x66666666 ; undefined
     2dc:	66666666 	.inst	0x66666666 ; undefined
     2e0:	66666666 	.inst	0x66666666 ; undefined
     2e4:	5f5f004c 	.inst	0x5f5f004c ; undefined
     2e8:	5f434347 	.inst	0x5f434347 ; undefined
     2ec:	4d4f5441 	.inst	0x4d4f5441 ; undefined
     2f0:	435f4349 	.inst	0x435f4349 ; undefined
     2f4:	31524148 	adds	w8, w10, #0x490, lsl #12
     2f8:	5f545f36 	.inst	0x5f545f36 ; undefined
     2fc:	4b434f4c 	sub	w12, w26, w3, lsr #19
    vtable_entry    fiq_cur_el_spx
     300:	4552465f 	.inst	0x4552465f ; undefined
     304:	00322045 	.inst	0x00322045 ; NYI
     308:	52415f5f 	.inst	0x52415f5f ; undefined
     30c:	49535f4d 	.inst	0x49535f4d ; undefined
     310:	464f455a 	.inst	0x464f455a ; undefined
     314:	4843575f 	ldxrh	wzr, [x26]
     318:	545f5241 	b.ne	bed60 <stdout_putp+0xbcf30>  // b.any
     31c:	5f003420 	.inst	0x5f003420 ; undefined
     320:	544c465f 	.inst	0x544c465f ; undefined
     324:	5f583233 	sqdmlal	s19, h17, v8.h[1]
     328:	5f58414d 	.inst	0x5f58414d ; undefined
     32c:	2e31205f 	usubl	v31.8h, v2.8b, v17.8b
     330:	36373937 	tbz	w23, #6, ffffffffffffea54 <stdout_putp+0xffffffffffffcc24>
     334:	33313339 	.inst	0x33313339 ; undefined
     338:	32363834 	orr	w20, w1, #0x1fffc00
     33c:	37353133 	tbnz	w19, #6, ffffffffffffa960 <stdout_putp+0xffffffffffff8b30>
     340:	34313830 	cbz	w16, 62a44 <stdout_putp+0x60c14>
     344:	34373235 	cbz	w21, 6e988 <stdout_putp+0x6cb58>
     348:	33373332 	.inst	0x33373332 ; undefined
     34c:	34303731 	cbz	w17, 60a30 <stdout_putp+0x5ec00>
     350:	65373533 	.inst	0x65373533 ; undefined
     354:	3830332b 	ldsetb	w16, w11, [x25]
     358:	78323346 	ldseth	w18, w6, [x26]
     35c:	535f5f00 	.inst	0x535f5f00 ; undefined
     360:	4f455a49 	.inst	0x4f455a49 ; undefined
     364:	49575f46 	.inst	0x49575f46 ; undefined
     368:	545f544e 	b.al	bedf0 <stdout_putp+0xbcfc0>
     36c:	34205f5f 	cbz	wzr, 40f54 <stdout_putp+0x3f124>
     370:	415f5f00 	.inst	0x415f5f00 ; undefined
     374:	48435241 	ldxrh	w1, [x18]
     378:	4c453436 	.inst	0x4c453436 ; undefined
     37c:	31205f5f 	cmn	w26, #0x817
    vtable_entry    serror_cur_el_spx
     380:	475f5f00 	.inst	0x475f5f00 ; undefined
     384:	5f43554e 	shl	d14, d10, #3
     388:	4f4e494d 	.inst	0x4f4e494d ; undefined
     38c:	205f5f52 	.inst	0x205f5f52 ; undefined
     390:	5f5f0033 	.inst	0x5f5f0033 ; undefined
     394:	544e4955 	.inst	0x544e4955 ; undefined
     398:	4d5f3436 	.inst	0x4d5f3436 ; undefined
     39c:	5f5f5841 	.inst	0x5f5f5841 ; undefined
     3a0:	66783020 	.inst	0x66783020 ; undefined
     3a4:	66666666 	.inst	0x66666666 ; undefined
     3a8:	66666666 	.inst	0x66666666 ; undefined
     3ac:	66666666 	.inst	0x66666666 ; undefined
     3b0:	55666666 	.inst	0x55666666 ; undefined
     3b4:	5f5f004c 	.inst	0x5f5f004c ; undefined
     3b8:	5f4d5241 	.inst	0x5f4d5241 ; undefined
     3bc:	54414546 	b.vs	82c64 <stdout_putp+0x80e34>
     3c0:	5f455255 	.inst	0x5f455255 ; undefined
     3c4:	50595243 	adr	x3, b2e0e <stdout_putp+0xb0fde>
     3c8:	5f004f54 	.inst	0x5f004f54 ; undefined
     3cc:	544c465f 	.inst	0x544c465f ; undefined
     3d0:	4d5f3436 	.inst	0x4d5f3436 ; undefined
     3d4:	5f5f4e49 	.inst	0x5f5f4e49 ; undefined
     3d8:	322e3220 	orr	w0, w17, #0x7ffc0000
     3dc:	37303532 	tbnz	w18, #6, a80 <irq_lower_el_a64+0x3c>
     3e0:	38353833 	.inst	0x38353833 ; undefined
     3e4:	32373035 	orr	w21, w1, #0x3ffe00
     3e8:	38333130 	ldsetb	w19, w16, [x9]
     3ec:	30393033 	adr	x19, 729f1 <stdout_putp+0x70bc1>
     3f0:	37323332 	tbnz	w18, #6, 4a54 <stdout_putp+0x2c24>
     3f4:	33333731 	.inst	0x33333731 ; undefined
     3f8:	34303432 	cbz	w18, 60a7c <stdout_putp+0x5ec4c>
     3fc:	2d653630 	ldp	s16, s13, [x17, #-216]
    vtable_entry    sync_lower_el_a64
     400:	46383033 	.inst	0x46383033 ; undefined
     404:	5f003436 	.inst	0x5f003436 ; undefined
     408:	4e4f4c5f 	.inst	0x4e4f4c5f ; undefined
     40c:	4f4c5f47 	.inst	0x4f4c5f47 ; undefined
     410:	575f474e 	.inst	0x575f474e ; undefined
     414:	48544449 	ldxrh	w9, [x2]
     418:	36205f5f 	tbz	wzr, #4, 1000 <systick_handler+0x9c>
     41c:	5f5f0034 	.inst	0x5f5f0034 ; undefined
     420:	5f544c46 	.inst	0x5f544c46 ; undefined
     424:	4f4e4544 	.inst	0x4f4e4544 ; undefined
     428:	4d5f4d52 	.inst	0x4d5f4d52 ; undefined
     42c:	5f5f4e49 	.inst	0x5f5f4e49 ; undefined
     430:	342e3120 	cbz	w0, 5ca54 <stdout_putp+0x5ac24>
     434:	39323130 	strb	w16, [x9, #3212]
     438:	34363438 	cbz	w24, 6cabc <stdout_putp+0x6ac8c>
     43c:	38343233 	ldsetb	w20, w19, [x17]
     440:	37303731 	tbnz	w17, #6, b24 <serror_lower_el_a64+0x30>
     444:	33323930 	.inst	0x33323930 ; undefined
     448:	35393237 	cbnz	w23, 72a8c <stdout_putp+0x70c5c>
     44c:	38323338 	ldsetb	w18, w24, [x25]
     450:	36313939 	tbz	w25, #6, 2b74 <stdout_putp+0xd44>
     454:	2d653331 	ldp	s17, s12, [x25, #-216]
     458:	00463534 	.inst	0x00463534 ; undefined
     45c:	48435f5f 	ldxrh	wzr, [x26]
     460:	36315241 	tbz	w1, #6, 2ea8 <stdout_putp+0x1078>
     464:	5059545f 	adr	xzr, b2eee <stdout_putp+0xb10be>
     468:	205f5f45 	.inst	0x205f5f45 ; undefined
     46c:	726f6873 	.inst	0x726f6873 ; undefined
     470:	6e752074 	usubl2	v20.4s, v3.8h, v21.8h
     474:	6e676973 	.inst	0x6e676973 ; undefined
     478:	69206465 	stgp	x5, x25, [x3, #-1024]
     47c:	5f00746e 	.inst	0x5f00746e ; undefined
    vtable_entry    irq_lower_el_a64
     480:	5a49535f 	.inst	0x5a49535f ; undefined
     484:	5f464f45 	.inst	0x5f464f45 ; undefined
     488:	455a4953 	.inst	0x455a4953 ; undefined
     48c:	5f5f545f 	shl	d31, d2, #31
     490:	5f003820 	.inst	0x5f003820 ; undefined
     494:	5241415f 	.inst	0x5241415f ; undefined
     498:	34364843 	cbz	w3, 6cda0 <stdout_putp+0x6af70>
     49c:	4f4d435f 	.inst	0x4f4d435f ; undefined
     4a0:	5f4c4544 	.inst	0x5f4c4544 ; undefined
     4a4:	4c414d53 	.inst	0x4c414d53 ; undefined
     4a8:	205f5f4c 	.inst	0x205f5f4c ; undefined
     4ac:	5f5f0031 	.inst	0x5f5f0031 ; undefined
     4b0:	5f544e49 	.inst	0x5f544e49 ; undefined
     4b4:	54534146 	b.vs	a6cdc <stdout_putp+0xa4eac>
     4b8:	414d5f38 	.inst	0x414d5f38 ; undefined
     4bc:	205f5f58 	.inst	0x205f5f58 ; undefined
     4c0:	66377830 	.inst	0x66377830 ; undefined
     4c4:	66666666 	.inst	0x66666666 ; undefined
     4c8:	5f006666 	.inst	0x5f006666 ; undefined
     4cc:	44524f5f 	.inst	0x44524f5f ; undefined
     4d0:	425f5245 	.inst	0x425f5245 ; undefined
     4d4:	455f4749 	.inst	0x455f4749 ; undefined
     4d8:	4149444e 	.inst	0x4149444e ; undefined
     4dc:	205f5f4e 	.inst	0x205f5f4e ; undefined
     4e0:	31323334 	adds	w20, w25, #0xc8c
     4e4:	475f5f00 	.inst	0x475f5f00 ; undefined
     4e8:	5f43554e 	shl	d14, d10, #3
     4ec:	0038205f 	.inst	0x0038205f ; NYI
     4f0:	49555f5f 	.inst	0x49555f5f ; undefined
     4f4:	3436544e 	cbz	w14, 6cf7c <stdout_putp+0x6b14c>
     4f8:	6328435f 	.inst	0x6328435f ; undefined
     4fc:	20632029 	.inst	0x20632029 ; undefined
    vtable_entry    fiq_lower_el_a64
     500:	55202323 	.inst	0x55202323 ; undefined
     504:	5f5f004c 	.inst	0x5f5f004c ; undefined
     508:	5f4c4244 	.inst	0x5f4c4244 ; undefined
     50c:	544e414d 	b.le	9cd34 <stdout_putp+0x9af04>
     510:	4749445f 	.inst	0x4749445f ; undefined
     514:	35205f5f 	cbnz	wzr, 410fc <stdout_putp+0x3f2cc>
     518:	5f5f0033 	.inst	0x5f5f0033 ; undefined
     51c:	5f4d5241 	.inst	0x5f4d5241 ; undefined
     520:	54414546 	b.vs	82dc8 <stdout_putp+0x80f98>
     524:	5f455255 	.inst	0x5f455255 ; undefined
     528:	36315046 	tbz	w6, #6, 2f30 <stdout_putp+0x1100>
     52c:	4345565f 	.inst	0x4345565f ; undefined
     530:	5f524f54 	.inst	0x5f524f54 ; undefined
     534:	54495241 	b.ne	92f7c <stdout_putp+0x9114c>  // b.any
     538:	54454d48 	b.hi	8aee0 <stdout_putp+0x890b0>  // b.pmore
     53c:	5f004349 	.inst	0x5f004349 ; undefined
     540:	544c465f 	.inst	0x544c465f ; undefined
     544:	4d5f3233 	.inst	0x4d5f3233 ; undefined
     548:	5f5f5841 	.inst	0x5f5f5841 ; undefined
     54c:	342e3320 	cbz	w0, 5cbb0 <stdout_putp+0x5ad80>
     550:	32383230 	orr	w16, w17, #0x1fff00
     554:	36363433 	tbz	w19, #6, ffffffffffffcbd8 <stdout_putp+0xffffffffffffada8>
     558:	32353833 	orr	w19, w1, #0x3fff800
     55c:	39353838 	strb	w24, [x1, #3406]
     560:	37313138 	tbnz	w24, #6, 2b84 <stdout_putp+0xd54>
     564:	38313430 	.inst	0x38313430 ; undefined
     568:	34383433 	cbz	w19, 70bec <stdout_putp+0x6edbc>
     56c:	39363135 	strb	w21, [x9, #3468]
     570:	2b653532 	.inst	0x2b653532 ; undefined
     574:	33463833 	.inst	0x33463833 ; undefined
     578:	5f5f0032 	.inst	0x5f5f0032 ; undefined
     57c:	5f544e49 	.inst	0x5f544e49 ; undefined
    vtable_entry    serror_lower_el_a64
     580:	5f58414d 	.inst	0x5f58414d ; undefined
     584:	7830205f 	steorh	w16, [x2]
     588:	66666637 	.inst	0x66666637 ; undefined
     58c:	66666666 	.inst	0x66666666 ; undefined
     590:	415f5f00 	.inst	0x415f5f00 ; undefined
     594:	494d4f54 	.inst	0x494d4f54 ; undefined
     598:	45525f43 	.inst	0x45525f43 ; undefined
     59c:	5341454c 	.inst	0x5341454c ; undefined
     5a0:	00332045 	.inst	0x00332045 ; NYI
     5a4:	5f41565f 	shl	d31, d18, #1
     5a8:	5453494c 	b.gt	a6ed0 <stdout_putp+0xa50a0>
     5ac:	485f545f 	ldxrh	wzr, [x2]
     5b0:	5f5f0020 	.inst	0x5f5f0020 ; undefined
     5b4:	31544c46 	adds	w6, w2, #0x513, lsl #12
     5b8:	49445f36 	.inst	0x49445f36 ; undefined
     5bc:	205f5f47 	.inst	0x205f5f47 ; undefined
     5c0:	5f5f0033 	.inst	0x5f5f0033 ; undefined
     5c4:	52414843 	.inst	0x52414843 ; undefined
     5c8:	534e555f 	.inst	0x534e555f ; undefined
     5cc:	454e4749 	.inst	0x454e4749 ; undefined
     5d0:	205f5f44 	.inst	0x205f5f44 ; undefined
     5d4:	5f5f0031 	.inst	0x5f5f0031 ; undefined
     5d8:	31544e49 	adds	w9, w18, #0x513, lsl #12
     5dc:	59545f36 	.inst	0x59545f36 ; undefined
     5e0:	5f5f4550 	.inst	0x5f5f4550 ; undefined
     5e4:	6f687320 	fcmla	v0.8h, v25.8h, v8.h[1], #270
     5e8:	69207472 	stgp	x18, x29, [x3, #-1024]
     5ec:	5f00746e 	.inst	0x5f00746e ; undefined
     5f0:	4d52415f 	.inst	0x4d52415f ; undefined
     5f4:	4145465f 	.inst	0x4145465f ; undefined
     5f8:	45525554 	.inst	0x45525554 ; undefined
     5fc:	4452515f 	.inst	0x4452515f ; undefined
    vtable_entry    sync_lower_el_a32
     600:	5f00584d 	fmls	h13, h2, v0.h[4]
     604:	4345445f 	.inst	0x4345445f ; undefined
     608:	455f3233 	.inst	0x455f3233 ; undefined
     60c:	4c495350 	.inst	0x4c495350 ; undefined
     610:	5f5f4e4f 	.inst	0x5f5f4e4f ; undefined
     614:	2d453120 	ldp	s0, s12, [x9, #40]
     618:	00464436 	.inst	0x00464436 ; undefined
     61c:	4c465f5f 	.inst	0x4c465f5f ; undefined
     620:	58343654 	ldr	x20, 68ce8 <stdout_putp+0x66eb8>
     624:	58414d5f 	ldr	xzr, 82fcc <stdout_putp+0x8119c>
     628:	5058455f 	adr	xzr, b0ed2 <stdout_putp+0xaf0a2>
     62c:	31205f5f 	cmn	w26, #0x817
     630:	34383336 	cbz	w22, 70c94 <stdout_putp+0x6ee64>
     634:	415f5f00 	.inst	0x415f5f00 ; undefined
     638:	494d4f54 	.inst	0x494d4f54 ; undefined
     63c:	45535f43 	.inst	0x45535f43 ; undefined
     640:	53435f51 	.inst	0x53435f51 ; undefined
     644:	00352054 	.inst	0x00352054 ; NYI
     648:	49535f5f 	.inst	0x49535f5f ; undefined
     64c:	464f455a 	.inst	0x464f455a ; undefined
     650:	4f48535f 	.inst	0x4f48535f ; undefined
     654:	5f5f5452 	shl	d18, d2, #31
     658:	5f003220 	.inst	0x5f003220 ; undefined
     65c:	4e49555f 	.inst	0x4e49555f ; undefined
     660:	5f343654 	.inst	0x5f343654 ; undefined
     664:	45505954 	.inst	0x45505954 ; undefined
     668:	6c205f5f 	stnp	d31, d23, [x26, #-512]
     66c:	20676e6f 	.inst	0x20676e6f ; undefined
     670:	69736e75 	ldpsw	x21, x27, [x19, #-104]
     674:	64656e67 	.inst	0x64656e67 ; undefined
     678:	746e6920 	.inst	0x746e6920 ; undefined
     67c:	495f5f00 	.inst	0x495f5f00 ; undefined
    vtable_entry    irq_lower_el_a32 
     680:	4c5f544e 	.inst	0x4c5f544e ; undefined
     684:	54534145 	b.pl	a6eac <stdout_putp+0xa507c>  // b.nfrst
     688:	59545f38 	.inst	0x59545f38 ; undefined
     68c:	5f5f4550 	.inst	0x5f5f4550 ; undefined
     690:	67697320 	.inst	0x67697320 ; undefined
     694:	2064656e 	.inst	0x2064656e ; undefined
     698:	72616863 	.inst	0x72616863 ; undefined
     69c:	555f5f00 	.inst	0x555f5f00 ; undefined
     6a0:	5f544e49 	.inst	0x5f544e49 ; undefined
     6a4:	5341454c 	.inst	0x5341454c ; undefined
     6a8:	5f323354 	.inst	0x5f323354 ; undefined
     6ac:	45505954 	.inst	0x45505954 ; undefined
     6b0:	75205f5f 	.inst	0x75205f5f ; undefined
     6b4:	6769736e 	.inst	0x6769736e ; undefined
     6b8:	2064656e 	.inst	0x2064656e ; undefined
     6bc:	00746e69 	.inst	0x00746e69 ; undefined
     6c0:	59425f5f 	.inst	0x59425f5f ; undefined
     6c4:	4f5f4554 	.inst	0x4f5f4554 ; undefined
     6c8:	52454452 	.inst	0x52454452 ; undefined
     6cc:	5f205f5f 	.inst	0x5f205f5f ; undefined
     6d0:	44524f5f 	.inst	0x44524f5f ; undefined
     6d4:	4c5f5245 	.inst	0x4c5f5245 ; undefined
     6d8:	4c545449 	.inst	0x4c545449 ; undefined
     6dc:	4e455f45 	.inst	0x4e455f45 ; undefined
     6e0:	4e414944 	.inst	0x4e414944 ; undefined
     6e4:	5f005f5f 	.inst	0x5f005f5f ; undefined
     6e8:	42444c5f 	.inst	0x42444c5f ; undefined
     6ec:	494d5f4c 	.inst	0x494d5f4c ; undefined
     6f0:	205f5f4e 	.inst	0x205f5f4e ; undefined
     6f4:	36332e33 	tbz	w19, #6, 6cb8 <stdout_putp+0x4e88>
     6f8:	33303132 	.inst	0x33303132 ; undefined
     6fc:	31333431 	adds	w17, w1, #0xccd
    vtable_entry    fiq_lower_el_a32
     700:	39303231 	strb	w17, [x17, #3084]
     704:	36303533 	tbz	w19, #6, da8 <el1_setup+0x34>
     708:	36323632 	tbz	w18, #6, 4dcc <stdout_putp+0x2f9c>
     70c:	31383737 	adds	w23, w25, #0xe0d
     710:	31323337 	adds	w23, w25, #0xc8c
     714:	36323537 	tbz	w23, #6, 4db8 <stdout_putp+0x2f88>
     718:	342d6530 	cbz	w16, 5b3bc <stdout_putp+0x5958c>
     71c:	4c323339 	.inst	0x4c323339 ; undefined
     720:	465f5f00 	.inst	0x465f5f00 ; undefined
     724:	3233544c 	orr	w12, w2, #0xffffe007
     728:	4e494d5f 	.inst	0x4e494d5f ; undefined
     72c:	5f30315f 	.inst	0x5f30315f ; undefined
     730:	5f505845 	.inst	0x5f505845 ; undefined
     734:	2d28205f 	stp	s31, s8, [x2, #-192]
     738:	00293733 	.inst	0x00293733 ; NYI
     73c:	4e495f5f 	.inst	0x4e495f5f ; undefined
     740:	454c5f54 	.inst	0x454c5f54 ; undefined
     744:	36545341 	tbz	w1, #10, ffffffffffff91ac <stdout_putp+0xffffffffffff737c>
     748:	59545f34 	.inst	0x59545f34 ; undefined
     74c:	5f5f4550 	.inst	0x5f5f4550 ; undefined
     750:	6e6f6c20 	umin	v0.8h, v1.8h, v15.8h
     754:	6e692067 	usubl2	v7.4s, v3.8h, v9.8h
     758:	5f5f0074 	.inst	0x5f5f0074 ; undefined
     75c:	5f544c46 	.inst	0x5f544c46 ; undefined
     760:	544e414d 	b.le	9cf88 <stdout_putp+0x9b158>
     764:	4749445f 	.inst	0x4749445f ; undefined
     768:	32205f5f 	orr	wsp, w26, #0xffffff
     76c:	45500034 	.inst	0x45500034 ; undefined
     770:	425f4952 	.inst	0x425f4952 ; undefined
     774:	20455341 	.inst	0x20455341 ; undefined
     778:	33783028 	.inst	0x33783028 ; undefined
     77c:	30303046 	adr	x6, 60d85 <stdout_putp+0x5ef55>
    vtable_entry    serror_lower_el_a32
     780:	29303030 	stp	w16, w12, [x1, #-128]
ehandler_loop_infinite  sync_cur_el_sp0
     784:	415f5f00 	.inst	0x415f5f00 ; undefined
     788:	415f4d52 	.inst	0x415f4d52 ; undefined
     78c:	20484352 	.inst	0x20484352 ; undefined
     790:	41520038 	.inst	0x41520038 ; undefined
     794:	4f495053 	.inst	0x4f495053 ; undefined
     798:	45515f53 	.inst	0x45515f53 ; undefined
     79c:	535f554d 	.inst	0x535f554d ; undefined
     7a0:	31204d49 	adds	w9, w10, #0x813
     7a4:	495f5f00 	.inst	0x495f5f00 ; undefined
     7a8:	4c5f544e 	.inst	0x4c5f544e ; undefined
     7ac:	54534145 	b.pl	a6fd4 <stdout_putp+0xa51a4>  // b.nfrst
     7b0:	4d5f3631 	.inst	0x4d5f3631 ; undefined
     7b4:	5f5f5841 	.inst	0x5f5f5841 ; undefined
     7b8:	37783020 	tbnz	w0, #15, dbc <el1_setup+0x48>
     7bc:	00666666 	.inst	0x00666666 ; undefined
     7c0:	4954555f 	.inst	0x4954555f ; undefined
     7c4:	485f534c 	ldxrh	w12, [x26]
     7c8:	5f00205f 	.inst	0x5f00205f ; undefined
     7cc:	4843535f 	ldxrh	wzr, [x26]
     7d0:	4d5f5241 	.inst	0x4d5f5241 ; undefined
     7d4:	5f5f5841 	.inst	0x5f5f5841 ; undefined
     7d8:	37783020 	tbnz	w0, #15, ddc <irq_enable>
ehandler_loop_infinite  irq_cur_el_sp0
     7dc:	5f5f0066 	.inst	0x5f5f0066 ; undefined
     7e0:	4c42444c 	.inst	0x4c42444c ; undefined
     7e4:	4e45445f 	.inst	0x4e45445f ; undefined
     7e8:	5f4d524f 	.inst	0x5f4d524f ; undefined
     7ec:	5f4e494d 	.inst	0x5f4e494d ; undefined
     7f0:	2e36205f 	usubl	v31.8h, v2.8b, v22.8b
     7f4:	31353734 	adds	w20, w25, #0xd4d
     7f8:	31313537 	adds	w23, w9, #0xc4d
     7fc:	38333439 	.inst	0x38333439 ; undefined
     800:	31353230 	adds	w16, w17, #0xd4c
     804:	32393031 	orr	w17, w1, #0xfff80
     808:	38333434 	.inst	0x38333434 ; undefined
     80c:	32383539 	orr	w25, w9, #0x3fff00
     810:	34363732 	cbz	w18, 6cef4 <stdout_putp+0x6b0c4>
     814:	65353536 	.inst	0x65353536 ; undefined
     818:	3639342d 	tbz	w13, #7, 2e9c <stdout_putp+0x106c>
     81c:	5f004c36 	.inst	0x5f004c36 ; undefined
     820:	4d52415f 	.inst	0x4d52415f ; undefined
     824:	4145465f 	.inst	0x4145465f ; undefined
     828:	45525554 	.inst	0x45525554 ; undefined
     82c:	4d554e5f 	.inst	0x4d554e5f ; undefined
     830:	43495245 	.inst	0x43495245 ; undefined
ehandler_loop_infinite  fiq_cur_el_sp0
     834:	58414d5f 	ldr	xzr, 831dc <stdout_putp+0x813ac>
     838:	004e494d 	.inst	0x004e494d ; undefined
     83c:	4c465f5f 	.inst	0x4c465f5f ; undefined
     840:	5f343654 	.inst	0x5f343654 ; undefined
     844:	5f474944 	.inst	0x5f474944 ; undefined
     848:	3531205f 	cbnz	wzr, 62c50 <stdout_putp+0x60e20>
     84c:	415f5f00 	.inst	0x415f5f00 ; undefined
     850:	494d4f54 	.inst	0x494d4f54 ; undefined
     854:	45525f43 	.inst	0x45525f43 ; undefined
     858:	4558414c 	.inst	0x4558414c ; undefined
     85c:	00302044 	.inst	0x00302044 ; NYI
     860:	52415f5f 	.inst	0x52415f5f ; undefined
     864:	45465f4d 	.inst	0x45465f4d ; undefined
     868:	52555441 	.inst	0x52555441 ; undefined
     86c:	50465f45 	adr	x5, 8d456 <stdout_putp+0x8b626>
     870:	465f3631 	.inst	0x465f3631 ; undefined
     874:	5f004c4d 	.inst	0x5f004c4d ; undefined
     878:	7361685f 	.inst	0x7361685f ; undefined
     87c:	636e695f 	.inst	0x636e695f ; undefined
     880:	6564756c 	fnmls	z12.h, p5/m, z11.h, z4.h
     884:	78656e5f 	.inst	0x78656e5f ; undefined
     888:	54532874 	.inst	0x54532874 ; undefined
ehandler_loop_infinite  serror_cur_el_sp0
     88c:	5f202952 	.inst	0x5f202952 ; undefined
     890:	7361685f 	.inst	0x7361685f ; undefined
     894:	636e695f 	.inst	0x636e695f ; undefined
     898:	6564756c 	fnmls	z12.h, p5/m, z11.h, z4.h
     89c:	78656e5f 	.inst	0x78656e5f ; undefined
     8a0:	285f5f74 	ldnp	w20, w23, [x27, #248]
     8a4:	29525453 	ldp	w19, w21, [x2, #144]
     8a8:	54535f00 	b.eq	a7488 <stdout_putp+0xa5658>  // b.none
     8ac:	47524144 	.inst	0x47524144 ; undefined
     8b0:	0020485f 	.inst	0x0020485f ; NYI
     8b4:	4c465f5f 	.inst	0x4c465f5f ; undefined
     8b8:	58323354 	ldr	x20, 64f20 <stdout_putp+0x630f0>
     8bc:	5341485f 	.inst	0x5341485f ; undefined
     8c0:	464e495f 	.inst	0x464e495f ; undefined
     8c4:	54494e49 	b.ls	9328c <stdout_putp+0x9145c>  // b.plast
     8c8:	205f5f59 	.inst	0x205f5f59 ; undefined
     8cc:	5f5f0031 	.inst	0x5f5f0031 ; undefined
     8d0:	31544c46 	adds	w6, w2, #0x513, lsl #12
     8d4:	485f3832 	ldxrh	w18, [x1]
     8d8:	495f5341 	.inst	0x495f5341 ; undefined
     8dc:	4e49464e 	.inst	0x4e49464e ; undefined
     8e0:	5f595449 	shl	d9, d2, #25
ehandler_loop_infinite  sync_cur_el_spx
     8e4:	0031205f 	.inst	0x0031205f ; NYI
     8e8:	49555f5f 	.inst	0x49555f5f ; undefined
     8ec:	4c5f544e 	.inst	0x4c5f544e ; undefined
     8f0:	54534145 	b.pl	a7118 <stdout_putp+0xa52e8>  // b.nfrst
     8f4:	59545f38 	.inst	0x59545f38 ; undefined
     8f8:	5f5f4550 	.inst	0x5f5f4550 ; undefined
     8fc:	736e7520 	.inst	0x736e7520 ; undefined
     900:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
     904:	68632064 	.inst	0x68632064 ; undefined
     908:	5f007261 	.inst	0x5f007261 ; undefined
     90c:	5a49535f 	.inst	0x5a49535f ; undefined
     910:	5f464f45 	.inst	0x5f464f45 ; undefined
     914:	31544e49 	adds	w9, w18, #0x513, lsl #12
     918:	5f5f3832 	sqdmlal	s18, h1, v15.h[5]
     91c:	00363120 	.inst	0x00363120 ; NYI
     920:	735f6176 	.inst	0x735f6176 ; undefined
     924:	74726174 	.inst	0x74726174 ; undefined
     928:	6c2c7628 	stnp	d8, d29, [x17, #-320]
     92c:	5f5f2029 	.inst	0x5f5f2029 ; undefined
     930:	6c697562 	ldnp	d2, d29, [x11, #-368]
     934:	5f6e6974 	.inst	0x5f6e6974 ; undefined
     938:	735f6176 	.inst	0x735f6176 ; undefined
ehandler_loop_infinite  fiq_cur_el_spx
     93c:	74726174 	.inst	0x74726174 ; undefined
     940:	6c2c7628 	stnp	d8, d29, [x17, #-320]
     944:	5f5f0029 	.inst	0x5f5f0029 ; undefined
     948:	38544e49 	ldrb	w9, [x18, #-188]!
     94c:	6328435f 	.inst	0x6328435f ; undefined
     950:	00632029 	.inst	0x00632029 ; undefined
     954:	4c465f5f 	.inst	0x4c465f5f ; undefined
     958:	38323154 	ldsetb	w18, w20, [x10]
     95c:	58414d5f 	ldr	xzr, 83304 <stdout_putp+0x814d4>
     960:	31205f5f 	cmn	w26, #0x817
     964:	3938312e 	strb	w14, [x9, #3596]
     968:	34313337 	cbz	w23, 62fcc <stdout_putp+0x6119c>
     96c:	35333539 	cbnz	w25, 67010 <stdout_putp+0x651e0>
     970:	31333237 	adds	w23, w17, #0xccc
     974:	30353637 	adr	x23, 6b039 <stdout_putp+0x69209>
     978:	35373538 	cbnz	w24, 6f01c <stdout_putp+0x6d1ec>
     97c:	36323339 	tbz	w25, #6, 4fe0 <stdout_putp+0x31b0>
     980:	30383236 	adr	x22, 70fc5 <stdout_putp+0x6f195>
     984:	32303730 	orr	w16, w25, #0x3fff0000
     988:	39342b65 	strb	w5, [x27, #3338]
     98c:	31463233 	adds	w19, w17, #0x18c, lsl #12
     990:	5f003832 	.inst	0x5f003832 ; undefined
ehandler_loop_infinite  serror_cur_el_spx
     994:	544e495f 	.inst	0x544e495f ; undefined
     998:	41454c5f 	.inst	0x41454c5f ; undefined
     99c:	32335453 	orr	w19, w2, #0xffffe007
     9a0:	5059545f 	adr	xzr, b342a <stdout_putp+0xb15fa>
     9a4:	205f5f45 	.inst	0x205f5f45 ; undefined
     9a8:	00746e69 	.inst	0x00746e69 ; undefined
     9ac:	4e495f5f 	.inst	0x4e495f5f ; undefined
     9b0:	454c5f54 	.inst	0x454c5f54 ; undefined
     9b4:	31545341 	adds	w1, w26, #0x514, lsl #12
     9b8:	49575f36 	.inst	0x49575f36 ; undefined
     9bc:	5f485444 	shl	d4, d2, #8
     9c0:	3631205f 	tbz	wzr, #6, 2dc8 <stdout_putp+0xf98>
     9c4:	72707300 	.inst	0x72707300 ; undefined
     9c8:	66746e69 	.inst	0x66746e69 ; undefined
     9cc:	70667420 	adr	x0, cd853 <stdout_putp+0xcba23>
     9d0:	7270735f 	.inst	0x7270735f ; undefined
     9d4:	66746e69 	.inst	0x66746e69 ; undefined
     9d8:	445f5f00 	.inst	0x445f5f00 ; undefined
     9dc:	4d494345 	.inst	0x4d494345 ; undefined
     9e0:	445f4c41 	.inst	0x445f4c41 ; undefined
     9e4:	5f5f4749 	.inst	0x5f5f4749 ; undefined
     9e8:	00363320 	.inst	0x00363320 ; NYI
ehandler_loop_infinite  sync_lower_el_a64
     9ec:	52415f5f 	.inst	0x52415f5f ; undefined
     9f0:	45465f4d 	.inst	0x45465f4d ; undefined
     9f4:	52555441 	.inst	0x52555441 ; undefined
     9f8:	4f445f45 	.inst	0x4f445f45 ; undefined
     9fc:	4f525054 	.inst	0x4f525054 ; undefined
     a00:	5f5f0044 	.inst	0x5f5f0044 ; undefined
     a04:	5f4d5241 	.inst	0x5f4d5241 ; undefined
     a08:	4e4f454e 	.inst	0x4e4f454e ; undefined
     a0c:	63727300 	.inst	0x63727300 ; undefined
     a10:	72656b2f 	.inst	0x72656b2f ; undefined
     a14:	5f6c656e 	.inst	0x5f6c656e ; undefined
     a18:	6e69616d 	rsubhn2	v13.8h, v11.4s, v9.4s
     a1c:	4100632e 	.inst	0x4100632e ; undefined
     a20:	4d5f5855 	.inst	0x4d5f5855 ; undefined
     a24:	4f495f55 	.inst	0x4f495f55 ; undefined
     a28:	4745525f 	.inst	0x4745525f ; undefined
     a2c:	465f5f00 	.inst	0x465f5f00 ; undefined
     a30:	3233544c 	orr	w12, w2, #0xffffe007
     a34:	5341485f 	.inst	0x5341485f ; undefined
     a38:	4e45445f 	.inst	0x4e45445f ; undefined
     a3c:	5f4d524f 	.inst	0x5f4d524f ; undefined
     a40:	0031205f 	.inst	0x0031205f ; NYI
ehandler_loop_infinite  irq_lower_el_a64
     a44:	41415f5f 	.inst	0x41415f5f ; undefined
     a48:	36484352 	tbz	w18, #9, 12b0 <ui2a+0x50>
     a4c:	4d435f34 	.inst	0x4d435f34 ; undefined
     a50:	4c45444f 	.inst	0x4c45444f ; undefined
     a54:	4e49545f 	.inst	0x4e49545f ; undefined
     a58:	005f5f59 	.inst	0x005f5f59 ; undefined
     a5c:	43475f5f 	.inst	0x43475f5f ; undefined
     a60:	41485f43 	.inst	0x41485f43 ; undefined
     a64:	535f4556 	.inst	0x535f4556 ; undefined
     a68:	5f434e59 	.inst	0x5f434e59 ; undefined
     a6c:	504d4f43 	adr	x3, 9b456 <stdout_putp+0x99626>
     a70:	5f455241 	.inst	0x5f455241 ; undefined
     a74:	5f444e41 	.inst	0x5f444e41 ; undefined
     a78:	50415753 	adr	x19, 83562 <stdout_putp+0x81732>
     a7c:	3120315f 	cmn	w10, #0x80c
     a80:	465f5f00 	.inst	0x465f5f00 ; undefined
     a84:	3436544c 	cbz	w12, 6d50c <stdout_putp+0x6b6dc>
     a88:	494d5f58 	.inst	0x494d5f58 ; undefined
     a8c:	58455f4e 	ldr	x14, 8b674 <stdout_putp+0x89844>
     a90:	205f5f50 	.inst	0x205f5f50 ; undefined
     a94:	36312d28 	tbz	w8, #6, 3038 <stdout_putp+0x1208>
     a98:	29313833 	stp	w19, w14, [x1, #-120]
ehandler_loop_infinite  fiq_lower_el_a64
     a9c:	415f5f00 	.inst	0x415f5f00 ; undefined
     aa0:	465f4d52 	.inst	0x465f4d52 ; undefined
     aa4:	55544145 	.inst	0x55544145 ; undefined
     aa8:	465f4552 	.inst	0x465f4552 ; undefined
     aac:	5f363150 	.inst	0x5f363150 ; undefined
     ab0:	4c414353 	.inst	0x4c414353 ; undefined
     ab4:	415f5241 	.inst	0x415f5241 ; undefined
     ab8:	48544952 	ldxrh	w18, [x10]
     abc:	4954454d 	.inst	0x4954454d ; undefined
     ac0:	5f5f0043 	.inst	0x5f5f0043 ; undefined
     ac4:	5f544c46 	.inst	0x5f544c46 ; undefined
     ac8:	5f474944 	.inst	0x5f474944 ; undefined
     acc:	0036205f 	.inst	0x0036205f ; NYI
     ad0:	4e495f5f 	.inst	0x4e495f5f ; undefined
     ad4:	41465f54 	.inst	0x41465f54 ; undefined
     ad8:	36315453 	tbz	w19, #6, 3560 <stdout_putp+0x1730>
     adc:	58414d5f 	ldr	xzr, 83484 <stdout_putp+0x81654>
     ae0:	30205f5f 	adr	xzr, 416c9 <stdout_putp+0x3f899>
     ae4:	66663778 	.inst	0x66663778 ; undefined
     ae8:	66666666 	.inst	0x66666666 ; undefined
     aec:	5f5f0066 	.inst	0x5f5f0066 ; undefined
     af0:	5f504654 	.inst	0x5f504654 ; undefined
ehandler_loop_infinite  serror_lower_el_a64
     af4:	4e495250 	.inst	0x4e495250 ; undefined
     af8:	5f5f4654 	.inst	0x5f5f4654 ; undefined
     afc:	5f5f0020 	.inst	0x5f5f0020 ; undefined
     b00:	31544c46 	adds	w6, w2, #0x513, lsl #12
     b04:	414d5f36 	.inst	0x414d5f36 ; undefined
     b08:	445f544e 	.inst	0x445f544e ; undefined
     b0c:	5f5f4749 	.inst	0x5f5f4749 ; undefined
     b10:	00313120 	.inst	0x00313120 ; NYI
     b14:	52415f5f 	.inst	0x52415f5f ; undefined
     b18:	49535f4d 	.inst	0x49535f4d ; undefined
     b1c:	464f455a 	.inst	0x464f455a ; undefined
     b20:	4e494d5f 	.inst	0x4e494d5f ; undefined
     b24:	4c414d49 	.inst	0x4c414d49 ; undefined
     b28:	554e455f 	.inst	0x554e455f ; undefined
     b2c:	0034204d 	.inst	0x0034204d ; NYI
     b30:	49555f5f 	.inst	0x49555f5f ; undefined
     b34:	5450544e 	b.al	a15bc <stdout_putp+0x9f78c>
     b38:	414d5f52 	.inst	0x414d5f52 ; undefined
     b3c:	205f5f58 	.inst	0x205f5f58 ; undefined
     b40:	66667830 	.inst	0x66667830 ; undefined
     b44:	66666666 	.inst	0x66666666 ; undefined
     b48:	66666666 	.inst	0x66666666 ; undefined
ehandler_loop_infinite  sync_lower_el_a32
     b4c:	66666666 	.inst	0x66666666 ; undefined
     b50:	4c556666 	.inst	0x4c556666 ; undefined
     b54:	6e6f6c00 	umin	v0.8h, v0.8h, v15.8h
     b58:	6f6c2067 	umlal2	v7.4s, v3.8h, v12.h[2]
     b5c:	7520676e 	.inst	0x7520676e ; undefined
     b60:	6769736e 	.inst	0x6769736e ; undefined
     b64:	2064656e 	.inst	0x2064656e ; undefined
     b68:	00746e69 	.inst	0x00746e69 ; undefined
     b6c:	4c465f5f 	.inst	0x4c465f5f ; undefined
     b70:	38323154 	ldsetb	w18, w20, [x10]
     b74:	4e494d5f 	.inst	0x4e494d5f ; undefined
     b78:	5058455f 	adr	xzr, b1422 <stdout_putp+0xaf5f2>
     b7c:	28205f5f 	stnp	wzr, w23, [x26, #-256]
     b80:	3336312d 	.inst	0x3336312d ; undefined
     b84:	00293138 	.inst	0x00293138 ; NYI
     b88:	4c465f5f 	.inst	0x4c465f5f ; undefined
     b8c:	5f323354 	.inst	0x5f323354 ; undefined
     b90:	5f534148 	.inst	0x5f534148 ; undefined
     b94:	45495551 	.inst	0x45495551 ; undefined
     b98:	414e5f54 	.inst	0x414e5f54 ; undefined
     b9c:	205f5f4e 	.inst	0x205f5f4e ; undefined
     ba0:	5f5f0031 	.inst	0x5f5f0031 ; undefined
ehandler_loop_infinite  irq_lower_el_a32
     ba4:	544e4955 	.inst	0x544e4955 ; undefined
     ba8:	41454c5f 	.inst	0x41454c5f ; undefined
     bac:	36315453 	tbz	w19, #6, 3634 <stdout_putp+0x1804>
     bb0:	58414d5f 	ldr	xzr, 83558 <stdout_putp+0x81728>
     bb4:	30205f5f 	adr	xzr, 4179d <stdout_putp+0x3f96d>
     bb8:	66666678 	.inst	0x66666678 ; undefined
     bbc:	5f5f0066 	.inst	0x5f5f0066 ; undefined
     bc0:	544e4955 	.inst	0x544e4955 ; undefined
     bc4:	5341465f 	.inst	0x5341465f ; undefined
     bc8:	5f343654 	.inst	0x5f343654 ; undefined
     bcc:	5f58414d 	.inst	0x5f58414d ; undefined
     bd0:	7830205f 	steorh	w16, [x2]
     bd4:	66666666 	.inst	0x66666666 ; undefined
     bd8:	66666666 	.inst	0x66666666 ; undefined
     bdc:	66666666 	.inst	0x66666666 ; undefined
     be0:	66666666 	.inst	0x66666666 ; undefined
     be4:	5f004c55 	.inst	0x5f004c55 ; undefined
     be8:	4d52415f 	.inst	0x4d52415f ; undefined
     bec:	4145465f 	.inst	0x4145465f ; undefined
     bf0:	45525554 	.inst	0x45525554 ; undefined
     bf4:	4148535f 	.inst	0x4148535f ; undefined
     bf8:	5f5f0032 	.inst	0x5f5f0032 ; undefined
ehandler_loop_infinite  fiq_lower_el_a32
     bfc:	4c42444c 	.inst	0x4c42444c ; undefined
     c00:	4749445f 	.inst	0x4749445f ; undefined
     c04:	33205f5f 	.inst	0x33205f5f ; undefined
     c08:	5f5f0033 	.inst	0x5f5f0033 ; undefined
     c0c:	544e4955 	.inst	0x544e4955 ; undefined
     c10:	41454c5f 	.inst	0x41454c5f ; undefined
     c14:	5f385453 	.inst	0x5f385453 ; undefined
     c18:	5f58414d 	.inst	0x5f58414d ; undefined
     c1c:	7830205f 	steorh	w16, [x2]
     c20:	5f006666 	.inst	0x5f006666 ; undefined
     c24:	4345445f 	.inst	0x4345445f ; undefined
     c28:	5f383231 	.inst	0x5f383231 ; undefined
     c2c:	5f4e494d 	.inst	0x5f4e494d ; undefined
     c30:	5f505845 	.inst	0x5f505845 ; undefined
     c34:	2d28205f 	stp	s31, s8, [x2, #-192]
     c38:	32343136 	orr	w22, w9, #0x1fff000
     c3c:	5f5f0029 	.inst	0x5f5f0029 ; undefined
     c40:	38544e49 	ldrb	w9, [x18, #-188]!
     c44:	58414d5f 	ldr	xzr, 835ec <stdout_putp+0x817bc>
     c48:	30205f5f 	adr	xzr, 41831 <stdout_putp+0x3fa01>
     c4c:	00663778 	.inst	0x00663778 ; undefined
     c50:	45445f5f 	.inst	0x45445f5f ; undefined
ehandler_loop_infinite  serror_lower_el_a32
     c54:	38323143 	ldsetb	w18, w3, [x10]
     c58:	5350455f 	.inst	0x5350455f ; undefined
     c5c:	4e4f4c49 	.inst	0x4e4f4c49 ; undefined
     c60:	31205f5f 	cmn	w26, #0x817
     c64:	33332d45 	.inst	0x33332d45 ; undefined
     c68:	5f004c44 	.inst	0x5f004c44 ; undefined
     c6c:	544c465f 	.inst	0x544c465f ; undefined
     c70:	4156455f 	.inst	0x4156455f ; undefined
     c74:	454d5f4c 	.inst	0x454d5f4c ; undefined
     c78:	444f4854 	.inst	0x444f4854 ; undefined
     c7c:	3939435f 	strb	wzr, [x26, #3664]
     c80:	30205f5f 	adr	xzr, 41869 <stdout_putp+0x3fa39>
     c84:	465f5f00 	.inst	0x465f5f00 ; undefined
     c88:	3231544c 	orr	w12, w2, #0xffff801f
     c8c:	414d5f38 	.inst	0x414d5f38 ; undefined
     c90:	58455f58 	ldr	x24, 8b878 <stdout_putp+0x89a48>
     c94:	205f5f50 	.inst	0x205f5f50 ; undefined
     c98:	38333631 	.inst	0x38333631 ; undefined
     c9c:	5f5f0034 	.inst	0x5f5f0034 ; undefined
     ca0:	5f544c46 	.inst	0x5f544c46 ; undefined
     ca4:	49444152 	.inst	0x49444152 ; undefined
     ca8:	205f5f58 	.inst	0x205f5f58 ; undefined
    context_save
     cac:	5f5f0032 	.inst	0x5f5f0032 ; undefined
     cb0:	33544c46 	.inst	0x33544c46 ; undefined
     cb4:	445f5832 	.inst	0x445f5832 ; undefined
     cb8:	524f4e45 	.inst	0x524f4e45 ; undefined
     cbc:	494d5f4d 	.inst	0x494d5f4d ; undefined
     cc0:	205f5f4e 	.inst	0x205f5f4e ; undefined
     cc4:	34392e34 	cbz	w20, 73288 <stdout_putp+0x71458>
     cc8:	36353630 	tbz	w16, #6, ffffffffffffb38c <stdout_putp+0xffffffffffff955c>
     ccc:	34383534 	cbz	w20, 71370 <stdout_putp+0x6f540>
     cd0:	36343231 	tbz	w17, #6, ffffffffffff9314 <stdout_putp+0xffffffffffff74e4>
     cd4:	31343435 	adds	w21, w1, #0xd0d
     cd8:	36353637 	tbz	w23, #6, ffffffffffffb39c <stdout_putp+0xffffffffffff956c>
     cdc:	32393738 	orr	w24, w25, #0x1fff80
     ce0:	32383638 	orr	w24, w17, #0x3fff00
     ce4:	37333132 	tbnz	w18, #6, 7308 <stdout_putp+0x54d8>
     ce8:	332d6532 	.inst	0x332d6532 ; undefined
     cec:	33463432 	.inst	0x33463432 ; undefined
     cf0:	52007832 	eor	w18, w1, #0x7fffffff
     cf4:	52455345 	.inst	0x52455345 ; undefined
     cf8:	20444556 	.inst	0x20444556 ; undefined
    bl irq_handler
     cfc:	0032333a 	.inst	0x0032333a ; NYI
    context_restore
     d00:	49535f5f 	.inst	0x49535f5f ; undefined
     d04:	464f455a 	.inst	0x464f455a ; undefined
     d08:	4e4f4c5f 	.inst	0x4e4f4c5f ; undefined
     d0c:	4f445f47 	.inst	0x4f445f47 ; undefined
     d10:	454c4255 	.inst	0x454c4255 ; undefined
     d14:	31205f5f 	cmn	w26, #0x817
     d18:	5f5f0036 	.inst	0x5f5f0036 ; undefined
     d1c:	5f4c4244 	.inst	0x5f4c4244 ; undefined
     d20:	5f534148 	.inst	0x5f534148 ; undefined
     d24:	45495551 	.inst	0x45495551 ; undefined
     d28:	414e5f54 	.inst	0x414e5f54 ; undefined
     d2c:	205f5f4e 	.inst	0x205f5f4e ; undefined
     d30:	5f5f0031 	.inst	0x5f5f0031 ; undefined
     d34:	5f544e49 	.inst	0x5f544e49 ; undefined
     d38:	54534146 	b.vs	a7560 <stdout_putp+0xa5730>
     d3c:	59545f38 	.inst	0x59545f38 ; undefined
     d40:	5f5f4550 	.inst	0x5f5f4550 ; undefined
    eret
     d44:	746e6920 	.inst	0x746e6920 ; undefined
    mrs x0, mpidr_el1
     d48:	465f5f00 	.inst	0x465f5f00 ; undefined
    and x0, x0, #0xFF
     d4c:	3436544c 	cbz	w12, 6d7d4 <stdout_putp+0x6b9a4>
    cbnz x0, halt_proc
     d50:	5341485f 	.inst	0x5341485f ; undefined
    adr x0, __bss_start
     d54:	464e495f 	.inst	0x464e495f ; undefined
    adr x1, __bss_end
     d58:	54494e49 	b.ls	93720 <stdout_putp+0x918f0>  // b.plast
    sub x1, x1, x0
     d5c:	205f5f59 	.inst	0x205f5f59 ; undefined
    bl   memzero
     d60:	5f5f0031 	.inst	0x5f5f0031 ; undefined
    bl el1_setup
     d64:	5f4d5241 	.inst	0x5f4d5241 ; undefined
    b   kernel_main
     d68:	54414546 	b.vs	83610 <stdout_putp+0x817e0>
    wfe
     d6c:	5f455255 	.inst	0x5f455255 ; undefined
    b halt_proc
     d70:	5f455653 	shl	d19, d18, #5
    ldr x0, =(SCTLR_EL1_EE_LITTLE | SCTLR_EL1_E0E_LITTLE |\
     d74:	53544942 	.inst	0x53544942 ; undefined
    msr SCTLR_EL1, x0
     d78:	4c5f5f00 	.inst	0x4c5f5f00 ; undefined
    ldr x0, =(SCR_EL3_RW_AARCH64 | SCR_EL3_NS)
     d7c:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    msr SCR_EL3, x0
     d80:	5f58414d 	.inst	0x5f58414d ; undefined
    ldr x0, =(HCR_EL2_RW_AARCH64)
     d84:	5f505845 	.inst	0x5f505845 ; undefined
    msr HCR_EL2, x0 
     d88:	3631205f 	tbz	wzr, #6, 3190 <stdout_putp+0x1360>
    msr ELR_EL3, lr
     d8c:	00343833 	.inst	0x00343833 ; NYI
    ldr x0, =(SPSR_MODE_EL1h | SPSR_MASK_EXCEPTIONS)
     d90:	4e495f5f 	.inst	0x4e495f5f ; undefined
    msr SPSR_EL3, x0
     d94:	58414d54 	ldr	x20, 8373c <stdout_putp+0x8190c>
    ldr x0, =STACK_BASE
     d98:	5059545f 	adr	xzr, b3822 <stdout_putp+0xb19f2>
    msr SP_EL1, x0
     d9c:	205f5f45 	.inst	0x205f5f45 ; undefined
    eret
     da0:	676e6f6c 	.inst	0x676e6f6c ; undefined
     da4:	746e6920 	.inst	0x746e6920 ; undefined
     da8:	495f5f00 	.inst	0x495f5f00 ; undefined
     dac:	5450544e 	b.al	a1834 <stdout_putp+0x9fa04>
     db0:	59545f52 	.inst	0x59545f52 ; undefined
     db4:	5f5f4550 	.inst	0x5f5f4550 ; undefined
     db8:	6e6f6c20 	umin	v0.8h, v1.8h, v15.8h
     dbc:	6e692067 	usubl2	v7.4s, v3.8h, v9.8h
     dc0:	5f5f0074 	.inst	0x5f5f0074 ; undefined
     dc4:	36434544 	tbz	w4, #8, 766c <stdout_putp+0x583c>
     dc8:	414d5f34 	.inst	0x414d5f34 ; undefined
     dcc:	205f5f58 	.inst	0x205f5f58 ; undefined
    ldr x0, =vector_table
     dd0:	39392e39 	strb	w25, [x17, #3659]
    msr VBAR_EL1, x0
     dd4:	39393939 	strb	w25, [x9, #3662]
    ret
     dd8:	39393939 	strb	w25, [x9, #3662]
    msr daifclr, #2
     ddc:	39393939 	strb	w25, [x9, #3662]
    ret
     de0:	38334539 	.inst	0x38334539 ; undefined
    msr daifset, #2
     de4:	00444434 	.inst	0x00444434 ; undefined
    ret
     de8:	52415f5f 	.inst	0x52415f5f ; undefined
     dec:	45465f4d 	.inst	0x45465f4d ; undefined
     df0:	52555441 	.inst	0x52555441 ; undefined
     df4:	44495f45 	.inst	0x44495f45 ; undefined
    str  xzr, [x0], #8
     df8:	31205649 	adds	w9, w18, #0x815
    subs x1, x1, #8
     dfc:	575f5f00 	.inst	0x575f5f00 ; undefined
    b.gt memzero
     e00:	52414843 	.inst	0x52414843 ; undefined
    ret
     e04:	4e494d5f 	.inst	0x4e494d5f ; undefined
{
     e08:	30205f5f 	adr	xzr, 419f1 <stdout_putp+0x3fbc1>
     e0c:	565f0055 	.inst	0x565f0055 ; undefined
     e10:	494c5f41 	.inst	0x494c5f41 ; undefined
    init_uart();
     e14:	205f5453 	.inst	0x205f5453 ; undefined
    init_printf(0, putc);
     e18:	58554100 	ldr	x0, ab638 <stdout_putp+0xa9808>
     e1c:	5f554d5f 	.inst	0x5f554d5f ; undefined
     e20:	5f52534d 	.inst	0x5f52534d ; undefined
     e24:	00474552 	.inst	0x00474552 ; undefined
    printf("Core %d up at Exception level %d\n", get_core_id(), get_el());
     e28:	4c465f5f 	.inst	0x4c465f5f ; undefined
     e2c:	38323154 	ldsetb	w18, w20, [x10]
     e30:	4e414d5f 	.inst	0x4e414d5f ; undefined
     e34:	49445f54 	.inst	0x49445f54 ; undefined
     e38:	205f5f47 	.inst	0x205f5f47 ; undefined
     e3c:	00333131 	.inst	0x00333131 ; NYI
     e40:	524f5f5f 	.inst	0x524f5f5f ; undefined
     e44:	5f524544 	.inst	0x5f524544 ; undefined
    init_interrupts();
     e48:	5454494c 	b.gt	a9770 <stdout_putp+0xa7940>
        if(uart_read_available()){
     e4c:	455f454c 	.inst	0x455f454c ; undefined
     e50:	4149444e 	.inst	0x4149444e ; undefined
     e54:	205f5f4e 	.inst	0x205f5f4e ; undefined
     e58:	34333231 	cbz	w17, 6749c <stdout_putp+0x6566c>
            uart_write('\n');
     e5c:	535f5f00 	.inst	0x535f5f00 ; undefined
     e60:	4f455a49 	.inst	0x4f455a49 ; undefined
            uart_write(uart_read());
     e64:	54505f46 	b.vs	a1a4c <stdout_putp+0x9fc1c>
     e68:	46494452 	.inst	0x46494452 ; undefined
     e6c:	5f545f46 	.inst	0x5f545f46 ; undefined
        if(uart_read_available()){
     e70:	0038205f 	.inst	0x0038205f ; NYI
{
     e74:	45445f5f 	.inst	0x45445f5f ; undefined
     e78:	38323143 	ldsetb	w18, w3, [x10]
    mmio_write(CORE0_TIMER_IRQCNTL, TIMER3_IRQ);
     e7c:	4e414d5f 	.inst	0x4e414d5f ; undefined
     e80:	49445f54 	.inst	0x49445f54 ; undefined
     e84:	205f5f47 	.inst	0x205f5f47 ; undefined
     e88:	5f003433 	.inst	0x5f003433 ; undefined
}
     e8c:	4d52415f 	.inst	0x4d52415f ; undefined
     e90:	4145465f 	.inst	0x4145465f ; undefined
     e94:	45525554 	.inst	0x45525554 ; undefined
{
     e98:	414e555f 	.inst	0x414e555f ; undefined
     e9c:	4e47494c 	.inst	0x4e47494c ; undefined
    tmp = mmio_read(CORE0_IRQ_SOURCE);
     ea0:	31204445 	adds	w5, w2, #0x811
     ea4:	495f5f00 	.inst	0x495f5f00 ; undefined
     ea8:	3233544e 	orr	w14, w2, #0xffffe007
     eac:	5059545f 	adr	xzr, b3936 <stdout_putp+0xb1b06>
    return tmp;
     eb0:	205f5f45 	.inst	0x205f5f45 ; undefined
}
     eb4:	00746e69 	.inst	0x00746e69 ; undefined
     eb8:	4c465f5f 	.inst	0x4c465f5f ; undefined
{
     ebc:	58343654 	ldr	x20, 69584 <stdout_putp+0x67754>
    cntv_ctl = 1;
     ec0:	4749445f 	.inst	0x4749445f ; undefined
     ec4:	33205f5f 	.inst	0x33205f5f ; undefined
	asm volatile ("msr cntv_ctl_el0, %0" :: "r" (cntv_ctl));
     ec8:	5f5f0033 	.inst	0x5f5f0033 ; undefined
     ecc:	36544c46 	tbz	w6, #10, ffffffffffff9854 <stdout_putp+0xffffffffffff7a24>
}
     ed0:	485f5834 	ldxrh	w20, [x1]
     ed4:	445f5341 	.inst	0x445f5341 ; undefined
     ed8:	524f4e45 	.inst	0x524f4e45 ; undefined
{
     edc:	205f5f4d 	.inst	0x205f5f4d ; undefined
     ee0:	5f5f0031 	.inst	0x5f5f0031 ; undefined
	asm volatile ("msr cntv_tval_el0, %0" :: "r" (val));
     ee4:	5f4d5241 	.inst	0x5f4d5241 ; undefined
     ee8:	49423436 	.inst	0x49423436 ; undefined
    return;
     eec:	54535f54 	.inst	0x54535f54 ; undefined
}
     ef0:	20455441 	.inst	0x20455441 ; undefined
     ef4:	5f5f0031 	.inst	0x5f5f0031 ; undefined
{
     ef8:	5f4d5241 	.inst	0x5f4d5241 ; undefined
	asm volatile ("mrs %0, cntfrq_el0" : "=r" (val));
     efc:	54414546 	b.vs	837a4 <stdout_putp+0x81974>
     f00:	5f455255 	.inst	0x5f455255 ; undefined
    return val;
     f04:	00334d53 	.inst	0x00334d53 ; NYI
}
     f08:	49555f5f 	.inst	0x49555f5f ; undefined
     f0c:	3233544e 	orr	w14, w2, #0xffffe007
void init_systimer(){
     f10:	58414d5f 	ldr	xzr, 838b8 <stdout_putp+0x81a88>
     f14:	30205f5f 	adr	xzr, 41afd <stdout_putp+0x3fccd>
    systimer.ctr_frq = read_cntfrq();
     f18:	66666678 	.inst	0x66666678 ; undefined
     f1c:	66666666 	.inst	0x66666666 ; undefined
     f20:	5f005566 	.inst	0x5f005566 ; undefined
     f24:	544c465f 	.inst	0x544c465f ; undefined
     f28:	445f3631 	.inst	0x445f3631 ; undefined
    write_cntv_tval(systimer.ctr_frq/TICKS_PER_SEC);
     f2c:	524f4e45 	.inst	0x524f4e45 ; undefined
     f30:	494d5f4d 	.inst	0x494d5f4d ; undefined
     f34:	205f5f4e 	.inst	0x205f5f4e ; undefined
     f38:	36392e35 	tbz	w21, #7, 34fc <stdout_putp+0x16cc>
     f3c:	34363430 	cbz	w16, 6d5c0 <stdout_putp+0x6b790>
     f40:	35373734 	cbnz	w20, 6f624 <stdout_putp+0x6d7f4>
     f44:	36303933 	tbz	w19, #6, 1668 <tfp_format+0x7c>
     f48:	30303532 	adr	x18, 615ed <stdout_putp+0x5f7bd>
     f4c:	30303030 	adr	x16, 61551 <stdout_putp+0x5f721>
    routing_core0cntv_to_core0irq();
     f50:	30303030 	adr	x16, 61555 <stdout_putp+0x5f725>
    enable_cntv();
     f54:	30303030 	adr	x16, 61559 <stdout_putp+0x5f729>
}
     f58:	30303030 	adr	x16, 6155d <stdout_putp+0x5f72d>
     f5c:	382d6530 	.inst	0x382d6530 ; undefined
     f60:	00363146 	.inst	0x00363146 ; NYI
void systick_handler(){
     f64:	4c465f5f 	.inst	0x4c465f5f ; undefined
     f68:	58343654 	ldr	x20, 69630 <stdout_putp+0x67800>
    write_cntv_tval(systimer.ctr_frq/TICKS_PER_SEC);
     f6c:	4e494d5f 	.inst	0x4e494d5f ; undefined
     f70:	5f30315f 	.inst	0x5f30315f ; undefined
     f74:	5f505845 	.inst	0x5f505845 ; undefined
     f78:	2d28205f 	stp	s31, s8, [x2, #-192]
     f7c:	31333934 	adds	w20, w9, #0xcce
     f80:	5f5f0029 	.inst	0x5f5f0029 ; undefined
     f84:	544e4955 	.inst	0x544e4955 ; undefined
     f88:	5341465f 	.inst	0x5341465f ; undefined
     f8c:	4d5f3854 	.inst	0x4d5f3854 ; undefined
    systimer.num_ticks_since_boot++;
     f90:	5f5f5841 	.inst	0x5f5f5841 ; undefined
     f94:	66783020 	.inst	0x66783020 ; undefined
     f98:	66666666 	.inst	0x66666666 ; undefined
     f9c:	55666666 	.inst	0x55666666 ; undefined
     fa0:	485f5f00 	ldxrh	w0, [x24]
     fa4:	5f455641 	shl	d1, d18, #5
     fa8:	43455053 	.inst	0x43455053 ; undefined
    systimer.msec_ticks++;
     fac:	54414c55 	.inst	0x54414c55 ; undefined
     fb0:	5f4e4f49 	.inst	0x5f4e4f49 ; undefined
     fb4:	45464153 	.inst	0x45464153 ; undefined
     fb8:	4c41565f 	.inst	0x4c41565f ; undefined
     fbc:	31204555 	adds	w21, w10, #0x811
     fc0:	415f5f00 	.inst	0x415f5f00 ; undefined
     fc4:	415f4d52 	.inst	0x415f4d52 ; undefined
    if(systimer.msec_ticks == TICKS_PER_SEC){
     fc8:	5f484352 	.inst	0x5f484352 ; undefined
     fcc:	31204138 	adds	w24, w9, #0x810
     fd0:	465f5f00 	.inst	0x465f5f00 ; undefined
     fd4:	3231544c 	orr	w12, w2, #0xffff801f
     fd8:	414d5f38 	.inst	0x414d5f38 ; undefined
        systimer.msec_ticks = 0;
     fdc:	30315f58 	adr	x24, 63bc5 <stdout_putp+0x61d95>
     fe0:	5058455f 	adr	xzr, b188a <stdout_putp+0xafa5a>
     fe4:	34205f5f 	cbz	wzr, 41bcc <stdout_putp+0x3fd9c>
        systimer.sec_since_boot++;
     fe8:	00323339 	.inst	0x00323339 ; NYI
     fec:	4c465f5f 	.inst	0x4c465f5f ; undefined
     ff0:	38323154 	ldsetb	w18, w20, [x10]
     ff4:	4e494d5f 	.inst	0x4e494d5f ; undefined
     ff8:	33205f5f 	.inst	0x33205f5f ; undefined
     ffc:	3236332e 	orr	w14, w25, #0x7ffc00
    1000:	31333031 	adds	w17, w1, #0xccc
    return;
    1004:	31313334 	adds	w20, w25, #0xc4c
    1008:	33393032 	.inst	0x33393032 ; undefined
}
    100c:	32363035 	orr	w21, w1, #0x7ffc00
    1010:	37363236 	tbnz	w22, #6, ffffffffffffd654 <stdout_putp+0xffffffffffffb824>
int timer_intr_pending(uint32* irq_sts){
    1014:	37313837 	tbnz	w23, #6, 3718 <stdout_putp+0x18e8>
    1018:	37313233 	tbnz	w19, #6, 365c <stdout_putp+0x182c>
    101c:	30363235 	adr	x21, 6d661 <stdout_putp+0x6b831>
    if(read_core0timer_pending() & TIMER3_IRQ)
    1020:	39342d65 	strb	w5, [x11, #3339]
    1024:	31463233 	adds	w19, w17, #0x18c, lsl #12
    1028:	41003832 	.inst	0x41003832 ; undefined
    102c:	4d5f5855 	.inst	0x4d5f5855 ; undefined
        return 1;
    1030:	43535f55 	.inst	0x43535f55 ; undefined
    1034:	43544152 	.inst	0x43544152 ; undefined
}
    1038:	5f5f0048 	.inst	0x5f5f0048 ; undefined
    103c:	36544c46 	tbz	w6, #10, ffffffffffff99c4 <stdout_putp+0xffffffffffff7b94>
void init_systick_timer(uint64* irq_en){
    1040:	494d5f34 	.inst	0x494d5f34 ; undefined
    1044:	30315f4e 	adr	x14, 63c2d <stdout_putp+0x61dfd>
    1048:	5058455f 	adr	xzr, b18f2 <stdout_putp+0xafac2>
    init_systimer();
    104c:	28205f5f 	stnp	wzr, w23, [x26, #-256]
}
    1050:	3730332d 	tbnz	w13, #6, 16b4 <tfp_format+0xc8>
    1054:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    1058:	5f4c4244 	.inst	0x5f4c4244 ; undefined
void enable_interrupts(uint64 irq_en){
    105c:	5f58414d 	.inst	0x5f58414d ; undefined
    1060:	2828205f 	stnp	wzr, w8, [x2, #-192]
    reg64* irq_en_reg = (reg64*)(ARM_INT_BASE + IRQ_EN_1_OFF);
    1064:	62756f64 	.inst	0x62756f64 ; undefined
    1068:	3129656c 	adds	w12, w11, #0xa59
    106c:	3739372e 	tbnz	w14, #7, 3750 <stdout_putp+0x1920>
    *irq_en_reg = irq_en;
    1070:	31333936 	adds	w22, w9, #0xcce
    1074:	36383433 	tbz	w19, #7, 16f8 <tfp_format+0x10c>
    1078:	35313332 	cbnz	w18, 636dc <stdout_putp+0x618ac>
}
    107c:	31383037 	adds	w23, w1, #0xe0c
    1080:	37323534 	tbnz	w20, #6, 5724 <stdout_putp+0x38f4>
    1084:	37333234 	tbnz	w20, #6, 76c8 <stdout_putp+0x5898>
void init_interrupts(){
    1088:	30373133 	adr	x19, 6f6ad <stdout_putp+0x6d87d>
    108c:	37353334 	tbnz	w20, #6, ffffffffffffb6f0 <stdout_putp+0xffffffffffff98c0>
    init_interrupts_base();
    1090:	30332b65 	adr	x5, 675fd <stdout_putp+0x657cd>
    init_systick_timer(&irq_en);
    1094:	00294c38 	.inst	0x00294c38 ; NYI
    1098:	4c455f5f 	.inst	0x4c455f5f ; undefined
    enable_interrupts(irq_en);
    109c:	205f5f46 	.inst	0x205f5f46 ; undefined
    10a0:	5f5f0031 	.inst	0x5f5f0031 ; undefined
    irq_enable();
    10a4:	5f544e49 	.inst	0x5f544e49 ; undefined
}
    10a8:	54534146 	b.vs	a78d0 <stdout_putp+0xa5aa0>
    10ac:	545f3631 	.inst	0x545f3631 ; undefined
    10b0:	5f455059 	.inst	0x5f455059 ; undefined
void irq_handler(){
    10b4:	6e69205f 	usubl2	v31.4s, v2.8h, v9.8h
    10b8:	5f5f0074 	.inst	0x5f5f0074 ; undefined
    uint32* irq_sts = (unsigned int*)(ARM_INT_BASE + IRQ_BASIC_PENDING_OFF); 
    10bc:	31544c46 	adds	w6, w2, #0x513, lsl #12
    10c0:	494d5f36 	.inst	0x494d5f36 ; undefined
    10c4:	58455f4e 	ldr	x14, 8bcac <stdout_putp+0x89e7c>
    if(timer_intr_pending(irq_sts)){
    10c8:	205f5f50 	.inst	0x205f5f50 ; undefined
    10cc:	33312d28 	.inst	0x33312d28 ; undefined
    10d0:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    10d4:	33544c46 	.inst	0x33544c46 ; undefined
        RASPIOS_DBG(TIMER_DBG, "Systick intr rasied!\n");
    10d8:	45445f32 	.inst	0x45445f32 ; undefined
    10dc:	414d4943 	.inst	0x414d4943 ; undefined
    10e0:	49445f4c 	.inst	0x49445f4c ; undefined
        systick_handler();
    10e4:	205f5f47 	.inst	0x205f5f47 ; undefined
}
    10e8:	5f5f0039 	.inst	0x5f5f0039 ; undefined
    10ec:	31544c46 	adds	w6, w2, #0x513, lsl #12
    10f0:	445f3832 	.inst	0x445f3832 ; undefined
void init_uart(){
    10f4:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    10f8:	00333320 	.inst	0x00333320 ; NYI
    *AUX_ENABLES = 0;
    10fc:	49555f5f 	.inst	0x49555f5f ; undefined
    1100:	3631544e 	tbz	w14, #6, 3b88 <stdout_putp+0x1d58>
    1104:	5059545f 	adr	xzr, b3b8e <stdout_putp+0xb1d5e>
    1108:	205f5f45 	.inst	0x205f5f45 ; undefined
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
    110c:	726f6873 	.inst	0x726f6873 ; undefined
    1110:	6e752074 	usubl2	v20.4s, v3.8h, v21.8h
    1114:	6e676973 	.inst	0x6e676973 ; undefined
    1118:	69206465 	stgp	x5, x25, [x3, #-1024]
    111c:	5f00746e 	.inst	0x5f00746e ; undefined
    gpio->GPPUD = 0;
    1120:	42444c5f 	.inst	0x42444c5f ; undefined
    1124:	414d5f4c 	.inst	0x414d5f4c ; undefined
    1128:	205f5f58 	.inst	0x205f5f58 ; undefined
    112c:	38312e31 	.inst	0x38312e31 ; undefined
    delay(150);
    1130:	31333739 	adds	w25, w25, #0xccd
    1134:	33353934 	.inst	0x33353934 ; undefined
    gpio->GPPUDCLK0 = (1 << 14) | (1 << 15); 
    1138:	33323735 	.inst	0x33323735 ; undefined
    113c:	35363731 	cbnz	w17, 6d820 <stdout_putp+0x6b9f0>
    1140:	37353830 	tbnz	w16, #6, ffffffffffffb844 <stdout_putp+0xffffffffffff9a14>
    1144:	32333935 	orr	w21, w9, #0xfffe000
    1148:	38323636 	.inst	0x38323636 ; undefined
    delay(150);
    114c:	30373030 	adr	x16, 6f751 <stdout_putp+0x6d921>
    1150:	342b6532 	cbz	w18, 57df4 <stdout_putp+0x55fc4>
    gpio->GPPUDCLK0 = 0; 
    1154:	4c323339 	.inst	0x4c323339 ; undefined
    1158:	575f5f00 	.inst	0x575f5f00 ; undefined
    115c:	52414843 	.inst	0x52414843 ; undefined
    1160:	4449575f 	.inst	0x4449575f ; undefined
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
    1164:	5f5f4854 	.inst	0x5f5f4854 ; undefined
    1168:	00323320 	.inst	0x00323320 ; NYI
    116c:	43475f5f 	.inst	0x43475f5f ; undefined
    1170:	54415f43 	b.cc	83d58 <stdout_putp+0x81f28>  // b.lo, b.ul, b.last
    1174:	43494d4f 	.inst	0x43494d4f ; undefined
    1178:	4148435f 	.inst	0x4148435f ; undefined
    117c:	4f4c5f52 	.inst	0x4f4c5f52 ; undefined
    1180:	465f4b43 	.inst	0x465f4b43 ; undefined
    1184:	20454552 	.inst	0x20454552 ; undefined
    mini_uart->AUX_MU_IIR_REG = 0x3 << 1; 
    1188:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    118c:	5f4d5241 	.inst	0x5f4d5241 ; undefined
    1190:	54414546 	b.vs	83a38 <stdout_putp+0x81c08>
    1194:	5f455255 	.inst	0x5f455255 ; undefined
    1198:	205a4c43 	.inst	0x205a4c43 ; undefined
    mini_uart->AUX_MU_BAUD_REG = (int)((SYS_TIMER_FREQ_HZ)/(8*UART_BAUDRATE)) - 1;
    119c:	5f5f0031 	.inst	0x5f5f0031 ; undefined
    11a0:	474e4f4c 	.inst	0x474e4f4c ; undefined
    11a4:	4e4f4c5f 	.inst	0x4e4f4c5f ; undefined
    11a8:	414d5f47 	.inst	0x414d5f47 ; undefined
    11ac:	205f5f58 	.inst	0x205f5f58 ; undefined
    *AUX_ENABLES = 1;
    11b0:	66377830 	.inst	0x66377830 ; undefined
    11b4:	66666666 	.inst	0x66666666 ; undefined
    11b8:	66666666 	.inst	0x66666666 ; undefined
    11bc:	66666666 	.inst	0x66666666 ; undefined
    11c0:	4c4c6666 	.inst	0x4c4c6666 ; undefined
}
    11c4:	415f5f00 	.inst	0x415f5f00 ; undefined
    11c8:	415f4d52 	.inst	0x415f4d52 ; undefined
    11cc:	4e47494c 	.inst	0x4e47494c ; undefined
    return mini_uart->AUX_MU_LSR_REG & 0x1;
    11d0:	58414d5f 	ldr	xzr, 83b78 <stdout_putp+0x81d48>
    11d4:	5257505f 	.inst	0x5257505f ; undefined
    11d8:	00383220 	.inst	0x00383220 ; NYI
    11dc:	49555f5f 	.inst	0x49555f5f ; undefined
    11e0:	4c5f544e 	.inst	0x4c5f544e ; undefined
    11e4:	54534145 	b.pl	a7a0c <stdout_putp+0xa5bdc>  // b.nfrst
    11e8:	545f3631 	.inst	0x545f3631 ; undefined
}
    11ec:	5f455059 	.inst	0x5f455059 ; undefined
uint8 uart_read(){
    11f0:	6873205f 	.inst	0x6873205f ; undefined
    uint8 data = mini_uart->AUX_MU_IO_REG & 0xFF;
    11f4:	2074726f 	.inst	0x2074726f ; undefined
    11f8:	69736e75 	ldpsw	x21, x27, [x19, #-104]
    11fc:	64656e67 	.inst	0x64656e67 ; undefined
    1200:	746e6920 	.inst	0x746e6920 ; undefined
    1204:	465f5f00 	.inst	0x465f5f00 ; undefined
    return data;
    1208:	4d5f544c 	.inst	0x4d5f544c ; undefined
}
    120c:	315f5841 	adds	w1, w2, #0x7d6, lsl #12
    1210:	58455f30 	ldr	x16, 8bdf4 <stdout_putp+0x89fc4>
void uart_write(uint8 data){
    1214:	205f5f50 	.inst	0x205f5f50 ; undefined
    1218:	5f003833 	.inst	0x5f003833 ; undefined
    mini_uart->AUX_MU_IO_REG = data;
    121c:	42444c5f 	.inst	0x42444c5f ; undefined
    1220:	50455f4c 	adr	x12, 8be0a <stdout_putp+0x89fda>
    1224:	4f4c4953 	.inst	0x4f4c4953 ; undefined
    1228:	205f5f4e 	.inst	0x205f5f4e ; undefined
    122c:	32392e31 	orr	w17, w17, #0x7ff80
}
    1230:	39323935 	strb	w21, [x9, #3214]
    1234:	33343439 	.inst	0x33343439 ; undefined
    1238:	33323738 	.inst	0x33323738 ; undefined
void putc(char *p, char data){
    123c:	33353835 	.inst	0x33353835 ; undefined
    1240:	39353530 	strb	w16, [x9, #3405]
    1244:	34393737 	cbz	w23, 73928 <stdout_putp+0x71af8>
    1248:	34383532 	cbz	w18, 718ec <stdout_putp+0x6fabc>
    uart_write(data);
    124c:	33373239 	.inst	0x33373239 ; undefined
    1250:	332d6532 	.inst	0x332d6532 ; undefined
}
    1254:	5f004c34 	.inst	0x5f004c34 ; undefined
    1258:	4d52415f 	.inst	0x4d52415f ; undefined
    125c:	4145465f 	.inst	0x4145465f ; undefined
    {
    1260:	45525554 	.inst	0x45525554 ; undefined
    1264:	344d535f 	cbz	wzr, 9bccc <stdout_putp+0x99e9c>
    1268:	465f5f00 	.inst	0x465f5f00 ; undefined
    126c:	3233544c 	orr	w12, w2, #0xffffe007
    1270:	50455f58 	adr	x24, 8be5a <stdout_putp+0x8a02a>
    int n=0;
    1274:	4f4c4953 	.inst	0x4f4c4953 ; undefined
    unsigned int d=1;
    1278:	205f5f4e 	.inst	0x205f5f4e ; undefined
    127c:	32322e32 	orr	w18, w17, #0x3ffc000
    while (num/d >= base)
    1280:	36343430 	tbz	w16, #6, ffffffffffff9904 <stdout_putp+0xffffffffffff7ad4>
        d*=base;
    1284:	32393430 	orr	w16, w1, #0x1fff80
    1288:	31333035 	adds	w21, w1, #0xccc
    128c:	30383033 	adr	x19, 71891 <stdout_putp+0x6fa61>
    1290:	32373438 	orr	w24, w1, #0x7ffe00
    while (num/d >= base)
    1294:	33333336 	.inst	0x33333336 ; undefined
    1298:	31383136 	adds	w22, w9, #0xe0c
    129c:	36303436 	tbz	w22, #6, 1920 <tfp_format+0x334>
    12a0:	312d6532 	adds	w18, w9, #0xb59
    12a4:	32334636 	orr	w22, w17, #0x7fffe000
    12a8:	5f5f0078 	.inst	0x5f5f0078 ; undefined
    while (d!=0) {
    12ac:	31544c46 	adds	w6, w2, #0x513, lsl #12
        int dgt = num / d;
    12b0:	414d5f36 	.inst	0x414d5f36 ; undefined
    12b4:	58455f58 	ldr	x24, 8be9c <stdout_putp+0x8a06c>
    12b8:	205f5f50 	.inst	0x205f5f50 ; undefined
    12bc:	5f003631 	.inst	0x5f003631 ; undefined
        num%= d;
    12c0:	5f4f4e5f 	.inst	0x5f4f4e5f ; undefined
    12c4:	494c4e49 	.inst	0x494c4e49 ; undefined
    12c8:	5f5f454e 	.inst	0x5f5f454e ; undefined
    12cc:	41003120 	.inst	0x41003120 ; undefined
    12d0:	4d5f5855 	.inst	0x4d5f5855 ; undefined
    12d4:	41425f55 	.inst	0x41425f55 ; undefined
    12d8:	525f4455 	.inst	0x525f4455 ; undefined
        d/=base;
    12dc:	5f004745 	.inst	0x5f004745 ; undefined
    12e0:	544e495f 	.inst	0x544e495f ; undefined
    12e4:	5f58414d 	.inst	0x5f58414d ; undefined
    12e8:	5f58414d 	.inst	0x5f58414d ; undefined
        if (n || dgt>0 || d==0) {
    12ec:	7830205f 	steorh	w16, [x2]
    12f0:	66666637 	.inst	0x66666637 ; undefined
    12f4:	66666666 	.inst	0x66666666 ; undefined
    12f8:	66666666 	.inst	0x66666666 ; undefined
    12fc:	66666666 	.inst	0x66666666 ; undefined
    1300:	5f5f004c 	.inst	0x5f5f004c ; undefined
    1304:	414e494c 	.inst	0x414e494c ; undefined
    1308:	525f4f52 	.inst	0x525f4f52 ; undefined
    130c:	41454c45 	.inst	0x41454c45 ; undefined
            *bf++ = dgt+(dgt<10 ? '0' : (uc ? 'A' : 'a')-10);
    1310:	5f5f4553 	.inst	0x5f5f4553 ; undefined
    1314:	31303220 	adds	w0, w17, #0xc0c
    1318:	00383038 	.inst	0x00383038 ; NYI
    131c:	4c465f5f 	.inst	0x4c465f5f ; undefined
    1320:	5f343654 	.inst	0x5f343654 ; undefined
    1324:	49434544 	.inst	0x49434544 ; undefined
    1328:	5f4c414d 	.inst	0x5f4c414d ; undefined
    132c:	5f474944 	.inst	0x5f474944 ; undefined
    1330:	3731205f 	tbnz	wzr, #6, 3738 <stdout_putp+0x1908>
    1334:	475f5f00 	.inst	0x475f5f00 ; undefined
    1338:	485f4343 	ldxrh	w3, [x26]
    133c:	5f455641 	shl	d1, d18, #5
    1340:	434e5953 	.inst	0x434e5953 ; undefined
    1344:	4d4f435f 	.inst	0x4d4f435f ; undefined
    1348:	45524150 	.inst	0x45524150 ; undefined
    134c:	444e415f 	.inst	0x444e415f ; undefined
    1350:	4157535f 	.inst	0x4157535f ; undefined
    1354:	20345f50 	.inst	0x20345f50 ; undefined
    1358:	5f5f0031 	.inst	0x5f5f0031 ; undefined
            ++n;
    135c:	455a4953 	.inst	0x455a4953 ; undefined
    1360:	5059545f 	adr	xzr, b3dea <stdout_putp+0xb1fba>
    1364:	205f5f45 	.inst	0x205f5f45 ; undefined
    while (d!=0) {
    1368:	676e6f6c 	.inst	0x676e6f6c ; undefined
    136c:	736e7520 	.inst	0x736e7520 ; undefined
    1370:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
    *bf=0;
    1374:	6e692064 	usubl2	v4.4s, v3.8h, v9.8h
    1378:	55410074 	.inst	0x55410074 ; undefined
    }
    137c:	4e455f58 	.inst	0x4e455f58 ; undefined
    1380:	454c4241 	.inst	0x454c4241 ; undefined
    1384:	5f5f0053 	.inst	0x5f5f0053 ; undefined
    {
    1388:	544e4955 	.inst	0x544e4955 ; undefined
    138c:	5341465f 	.inst	0x5341465f ; undefined
    1390:	5f363154 	.inst	0x5f363154 ; undefined
    1394:	5f58414d 	.inst	0x5f58414d ; undefined
    if (num<0) {
    1398:	7830205f 	steorh	w16, [x2]
    139c:	66666666 	.inst	0x66666666 ; undefined
    13a0:	66666666 	.inst	0x66666666 ; undefined
        num=-num;
    13a4:	5f5f0055 	.inst	0x5f5f0055 ; undefined
    13a8:	544e4955 	.inst	0x544e4955 ; undefined
    13ac:	5341465f 	.inst	0x5341465f ; undefined
        *bf++ = '-';
    13b0:	5f363154 	.inst	0x5f363154 ; undefined
    13b4:	45505954 	.inst	0x45505954 ; undefined
    13b8:	75205f5f 	.inst	0x75205f5f ; undefined
    13bc:	6769736e 	.inst	0x6769736e ; undefined
    13c0:	2064656e 	.inst	0x2064656e ; undefined
    ui2a(num,10,0,bf);
    13c4:	00746e69 	.inst	0x00746e69 ; undefined
    13c8:	4c465f5f 	.inst	0x4c465f5f ; undefined
    13cc:	414d5f54 	.inst	0x414d5f54 ; undefined
    13d0:	205f5f58 	.inst	0x205f5f58 ; undefined
    13d4:	30342e33 	adr	x19, 69999 <stdout_putp+0x67b69>
    }
    13d8:	33323832 	.inst	0x33323832 ; undefined
    13dc:	33363634 	.inst	0x33363634 ; undefined
    13e0:	38323538 	.inst	0x38323538 ; undefined
    {
    13e4:	38393538 	.inst	0x38393538 ; undefined
    13e8:	30373131 	adr	x17, 6fa0d <stdout_putp+0x6dbdd>
    if (ch>='0' && ch<='9')
    13ec:	33383134 	.inst	0x33383134 ; undefined
    13f0:	35343834 	cbnz	w20, 69af4 <stdout_putp+0x67cc4>
    13f4:	32393631 	orr	w17, w17, #0x1fff80
    13f8:	332b6535 	.inst	0x332b6535 ; undefined
    13fc:	5f004638 	.inst	0x5f004638 ; undefined
    1400:	4c42445f 	.inst	0x4c42445f ; undefined
        return ch-'0';
    1404:	4e494d5f 	.inst	0x4e494d5f ; undefined
    1408:	5f30315f 	.inst	0x5f30315f ; undefined
    140c:	5f505845 	.inst	0x5f505845 ; undefined
    else if (ch>='a' && ch<='f')
    1410:	2d28205f 	stp	s31, s8, [x2, #-192]
    1414:	29373033 	stp	w19, w12, [x1, #-72]
    1418:	465f5f00 	.inst	0x465f5f00 ; undefined
    141c:	3233544c 	orr	w12, w2, #0xffffe007
    1420:	4e494d5f 	.inst	0x4e494d5f ; undefined
    1424:	5058455f 	adr	xzr, b1cce <stdout_putp+0xafe9e>
        return ch-'a'+10;
    1428:	28205f5f 	stnp	wzr, w23, [x26, #-256]
    142c:	3532312d 	cbnz	w13, 65a50 <stdout_putp+0x63c20>
    1430:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    else if (ch>='A' && ch<='F')
    1434:	5f585847 	.inst	0x5f585847 ; undefined
    1438:	5f494241 	.inst	0x5f494241 ; undefined
    143c:	53524556 	.inst	0x53524556 ; undefined
    1440:	204e4f49 	.inst	0x204e4f49 ; undefined
    1444:	33313031 	.inst	0x33313031 ; undefined
    1448:	4c5f5f00 	.inst	0x4c5f5f00 ; undefined
        return ch-'A'+10;
    144c:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    1450:	5f4e494d 	.inst	0x5f4e494d ; undefined
    1454:	455f3031 	.inst	0x455f3031 ; undefined
    else return -1;
    1458:	5f5f5058 	.inst	0x5f5f5058 ; undefined
    }
    145c:	342d2820 	cbz	w0, 5b960 <stdout_putp+0x59b30>
    1460:	29313339 	stp	w25, w12, [x25, #-120]
    {
    1464:	465f5f00 	.inst	0x465f5f00 ; undefined
    1468:	455f544c 	.inst	0x455f544c ; undefined
    146c:	5f4c4156 	.inst	0x5f4c4156 ; undefined
    1470:	4854454d 	ldxrh	w13, [x10]
    1474:	435f444f 	.inst	0x435f444f ; undefined
    1478:	5f5f3939 	sqdmlal	s25, h9, v15.h[5]
    char* p= *src;
    147c:	465f5f00 	.inst	0x465f5f00 ; undefined
    1480:	3233544c 	orr	w12, w2, #0xffffe007
    1484:	4749445f 	.inst	0x4749445f ; undefined
    int num=0;
    1488:	36205f5f 	tbz	wzr, #4, 2070 <stdout_putp+0x240>
    while ((digit=a2d(ch))>=0) {
    148c:	465f5f00 	.inst	0x465f5f00 ; undefined
        if (digit>base) break;
    1490:	3436544c 	cbz	w12, 6df18 <stdout_putp+0x6c0e8>
    1494:	5341485f 	.inst	0x5341485f ; undefined
    1498:	4e45445f 	.inst	0x4e45445f ; undefined
    149c:	5f4d524f 	.inst	0x5f4d524f ; undefined
        num=num*base+digit;
    14a0:	0031205f 	.inst	0x0031205f ; NYI
    14a4:	4c465f5f 	.inst	0x4c465f5f ; undefined
    14a8:	56455f54 	.inst	0x56455f54 ; undefined
    14ac:	4d5f4c41 	.inst	0x4d5f4c41 ; undefined
    14b0:	4f485445 	shl	v5.2d, v2.2d, #8
    14b4:	205f5f44 	.inst	0x205f5f44 ; undefined
        ch=*p++;
    14b8:	5f5f0030 	.inst	0x5f5f0030 ; undefined
    14bc:	33544c46 	.inst	0x33544c46 ; undefined
    14c0:	485f5832 	ldxrh	w18, [x1]
    14c4:	445f5341 	.inst	0x445f5341 ; undefined
    14c8:	524f4e45 	.inst	0x524f4e45 ; undefined
    while ((digit=a2d(ch))>=0) {
    14cc:	205f5f4d 	.inst	0x205f5f4d ; undefined
    14d0:	5f5f0031 	.inst	0x5f5f0031 ; undefined
    14d4:	5f4d5241 	.inst	0x5f4d5241 ; undefined
    14d8:	54414546 	b.vs	83d80 <stdout_putp+0x81f50>
    14dc:	5f455255 	.inst	0x5f455255 ; undefined
    14e0:	00534541 	.inst	0x00534541 ; undefined
    14e4:	4e495f5f 	.inst	0x4e495f5f ; undefined
        if (digit>base) break;
    14e8:	58414d54 	ldr	x20, 83e90 <stdout_putp+0x82060>
    *src=p;
    14ec:	6328435f 	.inst	0x6328435f ; undefined
    14f0:	20632029 	.inst	0x20632029 ; undefined
    14f4:	4c202323 	.inst	0x4c202323 ; undefined
    *nump=num;
    14f8:	555f5f00 	.inst	0x555f5f00 ; undefined
    14fc:	5f544e49 	.inst	0x5f544e49 ; undefined
    1500:	54534146 	b.vs	a7d28 <stdout_putp+0xa5ef8>
    return ch;
    1504:	59545f38 	.inst	0x59545f38 ; undefined
    }
    1508:	5f5f4550 	.inst	0x5f5f4550 ; undefined
    150c:	736e7520 	.inst	0x736e7520 ; undefined
    {
    1510:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
    1514:	6e692064 	usubl2	v4.4s, v3.8h, v9.8h
    1518:	5f5f0074 	.inst	0x5f5f0074 ; undefined
    151c:	36434544 	tbz	w4, #8, 7dc4 <stdout_putp+0x5f94>
    1520:	494d5f34 	.inst	0x494d5f34 ; undefined
    1524:	58455f4e 	ldr	x14, 8c10c <stdout_putp+0x8a2dc>
    1528:	205f5f50 	.inst	0x205f5f50 ; undefined
    char fc=z? '0' : ' ';
    152c:	38332d28 	.inst	0x38332d28 ; undefined
    1530:	5f002932 	.inst	0x5f002932 ; undefined
    1534:	65656e5f 	fnmls	z31.h, p3/m, z18.h, z5.h
    1538:	5f5f5f64 	.inst	0x5f5f5f64 ; undefined
    153c:	6c5f6176 	ldnp	d22, d24, [x11, #496]
    1540:	00747369 	.inst	0x00747369 ; undefined
    1544:	4e495f5f 	.inst	0x4e495f5f ; undefined
    char* p=bf;
    1548:	454c5f54 	.inst	0x454c5f54 ; undefined
    154c:	36545341 	tbz	w1, #10, ffffffffffff9fb4 <stdout_putp+0xffffffffffff8184>
    while (*p++ && n > 0)
    1550:	414d5f34 	.inst	0x414d5f34 ; undefined
        n--;
    1554:	205f5f58 	.inst	0x205f5f58 ; undefined
    1558:	66377830 	.inst	0x66377830 ; undefined
    155c:	66666666 	.inst	0x66666666 ; undefined
    while (*p++ && n > 0)
    1560:	66666666 	.inst	0x66666666 ; undefined
    1564:	66666666 	.inst	0x66666666 ; undefined
    1568:	004c6666 	.inst	0x004c6666 ; undefined
    156c:	4e495f5f 	.inst	0x4e495f5f ; undefined
    1570:	454c5f54 	.inst	0x454c5f54 ; undefined
    1574:	38545341 	ldurb	w1, [x26, #-187]
    1578:	4449575f 	.inst	0x4449575f ; undefined
    157c:	5f5f4854 	.inst	0x5f5f4854 ; undefined
    1580:	76003820 	.inst	0x76003820 ; undefined
    while (n-- > 0)
    1584:	6e655f61 	uqrshl	v1.8h, v27.8h, v5.8h
        putf(putp,fc);
    1588:	29762864 	ldp	w4, w10, [x3, #-80]
    158c:	625f5f20 	.inst	0x625f5f20 ; undefined
    1590:	746c6975 	.inst	0x746c6975 ; undefined
    1594:	765f6e69 	.inst	0x765f6e69 ; undefined
    while (n-- > 0)
    1598:	6e655f61 	uqrshl	v1.8h, v27.8h, v5.8h
    159c:	29762864 	ldp	w4, w10, [x3, #-80]
    15a0:	555f5f00 	.inst	0x555f5f00 ; undefined
    15a4:	38544e49 	ldrb	w9, [x18, #-188]!
    15a8:	58414d5f 	ldr	xzr, 83f50 <stdout_putp+0x82120>
    while ((ch= *bf++))
    15ac:	30205f5f 	adr	xzr, 42195 <stdout_putp+0x40365>
        putf(putp,ch);
    15b0:	00666678 	.inst	0x00666678 ; undefined
    15b4:	61765f5f 	.inst	0x61765f5f ; undefined
    15b8:	73696c5f 	.inst	0x73696c5f ; undefined
    15bc:	205f5f74 	.inst	0x205f5f74 ; undefined
    while ((ch= *bf++))
    15c0:	555f5f00 	.inst	0x555f5f00 ; undefined
    15c4:	31544e49 	adds	w9, w18, #0x513, lsl #12
    15c8:	414d5f36 	.inst	0x414d5f36 ; undefined
    15cc:	205f5f58 	.inst	0x205f5f58 ; undefined
    15d0:	66667830 	.inst	0x66667830 ; undefined
    15d4:	41006666 	.inst	0x41006666 ; undefined
    15d8:	4d5f5855 	.inst	0x4d5f5855 ; undefined
    15dc:	54535f55 	.inst	0x54535f55 ; undefined
    }
    15e0:	525f5441 	.inst	0x525f5441 ; undefined
    15e4:	5f004745 	.inst	0x5f004745 ; undefined
    15e8:	544e495f 	.inst	0x544e495f ; undefined
    {
    15ec:	5341465f 	.inst	0x5341465f ; undefined
    15f0:	5f343654 	.inst	0x5f343654 ; undefined
    15f4:	45505954 	.inst	0x45505954 ; undefined
    15f8:	6c205f5f 	stnp	d31, d23, [x26, #-512]
    15fc:	20676e6f 	.inst	0x20676e6f ; undefined
    1600:	00746e69 	.inst	0x00746e69 ; undefined
    1604:	4c465f5f 	.inst	0x4c465f5f ; undefined
    while ((ch=*(fmt++))) {
    1608:	5f363154 	.inst	0x5f363154 ; undefined
        if (ch!='%')
    160c:	5f4e494d 	.inst	0x5f4e494d ; undefined
    1610:	2e36205f 	usubl	v31.8h, v2.8b, v22.8b
    1614:	35333031 	cbnz	w17, 67c18 <stdout_putp+0x65de8>
            putf(putp,ch);
    1618:	32363531 	orr	w17, w9, #0xfffc00
    161c:	30303035 	adr	x21, 61c21 <stdout_putp+0x5fdf1>
    1620:	30303030 	adr	x16, 61c25 <stdout_putp+0x5fdf5>
    1624:	30303030 	adr	x16, 61c29 <stdout_putp+0x5fdf9>
    1628:	30303030 	adr	x16, 61c2d <stdout_putp+0x5fdfd>
            char lz=0;
    162c:	30303030 	adr	x16, 61c31 <stdout_putp+0x5fe01>
            int w=0;
    1630:	30303030 	adr	x16, 61c35 <stdout_putp+0x5fe05>
            ch=*(fmt++);
    1634:	65303030 	.inst	0x65303030 ; undefined
    1638:	3146352d 	adds	w13, w9, #0x18d, lsl #12
    163c:	5f5f0036 	.inst	0x5f5f0036 ; undefined
    1640:	5f4d5241 	.inst	0x5f4d5241 ; undefined
    1644:	5f474942 	.inst	0x5f474942 ; undefined
            if (ch=='0') {
    1648:	49444e45 	.inst	0x49444e45 ; undefined
    164c:	5f004e41 	.inst	0x5f004e41 ; undefined
    1650:	544e495f 	.inst	0x544e495f ; undefined
                ch=*(fmt++);
    1654:	5f58414d 	.inst	0x5f58414d ; undefined
    1658:	54444957 	.inst	0x54444957 ; undefined
    165c:	205f5f48 	.inst	0x205f5f48 ; undefined
    1660:	5f003436 	.inst	0x5f003436 ; undefined
    1664:	4345445f 	.inst	0x4345445f ; undefined
                lz=1;
    1668:	4d5f3233 	.inst	0x4d5f3233 ; undefined
    166c:	5f5f5841 	.inst	0x5f5f5841 ; undefined
            if (ch>='0' && ch<='9') {
    1670:	392e3920 	strb	w0, [x9, #2958]
    1674:	39393939 	strb	w25, [x9, #3662]
    1678:	36394539 	tbz	w25, #7, 3f1c <stdout_putp+0x20ec>
    167c:	5f004644 	.inst	0x5f004644 ; undefined
    1680:	4343475f 	.inst	0x4343475f ; undefined
    1684:	4345495f 	.inst	0x4345495f ; undefined
                ch=a2i(ch,&fmt,10,&w);
    1688:	3935355f 	strb	wzr, [x10, #3405]
    168c:	5f003020 	.inst	0x5f003020 ; undefined
    1690:	5254505f 	.inst	0x5254505f ; undefined
    1694:	46464944 	.inst	0x46464944 ; undefined
    1698:	58414d5f 	ldr	xzr, 84040 <stdout_putp+0x82210>
    169c:	30205f5f 	adr	xzr, 42285 <stdout_putp+0x40455>
    16a0:	66663778 	.inst	0x66663778 ; undefined
    16a4:	66666666 	.inst	0x66666666 ; undefined
            switch (ch) {
    16a8:	66666666 	.inst	0x66666666 ; undefined
    16ac:	66666666 	.inst	0x66666666 ; undefined
    16b0:	5f004c66 	.inst	0x5f004c66 ; undefined
    16b4:	544e495f 	.inst	0x544e495f ; undefined
    16b8:	41454c5f 	.inst	0x41454c5f ; undefined
    16bc:	36315453 	tbz	w19, #6, 4144 <stdout_putp+0x2314>
    16c0:	5059545f 	adr	xzr, b414a <stdout_putp+0xb231a>
    16c4:	205f5f45 	.inst	0x205f5f45 ; undefined
    16c8:	726f6873 	.inst	0x726f6873 ; undefined
    16cc:	6e692074 	usubl2	v20.4s, v3.8h, v9.8h
    16d0:	5f5f0074 	.inst	0x5f5f0074 ; undefined
                    break;
    16d4:	33544c46 	.inst	0x33544c46 ; undefined
            switch (ch) {
    16d8:	414d5f32 	.inst	0x414d5f32 ; undefined
    16dc:	58455f58 	ldr	x24, 8c2c4 <stdout_putp+0x8a494>
    16e0:	205f5f50 	.inst	0x205f5f50 ; undefined
    16e4:	00383231 	.inst	0x00383231 ; NYI
    16e8:	42445f5f 	.inst	0x42445f5f ; undefined
    16ec:	49445f4c 	.inst	0x49445f4c ; undefined
                    break;
    16f0:	205f5f47 	.inst	0x205f5f47 ; undefined
            switch (ch) {
    16f4:	5f003531 	.inst	0x5f003531 ; undefined
    16f8:	544e495f 	.inst	0x544e495f ; undefined
    16fc:	41454c5f 	.inst	0x41454c5f ; undefined
    1700:	5f385453 	.inst	0x5f385453 ; undefined
                    break;
    1704:	5f58414d 	.inst	0x5f58414d ; undefined
                    ui2a(va_arg(va, unsigned int),10,0,bf);
    1708:	7830205f 	steorh	w16, [x2]
    170c:	5f006637 	.inst	0x5f006637 ; undefined
    1710:	36504c5f 	tbz	wzr, #10, 2098 <stdout_putp+0x268>
    1714:	205f5f34 	.inst	0x205f5f34 ; undefined
    1718:	5f5f0031 	.inst	0x5f5f0031 ; undefined
    171c:	5f434347 	.inst	0x5f434347 ; undefined
    1720:	4d4f5441 	.inst	0x4d4f5441 ; undefined
    1724:	4c5f4349 	.inst	0x4c5f4349 ; undefined
    1728:	5f474e4f 	.inst	0x5f474e4f ; undefined
    172c:	4b434f4c 	sub	w12, w26, w3, lsr #19
    1730:	4552465f 	.inst	0x4552465f ; undefined
    1734:	00322045 	.inst	0x00322045 ; NYI
    1738:	4c465f5f 	.inst	0x4c465f5f ; undefined
    173c:	58323354 	ldr	x20, 65da4 <stdout_putp+0x63f74>
    1740:	4749445f 	.inst	0x4749445f ; undefined
    1744:	31205f5f 	cmn	w26, #0x817
    1748:	5f5f0035 	.inst	0x5f5f0035 ; undefined
    174c:	33544c46 	.inst	0x33544c46 ; undefined
    1750:	4d5f5832 	.inst	0x4d5f5832 ; undefined
    1754:	5f544e41 	.inst	0x5f544e41 ; undefined
    1758:	5f474944 	.inst	0x5f474944 ; undefined
    175c:	3335205f 	.inst	0x3335205f ; undefined
    1760:	504c5f00 	adr	x0, 9a342 <stdout_putp+0x98512>
    1764:	31203436 	adds	w22, w1, #0x80d
    1768:	6e6f6c00 	umin	v0.8h, v0.8h, v15.8h
    176c:	6f6c2067 	umlal2	v7.4s, v3.8h, v12.h[2]
    1770:	6920676e 	stgp	x14, x25, [x27, #-1024]
    1774:	5f00746e 	.inst	0x5f00746e ; undefined
                    putchw(putp,putf,w,lz,bf);
    1778:	4148435f 	.inst	0x4148435f ; undefined
    177c:	49425f52 	.inst	0x49425f52 ; undefined
    1780:	205f5f54 	.inst	0x205f5f54 ; undefined
    1784:	5f5f0038 	.inst	0x5f5f0038 ; undefined
    1788:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    178c:	5f4e494d 	.inst	0x5f4e494d ; undefined
    1790:	2828205f 	stnp	wzr, w8, [x2, #-192]
    1794:	62756f64 	.inst	0x62756f64 ; undefined
                    break;
    1798:	3229656c 	orr	w12, w11, #0xff81ffff
                    i2a(va_arg(va, int),bf);
    179c:	3532322e 	cbnz	w14, 65de0 <stdout_putp+0x63fb0>
    17a0:	38333730 	.inst	0x38333730 ; undefined
    17a4:	30353835 	adr	x21, 6bea9 <stdout_putp+0x6a079>
    17a8:	31303237 	adds	w23, w17, #0xc0c
    17ac:	30333833 	adr	x19, 67eb1 <stdout_putp+0x66081>
    17b0:	33323039 	.inst	0x33323039 ; undefined
    17b4:	37313732 	tbnz	w18, #6, 3e98 <stdout_putp+0x2068>
    17b8:	34323333 	cbz	w19, 65e1c <stdout_putp+0x63fec>
    17bc:	36303430 	tbz	w16, #6, 1e40 <stdout_putp+0x10>
    17c0:	30332d65 	adr	x5, 67d6d <stdout_putp+0x65f3d>
    17c4:	00294c38 	.inst	0x00294c38 ; NYI
    17c8:	52415f5f 	.inst	0x52415f5f ; undefined
    17cc:	50465f4d 	adr	x13, 8e3b6 <stdout_putp+0x8c586>
    17d0:	475f5f00 	.inst	0x475f5f00 ; undefined
    17d4:	415f4343 	.inst	0x415f4343 ; undefined
    17d8:	494d4f54 	.inst	0x494d4f54 ; undefined
    17dc:	4f425f43 	.inst	0x4f425f43 ; undefined
    17e0:	4c5f4c4f 	.inst	0x4c5f4c4f ; undefined
    17e4:	5f4b434f 	.inst	0x5f4b434f ; undefined
    17e8:	45455246 	.inst	0x45455246 ; undefined
    17ec:	5f003220 	.inst	0x5f003220 ; undefined
    17f0:	4e49465f 	.inst	0x4e49465f ; undefined
    17f4:	5f455449 	shl	d9, d2, #5
    17f8:	4854414d 	ldxrh	w13, [x10]
    17fc:	4c4e4f5f 	.inst	0x4c4e4f5f ; undefined
                    putchw(putp,putf,w,lz,bf);
    1800:	205f5f59 	.inst	0x205f5f59 ; undefined
    1804:	5f5f0030 	.inst	0x5f5f0030 ; undefined
    1808:	41484357 	.inst	0x41484357 ; undefined
    180c:	59545f52 	.inst	0x59545f52 ; undefined
    1810:	5f5f4550 	.inst	0x5f5f4550 ; undefined
    1814:	736e7520 	.inst	0x736e7520 ; undefined
    1818:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
    181c:	6e692064 	usubl2	v4.4s, v3.8h, v9.8h
                    break;
    1820:	5f5f0074 	.inst	0x5f5f0074 ; undefined
                    ui2a(va_arg(va, unsigned int),16,(ch=='X'),bf);
    1824:	36544c46 	tbz	w6, #10, ffffffffffffa1ac <stdout_putp+0xffffffffffff837c>
    1828:	414d5f34 	.inst	0x414d5f34 ; undefined
    182c:	205f5f58 	.inst	0x205f5f58 ; undefined
    1830:	39372e31 	strb	w17, [x17, #3531]
    1834:	33393637 	.inst	0x33393637 ; undefined
    1838:	38343331 	ldsetb	w20, w17, [x25]
    183c:	31333236 	adds	w22, w17, #0xccc
    1840:	38303735 	.inst	0x38303735 ; undefined
    1844:	32353431 	orr	w17, w1, #0x1fff800
    1848:	33323437 	.inst	0x33323437 ; undefined
    184c:	37313337 	tbnz	w23, #6, 3eb0 <stdout_putp+0x2080>
    1850:	35333430 	cbnz	w16, 67ed4 <stdout_putp+0x660a4>
    1854:	332b6537 	.inst	0x332b6537 ; undefined
    1858:	36463830 	tbz	w16, #8, ffffffffffffdf5c <stdout_putp+0xffffffffffffc12c>
    185c:	5f5f0034 	.inst	0x5f5f0034 ; undefined
    1860:	544e4955 	.inst	0x544e4955 ; undefined
    1864:	41454c5f 	.inst	0x41454c5f ; undefined
    1868:	34365453 	cbz	w19, 6e2f0 <stdout_putp+0x6c4c0>
    186c:	58414d5f 	ldr	xzr, 84214 <stdout_putp+0x823e4>
    1870:	30205f5f 	adr	xzr, 42459 <stdout_putp+0x40629>
    1874:	66666678 	.inst	0x66666678 ; undefined
    1878:	66666666 	.inst	0x66666666 ; undefined
    187c:	66666666 	.inst	0x66666666 ; undefined
    1880:	66666666 	.inst	0x66666666 ; undefined
    1884:	004c5566 	.inst	0x004c5566 ; undefined
    1888:	4c465f5f 	.inst	0x4c465f5f ; undefined
    188c:	58343654 	ldr	x20, 69f54 <stdout_putp+0x68124>
    1890:	58414d5f 	ldr	xzr, 84238 <stdout_putp+0x82408>
    1894:	31205f5f 	cmn	w26, #0x817
    1898:	3938312e 	strb	w14, [x9, #3596]
    189c:	34313337 	cbz	w23, 63f00 <stdout_putp+0x620d0>
    18a0:	35333539 	cbnz	w25, 67f44 <stdout_putp+0x66114>
    18a4:	31333237 	adds	w23, w17, #0xccc
    18a8:	30353637 	adr	x23, 6bf6d <stdout_putp+0x6a13d>
                    putchw(putp,putf,w,lz,bf);
    18ac:	35373538 	cbnz	w24, 6ff50 <stdout_putp+0x6e120>
    18b0:	36323339 	tbz	w25, #6, 5f14 <stdout_putp+0x40e4>
    18b4:	30383236 	adr	x22, 71ef9 <stdout_putp+0x700c9>
    18b8:	32303730 	orr	w16, w25, #0x3fff0000
    18bc:	39342b65 	strb	w5, [x27, #3338]
    18c0:	36463233 	tbz	w19, #8, ffffffffffffdf04 <stdout_putp+0xffffffffffffc0d4>
    18c4:	5f007834 	.inst	0x5f007834 ; undefined
    18c8:	544c465f 	.inst	0x544c465f ; undefined
                    break;
    18cc:	5f583233 	sqdmlal	s19, h17, v8.h[1]
                    putf(putp,(char)(va_arg(va, int)));
    18d0:	5f4e494d 	.inst	0x5f4e494d ; undefined
    18d4:	2e32205f 	usubl	v31.8h, v2.8b, v18.8b
    18d8:	30353232 	adr	x18, 6bf1d <stdout_putp+0x6a0ed>
    18dc:	35383337 	cbnz	w23, 71f40 <stdout_putp+0x70110>
    18e0:	37303538 	tbnz	w24, #6, 1f84 <stdout_putp+0x154>
    18e4:	33313032 	.inst	0x33313032 ; undefined
    18e8:	39303338 	strb	w24, [x25, #3084]
    18ec:	32333230 	orr	w16, w17, #0x3ffe000
    18f0:	33373137 	.inst	0x33373137 ; undefined
    18f4:	30343233 	adr	x19, 69f39 <stdout_putp+0x68109>
    18f8:	65363034 	.inst	0x65363034 ; undefined
    18fc:	3830332d 	ldsetb	w16, w13, [x25]
    1900:	78323346 	ldseth	w18, w6, [x26]
    1904:	555f5f00 	.inst	0x555f5f00 ; undefined
    1908:	50544e49 	adr	x9, aa2d2 <stdout_putp+0xa84a2>
    190c:	545f5254 	.inst	0x545f5254 ; undefined
    1910:	5f455059 	.inst	0x5f455059 ; undefined
    1914:	6f6c205f 	umlal2	v31.4s, v2.8h, v12.h[2]
    1918:	7520676e 	.inst	0x7520676e ; undefined
    191c:	6769736e 	.inst	0x6769736e ; undefined
    1920:	2064656e 	.inst	0x2064656e ; undefined
    1924:	00746e69 	.inst	0x00746e69 ; undefined
    1928:	4e495f5f 	.inst	0x4e495f5f ; undefined
    192c:	5f363154 	.inst	0x5f363154 ; undefined
    1930:	29632843 	ldp	w3, w10, [x2, #-232]
    1934:	5f006320 	.inst	0x5f006320 ; undefined
    1938:	4343475f 	.inst	0x4343475f ; undefined
    193c:	5641485f 	.inst	0x5641485f ; undefined
                    break;
    1940:	57445f45 	.inst	0x57445f45 ; undefined
                    putchw(putp,putf,w,0,va_arg(va, char*));
    1944:	32465241 	.inst	0x32465241 ; undefined
    1948:	4946435f 	.inst	0x4946435f ; undefined
    194c:	4d53415f 	.inst	0x4d53415f ; undefined
    1950:	5f003120 	.inst	0x5f003120 ; undefined
    1954:	5a49535f 	.inst	0x5a49535f ; undefined
    1958:	5f464f45 	.inst	0x5f464f45 ; undefined
    195c:	414f4c46 	.inst	0x414f4c46 ; undefined
    1960:	205f5f54 	.inst	0x205f5f54 ; undefined
    1964:	5f5f0034 	.inst	0x5f5f0034 ; undefined
    1968:	33434544 	.inst	0x33434544 ; undefined
    196c:	55535f32 	.inst	0x55535f32 ; undefined
    1970:	524f4e42 	.inst	0x524f4e42 ; undefined
    1974:	5f4c414d 	.inst	0x5f4c414d ; undefined
    1978:	5f4e494d 	.inst	0x5f4e494d ; undefined
    197c:	2e30205f 	usubl	v31.8h, v2.8b, v16.8b
    1980:	30303030 	adr	x16, 61f85 <stdout_putp+0x60155>
    1984:	2d453130 	ldp	s16, s12, [x9, #40]
    1988:	46443539 	.inst	0x46443539 ; undefined
    198c:	495f5f00 	.inst	0x495f5f00 ; undefined
    1990:	465f544e 	.inst	0x465f544e ; undefined
    1994:	33545341 	.inst	0x33545341 ; undefined
    1998:	414d5f32 	.inst	0x414d5f32 ; undefined
    199c:	205f5f58 	.inst	0x205f5f58 ; undefined
    19a0:	66377830 	.inst	0x66377830 ; undefined
    19a4:	66666666 	.inst	0x66666666 ; undefined
    19a8:	5f006666 	.inst	0x5f006666 ; undefined
    19ac:	544c465f 	.inst	0x544c465f ; undefined
    19b0:	5f583436 	srsra	d22, d1, #40
    19b4:	5f534148 	.inst	0x5f534148 ; undefined
    19b8:	45495551 	.inst	0x45495551 ; undefined
                    break;
    19bc:	414e5f54 	.inst	0x414e5f54 ; undefined
                    putf(putp,ch);
    19c0:	205f5f4e 	.inst	0x205f5f4e ; undefined
    19c4:	5f5f0031 	.inst	0x5f5f0031 ; undefined
    19c8:	5f544c46 	.inst	0x5f544c46 ; undefined
    19cc:	5f534148 	.inst	0x5f534148 ; undefined
                    break;
    19d0:	49464e49 	.inst	0x49464e49 ; undefined
    while ((ch=*(fmt++))) {
    19d4:	5954494e 	.inst	0x5954494e ; undefined
    19d8:	31205f5f 	cmn	w26, #0x817
    19dc:	465f5f00 	.inst	0x465f5f00 ; undefined
    19e0:	3631544c 	tbz	w12, #6, 4468 <stdout_putp+0x2638>
    19e4:	5341485f 	.inst	0x5341485f ; undefined
    19e8:	464e495f 	.inst	0x464e495f ; undefined
    19ec:	54494e49 	b.ls	943b4 <stdout_putp+0x92584>  // b.plast
    19f0:	205f5f59 	.inst	0x205f5f59 ; undefined
    abort:;
    19f4:	5f5f0031 	.inst	0x5f5f0031 ; undefined
                    goto abort;
    19f8:	43445453 	.inst	0x43445453 ; undefined
    }
    19fc:	31205f5f 	cmn	w26, #0x817
    1a00:	465f5f00 	.inst	0x465f5f00 ; undefined
    1a04:	4d5f544c 	.inst	0x4d5f544c ; undefined
    1a08:	5f5f4e49 	.inst	0x5f5f4e49 ; undefined
    {
    1a0c:	312e3120 	adds	w0, w9, #0xb8c
    1a10:	39343537 	strb	w23, [x9, #3341]
    1a14:	30353334 	adr	x20, 6c079 <stdout_putp+0x6a249>
    stdout_putf=putf;
    1a18:	32323238 	orr	w24, w17, #0x7ffc000
    1a1c:	30353738 	adr	x24, 6c101 <stdout_putp+0x6a2d1>
    1a20:	38363937 	.inst	0x38363937 ; undefined
    1a24:	35363337 	cbnz	w23, 6e088 <stdout_putp+0x6c258>
    stdout_putp=putp;
    1a28:	32323733 	orr	w19, w25, #0xfffc000
    1a2c:	35343232 	cbnz	w18, 6a070 <stdout_putp+0x68240>
    1a30:	2d653836 	ldp	s22, s14, [x1, #-216]
    1a34:	00463833 	.inst	0x00463833 ; undefined
    }
    1a38:	42445f5f 	.inst	0x42445f5f ; undefined
    1a3c:	414d5f4c 	.inst	0x414d5f4c ; undefined
    1a40:	58455f58 	ldr	x24, 8c628 <stdout_putp+0x8a7f8>
    {
    1a44:	205f5f50 	.inst	0x205f5f50 ; undefined
    1a48:	34323031 	cbz	w17, 6604c <stdout_putp+0x6421c>
    1a4c:	535f5f00 	.inst	0x535f5f00 ; undefined
    1a50:	4f455a49 	.inst	0x4f455a49 ; undefined
    1a54:	4f4c5f46 	.inst	0x4f4c5f46 ; undefined
    1a58:	5f5f474e 	.inst	0x5f5f474e ; undefined
    1a5c:	5f003820 	.inst	0x5f003820 ; undefined
    1a60:	4f54415f 	.inst	0x4f54415f ; undefined
    1a64:	5f43494d 	.inst	0x5f43494d ; undefined
    1a68:	534e4f43 	.inst	0x534e4f43 ; undefined
    va_start(va,fmt);
    1a6c:	20454d55 	.inst	0x20454d55 ; undefined
    1a70:	5f5f0031 	.inst	0x5f5f0031 ; undefined
    1a74:	5f544e49 	.inst	0x5f544e49 ; undefined
    1a78:	54534146 	b.vs	a82a0 <stdout_putp+0xa6470>
    1a7c:	575f3233 	.inst	0x575f3233 ; undefined
    1a80:	48544449 	ldxrh	w9, [x2]
    1a84:	33205f5f 	.inst	0x33205f5f ; undefined
    1a88:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    1a8c:	36544c46 	tbz	w6, #10, ffffffffffffa414 <stdout_putp+0xffffffffffff85e4>
    tfp_format(stdout_putp,stdout_putf,fmt,va);
    1a90:	4d5f5834 	.inst	0x4d5f5834 ; undefined
    1a94:	5f544e41 	.inst	0x5f544e41 ; undefined
    1a98:	5f474944 	.inst	0x5f474944 ; undefined
    1a9c:	3131205f 	cmn	w2, #0xc48
    1aa0:	5f5f0033 	.inst	0x5f5f0033 ; undefined
    1aa4:	544e4957 	.inst	0x544e4957 ; undefined
    1aa8:	5059545f 	adr	xzr, b4532 <stdout_putp+0xb2702>
    1aac:	205f5f45 	.inst	0x205f5f45 ; undefined
    1ab0:	69736e75 	ldpsw	x21, x27, [x19, #-104]
    1ab4:	64656e67 	.inst	0x64656e67 ; undefined
    1ab8:	746e6920 	.inst	0x746e6920 ; undefined
    1abc:	765f5f00 	.inst	0x765f5f00 ; undefined
    1ac0:	6f635f61 	.inst	0x6f635f61 ; undefined
    1ac4:	64287970 	.inst	0x64287970 ; undefined
    1ac8:	2029732c 	.inst	0x2029732c ; undefined
    1acc:	75625f5f 	.inst	0x75625f5f ; undefined
    1ad0:	69746c69 	ldpsw	x9, x27, [x3, #-96]
    1ad4:	61765f6e 	.inst	0x61765f6e ; undefined
    }
    1ad8:	706f635f 	adr	xzr, e0743 <stdout_putp+0xde913>
    1adc:	2c642879 	ldnp	s25, s10, [x3, #-224]
    1ae0:	5f002973 	.inst	0x5f002973 ; undefined
void delay(uint32 cycles){
    1ae4:	544e495f 	.inst	0x544e495f ; undefined
    1ae8:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    asm volatile("loop : subs %0, %0, #1\n\t"
    1aec:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    1af0:	37783020 	tbnz	w0, #15, 20f4 <stdout_putp+0x2c4>
    1af4:	00666666 	.inst	0x00666666 ; undefined
}
    1af8:	43535f5f 	.inst	0x43535f5f ; undefined
    1afc:	5f524148 	.inst	0x5f524148 ; undefined
    1b00:	54444957 	.inst	0x54444957 ; undefined
int get_core_id(){
    1b04:	205f5f48 	.inst	0x205f5f48 ; undefined
    asm volatile("mrs %0, mpidr_el1\n\t"
    1b08:	5f5f0038 	.inst	0x5f5f0038 ; undefined
    1b0c:	544e4955 	.inst	0x544e4955 ; undefined
    1b10:	435f3233 	.inst	0x435f3233 ; undefined
    return core_id;
    1b14:	20296328 	.inst	0x20296328 ; undefined
}
    1b18:	23232063 	.inst	0x23232063 ; undefined
    1b1c:	5f005520 	.inst	0x5f005520 ; undefined
int get_el(){
    1b20:	4d52415f 	.inst	0x4d52415f ; undefined
    asm volatile("mrs %0, CurrentEL\n\t"
    1b24:	5f50465f 	.inst	0x5f50465f ; undefined
    1b28:	54534146 	b.vs	a8350 <stdout_putp+0xa6520>
    1b2c:	535f5f00 	.inst	0x535f5f00 ; undefined
    return el;
    1b30:	4f455a49 	.inst	0x4f455a49 ; undefined
}
    1b34:	4f445f46 	.inst	0x4f445f46 ; undefined
    1b38:	454c4255 	.inst	0x454c4255 ; undefined
{
    1b3c:	38205f5f 	.inst	0x38205f5f ; undefined
    1b40:	475f5f00 	.inst	0x475f5f00 ; undefined
    1b44:	5f43554e 	shl	d14, d10, #3
    *(volatile uint32*) reg = data;
    1b48:	43544150 	.inst	0x43544150 ; undefined
    1b4c:	56454c48 	.inst	0x56454c48 ; undefined
    1b50:	5f5f4c45 	.inst	0x5f5f4c45 ; undefined
    1b54:	5f003020 	.inst	0x5f003020 ; undefined
}
    1b58:	4e49555f 	.inst	0x4e49555f ; undefined
    1b5c:	435f3854 	.inst	0x435f3854 ; undefined
    1b60:	20296328 	.inst	0x20296328 ; undefined
{
    1b64:	5f5f0063 	.inst	0x5f5f0063 ; undefined
    1b68:	5f4d5241 	.inst	0x5f4d5241 ; undefined
    return *(volatile uint32*) reg;
    1b6c:	48435241 	ldxrh	w1, [x18]
    1b70:	4153495f 	.inst	0x4153495f ; undefined
}
    1b74:	3436415f 	cbz	wzr, 6e39c <stdout_putp+0x6c56c>
    1b78:	5f003120 	.inst	0x5f003120 ; undefined
{
    1b7c:	544c465f 	.inst	0x544c465f ; undefined
    1b80:	445f3631 	.inst	0x445f3631 ; undefined
    asm("mov %0, x0" : "=r"(regs[0]));
    1b84:	4d494345 	.inst	0x4d494345 ; undefined
    1b88:	445f4c41 	.inst	0x445f4c41 ; undefined
    asm("mov %0, x1" : "=r"(regs[1]));
    1b8c:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    1b90:	5f003520 	.inst	0x5f003520 ; undefined
    asm("mov %0, x2" : "=r"(regs[2]));
    1b94:	4e49575f 	.inst	0x4e49575f ; undefined
    1b98:	494d5f54 	.inst	0x494d5f54 ; undefined
    asm("mov %0, x3" : "=r"(regs[3]));
    1b9c:	205f5f4e 	.inst	0x205f5f4e ; undefined
    1ba0:	5f005530 	.inst	0x5f005530 ; undefined
    asm("mov %0, x4" : "=r"(regs[4]));
    1ba4:	4454535f 	.inst	0x4454535f ; undefined
    1ba8:	54555f43 	b.cc	ac790 <stdout_putp+0xaa960>  // b.lo, b.ul, b.last
    asm("mov %0, x5" : "=r"(regs[5]));
    1bac:	36315f46 	tbz	w6, #6, 4794 <stdout_putp+0x2964>
    1bb0:	31205f5f 	cmn	w26, #0x817
    asm("mov %0, x6" : "=r"(regs[6]));
    1bb4:	4c5f5f00 	.inst	0x4c5f5f00 ; undefined
    1bb8:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    asm("mov %0, x7" : "=r"(regs[7]));
    1bbc:	5f534148 	.inst	0x5f534148 ; undefined
    1bc0:	49464e49 	.inst	0x49464e49 ; undefined
    asm("mov %0, x8" : "=r"(regs[8]));
    1bc4:	5954494e 	.inst	0x5954494e ; undefined
    1bc8:	31205f5f 	cmn	w26, #0x817
    asm("mov %0, x9" : "=r"(regs[9]));
    1bcc:	475f5f00 	.inst	0x475f5f00 ; undefined
    1bd0:	495f4343 	.inst	0x495f4343 ; undefined
    asm("mov %0, x10" : "=r"(regs[10]));
    1bd4:	355f4345 	cbnz	w5, c043c <stdout_putp+0xbe60c>
    1bd8:	435f3935 	.inst	0x435f3935 ; undefined
    asm("mov %0, x11" : "=r"(regs[11]));
    1bdc:	4c504d4f 	.inst	0x4c504d4f ; undefined
    1be0:	30205845 	adr	x5, 426e9 <stdout_putp+0x408b9>
    asm("mov %0, x12" : "=r"(regs[12]));
    1be4:	465f5f00 	.inst	0x465f5f00 ; undefined
    1be8:	3436544c 	cbz	w12, 6e670 <stdout_putp+0x6c840>
    asm("mov %0, x13" : "=r"(regs[13]));
    1bec:	414d5f58 	.inst	0x414d5f58 ; undefined
    1bf0:	30315f58 	adr	x24, 647d9 <stdout_putp+0x629a9>
    asm("mov %0, x14" : "=r"(regs[14]));
    1bf4:	5058455f 	adr	xzr, b249e <stdout_putp+0xb066e>
    1bf8:	34205f5f 	cbz	wzr, 427e0 <stdout_putp+0x409b0>
    asm("mov %0, x15" : "=r"(regs[15]));
    1bfc:	00323339 	.inst	0x00323339 ; NYI
    1c00:	49535f5f 	.inst	0x49535f5f ; undefined
    asm("mov %0, x16" : "=r"(regs[16]));
    1c04:	464f455a 	.inst	0x464f455a ; undefined
    1c08:	4843575f 	ldxrh	wzr, [x26]
    asm("mov %0, x17" : "=r"(regs[17]));
    1c0c:	545f5241 	b.ne	c0654 <stdout_putp+0xbe824>  // b.any
    1c10:	34205f5f 	cbz	wzr, 427f8 <stdout_putp+0x409c8>
    asm("mov %0, x18" : "=r"(regs[18]));
    1c14:	465f5f00 	.inst	0x465f5f00 ; undefined
    1c18:	3231544c 	orr	w12, w2, #0xffff801f
    asm("mov %0, x19" : "=r"(regs[19]));
    1c1c:	494d5f38 	.inst	0x494d5f38 ; undefined
    1c20:	30315f4e 	adr	x14, 64809 <stdout_putp+0x629d9>
    asm("mov %0, x20" : "=r"(regs[20]));
    1c24:	5058455f 	adr	xzr, b24ce <stdout_putp+0xb069e>
    1c28:	28205f5f 	stnp	wzr, w23, [x26, #-256]
    asm("mov %0, x21" : "=r"(regs[21]));
    1c2c:	3339342d 	.inst	0x3339342d ; undefined
    1c30:	5f002931 	.inst	0x5f002931 ; undefined
    asm("mov %0, x22" : "=r"(regs[22]));
    1c34:	4f4c465f 	.inst	0x4f4c465f ; undefined
    1c38:	575f5441 	.inst	0x575f5441 ; undefined
    asm("mov %0, x23" : "=r"(regs[23]));
    1c3c:	5f44524f 	.inst	0x5f44524f ; undefined
    1c40:	4544524f 	.inst	0x4544524f ; undefined
    asm("mov %0, x24" : "=r"(regs[24]));
    1c44:	205f5f52 	.inst	0x205f5f52 ; undefined
    1c48:	524f5f5f 	.inst	0x524f5f5f ; undefined
    asm("mov %0, x25" : "=r"(regs[25]));
    1c4c:	5f524544 	.inst	0x5f524544 ; undefined
    1c50:	5454494c 	b.gt	aa578 <stdout_putp+0xa8748>
    asm("mov %0, x26" : "=r"(regs[26]));
    1c54:	455f454c 	.inst	0x455f454c ; undefined
    1c58:	4149444e 	.inst	0x4149444e ; undefined
    asm("mov %0, x27" : "=r"(regs[27]));
    1c5c:	005f5f4e 	.inst	0x005f5f4e ; undefined
    1c60:	43475f5f 	.inst	0x43475f5f ; undefined
    asm("mov %0, x28" : "=r"(regs[28]));
    1c64:	41485f43 	.inst	0x41485f43 ; undefined
    1c68:	535f4556 	.inst	0x535f4556 ; undefined
    asm("mov %0, x29" : "=r"(regs[29]));
    1c6c:	5f434e59 	.inst	0x5f434e59 ; undefined
    1c70:	504d4f43 	adr	x3, 9c65a <stdout_putp+0x9a82a>
    asm("mov %0, x30" : "=r"(regs[30]));
    1c74:	5f455241 	.inst	0x5f455241 ; undefined
    1c78:	5f444e41 	.inst	0x5f444e41 ; undefined
    asm("mov %0, sp" : "=r"(regs[31]));
    1c7c:	50415753 	adr	x19, 84766 <stdout_putp+0x82936>
    1c80:	3120325f 	cmn	w18, #0x80c
    asm("mrs %0, esr_el1" : "=r"(regs[32]));
    1c84:	445f5f00 	.inst	0x445f5f00 ; undefined
    1c88:	32334345 	orr	w5, w26, #0x3fffe000
    asm("mrs %0, elr_el1" : "=r"(regs[33]));
    1c8c:	4e414d5f 	.inst	0x4e414d5f ; undefined
    1c90:	49445f54 	.inst	0x49445f54 ; undefined
    asm("mrs %0, far_el1" : "=r"(regs[34]));
    1c94:	205f5f47 	.inst	0x205f5f47 ; undefined
    1c98:	55410037 	.inst	0x55410037 ; undefined
    printf("Hit exception! Dumping regs...\n");
    1c9c:	554d5f58 	.inst	0x554d5f58 ; undefined
    1ca0:	52434d5f 	.inst	0x52434d5f ; undefined
    1ca4:	4745525f 	.inst	0x4745525f ; undefined
    for(i=0; i<35;){
    1ca8:	465f5f00 	.inst	0x465f5f00 ; undefined
    1cac:	3233544c 	orr	w12, w2, #0xffffe007
        printf("x%d: 0x%016x    ", i, regs[i]);
    1cb0:	4e45445f 	.inst	0x4e45445f ; undefined
    1cb4:	5f4d524f 	.inst	0x5f4d524f ; undefined
    1cb8:	5f4e494d 	.inst	0x5f4e494d ; undefined
    1cbc:	2e31205f 	usubl	v31.8h, v2.8b, v17.8b
    1cc0:	32313034 	orr	w20, w1, #0xfff8000
    1cc4:	36343839 	tbz	w25, #6, ffffffffffffa3c8 <stdout_putp+0xffffffffffff8598>
    1cc8:	34323334 	cbz	w20, 6632c <stdout_putp+0x644fc>
    1ccc:	30373138 	adr	x24, 702f1 <stdout_putp+0x6e4c1>
    1cd0:	32393037 	orr	w23, w1, #0xfff80
        i++;
    1cd4:	39323733 	strb	w19, [x25, #3213]
    1cd8:	32333835 	orr	w21, w1, #0xfffe000
    1cdc:	31393938 	adds	w24, w9, #0xe4e
        if(i%4 == 0) printf("\n");
    1ce0:	65333136 	.inst	0x65333136 ; undefined
    1ce4:	4635342d 	.inst	0x4635342d ; undefined
    1ce8:	5f003233 	.inst	0x5f003233 ; undefined
    1cec:	4749535f 	.inst	0x4749535f ; undefined
    1cf0:	4f54415f 	.inst	0x4f54415f ; undefined
    1cf4:	5f43494d 	.inst	0x5f43494d ; undefined
    1cf8:	5f4e494d 	.inst	0x5f4e494d ; undefined
    for(i=0; i<35;){
    1cfc:	2d28205f 	stp	s31, s8, [x2, #-192]
    1d00:	49535f5f 	.inst	0x49535f5f ; undefined
    1d04:	54415f47 	b.vc	848ec <stdout_putp+0x82abc>
    return;
    1d08:	43494d4f 	.inst	0x43494d4f ; undefined
}
    1d0c:	58414d5f 	ldr	xzr, 846b4 <stdout_putp+0x82884>
    1d10:	2d205f5f 	stp	s31, s23, [x26, #-256]
    1d14:	00293120 	.inst	0x00293120 ; NYI
    1d18:	4e495f5f 	.inst	0x4e495f5f ; undefined
    1d1c:	5f323354 	.inst	0x5f323354 ; undefined
    1d20:	5f58414d 	.inst	0x5f58414d ; undefined
    1d24:	7830205f 	steorh	w16, [x2]
    1d28:	66666637 	.inst	0x66666637 ; undefined
    1d2c:	66666666 	.inst	0x66666666 ; undefined
    1d30:	415f5f00 	.inst	0x415f5f00 ; undefined
    1d34:	494d4f54 	.inst	0x494d4f54 ; undefined
    1d38:	43415f43 	.inst	0x43415f43 ; undefined
    1d3c:	52495551 	.inst	0x52495551 ; undefined
    1d40:	00322045 	.inst	0x00322045 ; NYI
    1d44:	49555f5f 	.inst	0x49555f5f ; undefined
    1d48:	3631544e 	tbz	w14, #6, 47d0 <stdout_putp+0x29a0>
    1d4c:	6328435f 	.inst	0x6328435f ; undefined
    1d50:	00632029 	.inst	0x00632029 ; undefined
    1d54:	4e495f5f 	.inst	0x4e495f5f ; undefined
    1d58:	5f343654 	.inst	0x5f343654 ; undefined
    1d5c:	5f58414d 	.inst	0x5f58414d ; undefined
    1d60:	7830205f 	steorh	w16, [x2]
    1d64:	66666637 	.inst	0x66666637 ; undefined
    1d68:	66666666 	.inst	0x66666666 ; undefined
    1d6c:	66666666 	.inst	0x66666666 ; undefined
    1d70:	66666666 	.inst	0x66666666 ; undefined
    1d74:	5f5f004c 	.inst	0x5f5f004c ; undefined
    1d78:	36544c46 	tbz	w6, #10, ffffffffffffa700 <stdout_putp+0xffffffffffff88d0>
    1d7c:	445f5834 	.inst	0x445f5834 ; undefined
    1d80:	4d494345 	.inst	0x4d494345 ; undefined
    1d84:	445f4c41 	.inst	0x445f4c41 ; undefined
    1d88:	5f5f4749 	.inst	0x5f5f4749 ; undefined
    1d8c:	00363320 	.inst	0x00363320 ; NYI
    1d90:	5f585541 	shl	d1, d10, #24
    1d94:	495f554d 	.inst	0x495f554d ; undefined
    1d98:	525f5245 	.inst	0x525f5245 ; undefined
    1d9c:	5f004745 	.inst	0x5f004745 ; undefined
    1da0:	4e49555f 	.inst	0x4e49555f ; undefined
    1da4:	58414d54 	ldr	x20, 8474c <stdout_putp+0x8291c>
    1da8:	5059545f 	adr	xzr, b4832 <stdout_putp+0xb2a02>
    1dac:	205f5f45 	.inst	0x205f5f45 ; undefined
    1db0:	676e6f6c 	.inst	0x676e6f6c ; undefined
    1db4:	736e7520 	.inst	0x736e7520 ; undefined
    1db8:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
    1dbc:	6e692064 	usubl2	v4.4s, v3.8h, v9.8h
    1dc0:	5f5f0074 	.inst	0x5f5f0074 ; undefined
    1dc4:	31544c46 	adds	w6, w2, #0x513, lsl #12
    1dc8:	41485f36 	.inst	0x41485f36 ; undefined
    1dcc:	45445f53 	.inst	0x45445f53 ; undefined
    1dd0:	4d524f4e 	.inst	0x4d524f4e ; undefined
    1dd4:	31205f5f 	cmn	w26, #0x817
    1dd8:	67657200 	.inst	0x67657200 ; undefined
    1ddc:	5f003233 	.inst	0x5f003233 ; undefined
    1de0:	4345445f 	.inst	0x4345445f ; undefined
    1de4:	5f383231 	.inst	0x5f383231 ; undefined
    1de8:	5f58414d 	.inst	0x5f58414d ; undefined
    1dec:	5f505845 	.inst	0x5f505845 ; undefined
    1df0:	3136205f 	cmn	w2, #0xd88
    1df4:	5f003534 	.inst	0x5f003534 ; undefined
    1df8:	544c465f 	.inst	0x544c465f ; undefined
    1dfc:	5350455f 	.inst	0x5350455f ; undefined
    1e00:	4e4f4c49 	.inst	0x4e4f4c49 ; undefined
    1e04:	31205f5f 	cmn	w26, #0x817
    1e08:	3239312e 	orr	w14, w9, #0xfff80
    1e0c:	38323930 	.inst	0x38323930 ; undefined
    1e10:	30353539 	adr	x25, 6c4b5 <stdout_putp+0x6a685>
    1e14:	32313837 	orr	w23, w1, #0x3fff8000
    1e18:	30303035 	adr	x21, 6241d <stdout_putp+0x605ed>
    1e1c:	30303030 	adr	x16, 62421 <stdout_putp+0x605f1>
    1e20:	30303030 	adr	x16, 62425 <stdout_putp+0x605f5>
    1e24:	30303030 	adr	x16, 62429 <stdout_putp+0x605f9>
    1e28:	30303030 	adr	x16, 6242d <stdout_putp+0x605fd>
    1e2c:	46372d65 	.inst	0x46372d65 ; undefined
    1e30:	535f5f00 	.inst	0x535f5f00 ; undefined
    1e34:	415f4749 	.inst	0x415f4749 ; undefined
    1e38:	494d4f54 	.inst	0x494d4f54 ; undefined
    1e3c:	49575f43 	.inst	0x49575f43 ; undefined
    1e40:	5f485444 	shl	d4, d2, #8
    1e44:	3233205f 	orr	wsp, w2, #0x3fe000
    1e48:	535f5f00 	.inst	0x535f5f00 ; undefined
    1e4c:	5f545248 	.inst	0x5f545248 ; undefined
    1e50:	5f58414d 	.inst	0x5f58414d ; undefined
    1e54:	7830205f 	steorh	w16, [x2]
    1e58:	66666637 	.inst	0x66666637 ; undefined
    1e5c:	475f5f00 	.inst	0x475f5f00 ; undefined
    1e60:	415f4343 	.inst	0x415f4343 ; undefined
    1e64:	494d4f54 	.inst	0x494d4f54 ; undefined
    1e68:	43575f43 	.inst	0x43575f43 ; undefined
    1e6c:	5f524148 	.inst	0x5f524148 ; undefined
    1e70:	4f4c5f54 	.inst	0x4f4c5f54 ; undefined
    1e74:	465f4b43 	.inst	0x465f4b43 ; undefined
    1e78:	20454552 	.inst	0x20454552 ; undefined
    1e7c:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    1e80:	4544524f 	.inst	0x4544524f ; undefined
    1e84:	44505f52 	.inst	0x44505f52 ; undefined
    1e88:	4e455f50 	.inst	0x4e455f50 ; undefined
    1e8c:	4e414944 	.inst	0x4e414944 ; undefined
    1e90:	33205f5f 	.inst	0x33205f5f ; undefined
    1e94:	00323134 	.inst	0x00323134 ; NYI
    1e98:	4c495f5f 	.inst	0x4c495f5f ; undefined
    1e9c:	5f323350 	.inst	0x5f323350 ; undefined
    1ea0:	5f5f005f 	.inst	0x5f5f005f ; undefined
    1ea4:	5f544c46 	.inst	0x5f544c46 ; undefined
    1ea8:	49434544 	.inst	0x49434544 ; undefined
    1eac:	5f4c414d 	.inst	0x5f4c414d ; undefined
    1eb0:	5f474944 	.inst	0x5f474944 ; undefined
    1eb4:	0039205f 	.inst	0x0039205f ; NYI
    1eb8:	4c465f5f 	.inst	0x4c465f5f ; undefined
    1ebc:	5f343654 	.inst	0x5f343654 ; undefined
    1ec0:	5f58414d 	.inst	0x5f58414d ; undefined
    1ec4:	455f3031 	.inst	0x455f3031 ; undefined
    1ec8:	5f5f5058 	.inst	0x5f5f5058 ; undefined
    1ecc:	38303320 	ldsetb	w16, w0, [x25]
    1ed0:	4c5f5f00 	.inst	0x4c5f5f00 ; undefined
    1ed4:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    1ed8:	5f4e494d 	.inst	0x5f4e494d ; undefined
    1edc:	5f505845 	.inst	0x5f505845 ; undefined
    1ee0:	2d28205f 	stp	s31, s8, [x2, #-192]
    1ee4:	38333631 	.inst	0x38333631 ; undefined
    1ee8:	5f002931 	.inst	0x5f002931 ; undefined
    1eec:	4e49575f 	.inst	0x4e49575f ; undefined
    1ef0:	49575f54 	.inst	0x49575f54 ; undefined
    1ef4:	5f485444 	shl	d4, d2, #8
    1ef8:	3233205f 	orr	wsp, w2, #0x3fe000
    1efc:	465f5f00 	.inst	0x465f5f00 ; undefined
    1f00:	3436544c 	cbz	w12, 6e988 <stdout_putp+0x6cb58>
    1f04:	494d5f58 	.inst	0x494d5f58 ; undefined
    1f08:	205f5f4e 	.inst	0x205f5f4e ; undefined
    1f0c:	36332e33 	tbz	w19, #6, 84d0 <stdout_putp+0x66a0>
    1f10:	33303132 	.inst	0x33303132 ; undefined
    1f14:	31333431 	adds	w17, w1, #0xccd
    1f18:	39303231 	strb	w17, [x17, #3084]
    1f1c:	36303533 	tbz	w19, #6, 25c0 <stdout_putp+0x790>
    1f20:	36323632 	tbz	w18, #6, 65e4 <stdout_putp+0x47b4>
    1f24:	31383737 	adds	w23, w25, #0xe0d
    1f28:	31323337 	adds	w23, w25, #0xc8c
    1f2c:	36323537 	tbz	w23, #6, 65d0 <stdout_putp+0x47a0>
    1f30:	342d6530 	cbz	w16, 5cbd4 <stdout_putp+0x5ada4>
    1f34:	46323339 	.inst	0x46323339 ; undefined
    1f38:	00783436 	.inst	0x00783436 ; undefined
    1f3c:	49535f5f 	.inst	0x49535f5f ; undefined
    1f40:	464f455a 	.inst	0x464f455a ; undefined
    1f44:	544e495f 	.inst	0x544e495f ; undefined
    1f48:	34205f5f 	cbz	wzr, 42b30 <stdout_putp+0x40d00>
    1f4c:	465f5f00 	.inst	0x465f5f00 ; undefined
    1f50:	3233544c 	orr	w12, w2, #0xffffe007
    1f54:	5350455f 	.inst	0x5350455f ; undefined
    1f58:	4e4f4c49 	.inst	0x4e4f4c49 ; undefined
    1f5c:	31205f5f 	cmn	w26, #0x817
    1f60:	3239312e 	orr	w14, w9, #0xfff80
    1f64:	38323930 	.inst	0x38323930 ; undefined
    1f68:	30353539 	adr	x25, 6c60d <stdout_putp+0x6a7dd>
    1f6c:	32313837 	orr	w23, w1, #0x3fff8000
    1f70:	30303035 	adr	x21, 62575 <stdout_putp+0x60745>
    1f74:	30303030 	adr	x16, 62579 <stdout_putp+0x60749>
    1f78:	30303030 	adr	x16, 6257d <stdout_putp+0x6074d>
    1f7c:	30303030 	adr	x16, 62581 <stdout_putp+0x60751>
    1f80:	30303030 	adr	x16, 62585 <stdout_putp+0x60755>
    1f84:	46372d65 	.inst	0x46372d65 ; undefined
    1f88:	5f003233 	.inst	0x5f003233 ; undefined
    1f8c:	4e4f4c5f 	.inst	0x4e4f4c5f ; undefined
    1f90:	414d5f47 	.inst	0x414d5f47 ; undefined
    1f94:	205f5f58 	.inst	0x205f5f58 ; undefined
    1f98:	66377830 	.inst	0x66377830 ; undefined
    1f9c:	66666666 	.inst	0x66666666 ; undefined
    1fa0:	66666666 	.inst	0x66666666 ; undefined
    1fa4:	66666666 	.inst	0x66666666 ; undefined
    1fa8:	004c6666 	.inst	0x004c6666 ; undefined
    1fac:	4c465f5f 	.inst	0x4c465f5f ; undefined
    1fb0:	38323154 	ldsetb	w18, w20, [x10]
    1fb4:	5341485f 	.inst	0x5341485f ; undefined
    1fb8:	4955515f 	.inst	0x4955515f ; undefined
    1fbc:	4e5f5445 	.inst	0x4e5f5445 ; undefined
    1fc0:	5f5f4e41 	.inst	0x5f5f4e41 ; undefined
    1fc4:	5f003120 	.inst	0x5f003120 ; undefined
    1fc8:	4345445f 	.inst	0x4345445f ; undefined
    1fcc:	4d5f3436 	.inst	0x4d5f3436 ; undefined
    1fd0:	455f5841 	.inst	0x455f5841 ; undefined
    1fd4:	5f5f5058 	.inst	0x5f5f5058 ; undefined
    1fd8:	35383320 	cbnz	w0, 7263c <stdout_putp+0x7080c>
    1fdc:	465f5f00 	.inst	0x465f5f00 ; undefined
    1fe0:	3233544c 	orr	w12, w2, #0xffffe007
    1fe4:	494d5f58 	.inst	0x494d5f58 ; undefined
    1fe8:	30315f4e 	adr	x14, 64bd1 <stdout_putp+0x62da1>
    1fec:	5058455f 	adr	xzr, b2896 <stdout_putp+0xb0a66>
    1ff0:	28205f5f 	stnp	wzr, w23, [x26, #-256]
    1ff4:	3730332d 	tbnz	w13, #6, 2658 <stdout_putp+0x828>
    1ff8:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    1ffc:	544e4955 	.inst	0x544e4955 ; undefined
    2000:	5341465f 	.inst	0x5341465f ; undefined
    2004:	5f323354 	.inst	0x5f323354 ; undefined
    2008:	45505954 	.inst	0x45505954 ; undefined
    200c:	75205f5f 	.inst	0x75205f5f ; undefined
    2010:	6769736e 	.inst	0x6769736e ; undefined
    2014:	2064656e 	.inst	0x2064656e ; undefined
    2018:	00746e69 	.inst	0x00746e69 ; undefined
    201c:	49555f5f 	.inst	0x49555f5f ; undefined
    2020:	414d544e 	.inst	0x414d544e ; undefined
    2024:	28435f58 	ldnp	w24, w23, [x26, #24]
    2028:	63202963 	.inst	0x63202963 ; undefined
    202c:	20232320 	.inst	0x20232320 ; undefined
    2030:	5f004c55 	.inst	0x5f004c55 ; undefined
    2034:	4148435f 	.inst	0x4148435f ; undefined
    2038:	5f323352 	.inst	0x5f323352 ; undefined
    203c:	45505954 	.inst	0x45505954 ; undefined
    2040:	75205f5f 	.inst	0x75205f5f ; undefined
    2044:	6769736e 	.inst	0x6769736e ; undefined
    2048:	2064656e 	.inst	0x2064656e ; undefined
    204c:	00746e69 	.inst	0x00746e69 ; undefined
    2050:	4c465f5f 	.inst	0x4c465f5f ; undefined
    2054:	58343654 	ldr	x20, 6a71c <stdout_putp+0x688ec>
    2058:	5341485f 	.inst	0x5341485f ; undefined
    205c:	464e495f 	.inst	0x464e495f ; undefined
    2060:	54494e49 	b.ls	94a28 <stdout_putp+0x92bf8>  // b.plast
    2064:	205f5f59 	.inst	0x205f5f59 ; undefined
    2068:	61760031 	.inst	0x61760031 ; undefined
    206c:	6772615f 	.inst	0x6772615f ; undefined
    2070:	6c2c7628 	stnp	d8, d29, [x17, #-320]
    2074:	5f5f2029 	.inst	0x5f5f2029 ; undefined
    2078:	6c697562 	ldnp	d2, d29, [x11, #-368]
    207c:	5f6e6974 	.inst	0x5f6e6974 ; undefined
    2080:	615f6176 	.inst	0x615f6176 ; undefined
    2084:	76286772 	.inst	0x76286772 ; undefined
    2088:	00296c2c 	.inst	0x00296c2c ; NYI
    208c:	4c465f5f 	.inst	0x4c465f5f ; undefined
    2090:	56455f54 	.inst	0x56455f54 ; undefined
    2094:	4d5f4c41 	.inst	0x4d5f4c41 ; undefined
    2098:	4f485445 	shl	v5.2d, v2.2d, #8
    209c:	005f5f44 	.inst	0x005f5f44 ; undefined
    20a0:	45445f5f 	.inst	0x45445f5f ; undefined
    20a4:	38323143 	ldsetb	w18, w3, [x10]
    20a8:	4e494d5f 	.inst	0x4e494d5f ; undefined
    20ac:	31205f5f 	cmn	w26, #0x817
    20b0:	31362d45 	adds	w5, w10, #0xd8b
    20b4:	4c443334 	.inst	0x4c443334 ; undefined
    20b8:	465f5f00 	.inst	0x465f5f00 ; undefined
    20bc:	3233544c 	orr	w12, w2, #0xffffe007
    20c0:	494d5f58 	.inst	0x494d5f58 ; undefined
    20c4:	58455f4e 	ldr	x14, 8ccac <stdout_putp+0x8ae7c>
    20c8:	205f5f50 	.inst	0x205f5f50 ; undefined
    20cc:	30312d28 	adr	x8, 64671 <stdout_putp+0x62841>
    20d0:	00293132 	.inst	0x00293132 ; NYI
    20d4:	5f585541 	shl	d1, d10, #24
    20d8:	435f554d 	.inst	0x435f554d ; undefined
    20dc:	5f4c544e 	shl	d14, d2, #12
    20e0:	00474552 	.inst	0x00474552 ; undefined
    20e4:	4e495f5f 	.inst	0x4e495f5f ; undefined
    20e8:	52545054 	.inst	0x52545054 ; undefined
    20ec:	4449575f 	.inst	0x4449575f ; undefined
    20f0:	5f5f4854 	.inst	0x5f5f4854 ; undefined
    20f4:	00343620 	.inst	0x00343620 ; NYI
    20f8:	4e495f5f 	.inst	0x4e495f5f ; undefined
    20fc:	5f323354 	.inst	0x5f323354 ; undefined
    2100:	29632843 	ldp	w3, w10, [x2, #-232]
    2104:	5f006320 	.inst	0x5f006320 ; undefined
    2108:	42444c5f 	.inst	0x42444c5f ; undefined
    210c:	41485f4c 	.inst	0x41485f4c ; undefined
    2110:	55515f53 	.inst	0x55515f53 ; undefined
    2114:	5f544549 	.inst	0x5f544549 ; undefined
    2118:	5f4e414e 	.inst	0x5f4e414e ; undefined
    211c:	0031205f 	.inst	0x0031205f ; NYI
    2120:	4e495f5f 	.inst	0x4e495f5f ; undefined
    2124:	545f3854 	.inst	0x545f3854 ; undefined
    2128:	5f455059 	.inst	0x5f455059 ; undefined
    212c:	6973205f 	ldpsw	xzr, x8, [x2, #-104]
    2130:	64656e67 	.inst	0x64656e67 ; undefined
    2134:	61686320 	.inst	0x61686320 ; undefined
    2138:	5f5f0072 	.inst	0x5f5f0072 ; undefined
    213c:	544e4957 	.inst	0x544e4957 ; undefined
    2140:	58414d5f 	ldr	xzr, 84ae8 <stdout_putp+0x82cb8>
    2144:	30205f5f 	adr	xzr, 42d2d <stdout_putp+0x40efd>
    2148:	66666678 	.inst	0x66666678 ; undefined
    214c:	66666666 	.inst	0x66666666 ; undefined
    2150:	5f005566 	.inst	0x5f005566 ; undefined
    2154:	5241415f 	.inst	0x5241415f ; undefined
    2158:	34364843 	cbz	w3, 6ea60 <stdout_putp+0x6cc30>
    215c:	4f4d435f 	.inst	0x4f4d435f ; undefined
    2160:	5f4c4544 	.inst	0x5f4c4544 ; undefined
    2164:	4c414d53 	.inst	0x4c414d53 ; undefined
    2168:	005f5f4c 	.inst	0x005f5f4c ; undefined
    216c:	49555f5f 	.inst	0x49555f5f ; undefined
    2170:	3233544e 	orr	w14, w2, #0xffffe007
    2174:	5059545f 	adr	xzr, b4bfe <stdout_putp+0xb2dce>
    2178:	205f5f45 	.inst	0x205f5f45 ; undefined
    217c:	69736e75 	ldpsw	x21, x27, [x19, #-104]
    2180:	64656e67 	.inst	0x64656e67 ; undefined
    2184:	746e6920 	.inst	0x746e6920 ; undefined
    2188:	554e4700 	.inst	0x554e4700 ; undefined
    218c:	37314320 	tbnz	w0, #6, 49f0 <stdout_putp+0x2bc0>
    2190:	332e3820 	.inst	0x332e3820 ; undefined
    2194:	2d20302e 	stp	s14, s12, [x1, #-256]
    2198:	7570636d 	.inst	0x7570636d ; undefined
    219c:	726f633d 	.inst	0x726f633d ; undefined
    21a0:	2d786574 	ldp	s20, s25, [x11, #-64]
    21a4:	20333561 	.inst	0x20333561 ; undefined
    21a8:	65676d2d 	fnmls	z13.h, p3/m, z9.h, z7.h
    21ac:	6172656e 	.inst	0x6172656e ; undefined
    21b0:	65722d6c 	fmls	z12.h, p3/m, z11.h, z18.h
    21b4:	6f2d7367 	.inst	0x6f2d7367 ; undefined
    21b8:	20796c6e 	.inst	0x20796c6e ; undefined
    21bc:	696c6d2d 	ldpsw	x13, x27, [x9, #-160]
    21c0:	656c7474 	fnmls	z20.h, p5/m, z3.h, z12.h
    21c4:	646e652d 	.inst	0x646e652d ; undefined
    21c8:	206e6169 	.inst	0x206e6169 ; undefined
    21cc:	62616d2d 	.inst	0x62616d2d ; undefined
    21d0:	706c3d69 	adr	x9, da97f <stdout_putp+0xd8b4f>
    21d4:	2d203436 	stp	s22, s13, [x1, #-256]
    21d8:	2d203367 	stp	s7, s12, [x27, #-256]
    21dc:	2d203367 	stp	s7, s12, [x27, #-256]
    21e0:	43495066 	.inst	0x43495066 ; undefined
    21e4:	66662d20 	.inst	0x66662d20 ; undefined
    21e8:	73656572 	.inst	0x73656572 ; undefined
    21ec:	646e6174 	.inst	0x646e6174 ; undefined
    21f0:	20676e69 	.inst	0x20676e69 ; undefined
    21f4:	7566662d 	.inst	0x7566662d ; undefined
    21f8:	6974636e 	ldpsw	x14, x24, [x27, #-96]
    21fc:	732d6e6f 	.inst	0x732d6e6f ; undefined
    2200:	69746365 	ldpsw	x5, x24, [x27, #-96]
    2204:	20736e6f 	.inst	0x20736e6f ; undefined
    2208:	6164662d 	.inst	0x6164662d ; undefined
    220c:	732d6174 	.inst	0x732d6174 ; undefined
    2210:	69746365 	ldpsw	x5, x24, [x27, #-96]
    2214:	00736e6f 	.inst	0x00736e6f ; undefined
    2218:	45445f5f 	.inst	0x45445f5f ; undefined
    221c:	5f323343 	.inst	0x5f323343 ; undefined
    2220:	5f4e494d 	.inst	0x5f4e494d ; undefined
    2224:	4531205f 	.inst	0x4531205f ; undefined
    2228:	4435392d 	.inst	0x4435392d ; undefined
    222c:	5f5f0046 	.inst	0x5f5f0046 ; undefined
    2230:	544e4955 	.inst	0x544e4955 ; undefined
    2234:	5341465f 	.inst	0x5341465f ; undefined
    2238:	5f323354 	.inst	0x5f323354 ; undefined
    223c:	5f58414d 	.inst	0x5f58414d ; undefined
    2240:	7830205f 	steorh	w16, [x2]
    2244:	66666666 	.inst	0x66666666 ; undefined
    2248:	66666666 	.inst	0x66666666 ; undefined
    224c:	5f5f0055 	.inst	0x5f5f0055 ; undefined
    2250:	5f4d5241 	.inst	0x5f4d5241 ; undefined
    2254:	54414546 	b.vs	84afc <stdout_putp+0x82ccc>
    2258:	5f455255 	.inst	0x5f455255 ; undefined
    225c:	35414853 	cbnz	w19, 84b64 <stdout_putp+0x82d34>
    2260:	41003231 	.inst	0x41003231 ; undefined
    2264:	4d5f5855 	.inst	0x4d5f5855 ; undefined
    2268:	534c5f55 	.inst	0x534c5f55 ; undefined
    226c:	45525f52 	.inst	0x45525f52 ; undefined
    2270:	5f5f0047 	.inst	0x5f5f0047 ; undefined
    2274:	31544c46 	adds	w6, w2, #0x513, lsl #12
    2278:	455f3832 	.inst	0x455f3832 ; undefined
    227c:	4c495350 	.inst	0x4c495350 ; undefined
    2280:	5f5f4e4f 	.inst	0x5f5f4e4f ; undefined
    2284:	392e3120 	strb	w0, [x9, #2956]
    2288:	32393532 	orr	w18, w9, #0x1fff80
    228c:	34343939 	cbz	w25, 6a9b0 <stdout_putp+0x68b80>
    2290:	32373833 	orr	w19, w1, #0xfffe00
    2294:	35383533 	cbnz	w19, 72938 <stdout_putp+0x70b08>
    2298:	35353033 	cbnz	w19, 6c89c <stdout_putp+0x6aa6c>
    229c:	39373739 	strb	w25, [x25, #3533]
    22a0:	38353234 	ldsetb	w21, w20, [x17]
    22a4:	37323934 	tbnz	w20, #6, 69c8 <stdout_putp+0x4b98>
    22a8:	2d653233 	ldp	s19, s12, [x17, #-216]
    22ac:	31463433 	adds	w19, w1, #0x18d, lsl #12
    22b0:	5f003832 	.inst	0x5f003832 ; undefined
    22b4:	4843575f 	ldxrh	wzr, [x26]
    22b8:	4d5f5241 	.inst	0x4d5f5241 ; undefined
    22bc:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    22c0:	66783020 	.inst	0x66783020 ; undefined
    22c4:	66666666 	.inst	0x66666666 ; undefined
    22c8:	55666666 	.inst	0x55666666 ; undefined
    22cc:	535f5f00 	.inst	0x535f5f00 ; undefined
    22d0:	4f455a49 	.inst	0x4f455a49 ; undefined
    22d4:	4f4c5f46 	.inst	0x4f4c5f46 ; undefined
    22d8:	4c5f474e 	.inst	0x4c5f474e ; undefined
    22dc:	5f474e4f 	.inst	0x5f474e4f ; undefined
    22e0:	0038205f 	.inst	0x0038205f ; NYI
    22e4:	4c465f5f 	.inst	0x4c465f5f ; undefined
    22e8:	5f363154 	.inst	0x5f363154 ; undefined
    22ec:	49535045 	.inst	0x49535045 ; undefined
    22f0:	5f4e4f4c 	.inst	0x5f4e4f4c ; undefined
    22f4:	2e39205f 	usubl	v31.8h, v2.8b, v25.8b
    22f8:	36353637 	tbz	w23, #6, ffffffffffffc9bc <stdout_putp+0xffffffffffffab8c>
    22fc:	30303532 	adr	x18, 629a1 <stdout_putp+0x60b71>
    2300:	30303030 	adr	x16, 62905 <stdout_putp+0x60ad5>
    2304:	30303030 	adr	x16, 62909 <stdout_putp+0x60ad9>
    2308:	30303030 	adr	x16, 6290d <stdout_putp+0x60add>
    230c:	30303030 	adr	x16, 62911 <stdout_putp+0x60ae1>
    2310:	30303030 	adr	x16, 62915 <stdout_putp+0x60ae5>
    2314:	30303030 	adr	x16, 62919 <stdout_putp+0x60ae9>
    2318:	65303030 	.inst	0x65303030 ; undefined
    231c:	3146342d 	adds	w13, w1, #0x18d, lsl #12
    2320:	5f5f0036 	.inst	0x5f5f0036 ; undefined
    2324:	544e4955 	.inst	0x544e4955 ; undefined
    2328:	59545f38 	.inst	0x59545f38 ; undefined
    232c:	5f5f4550 	.inst	0x5f5f4550 ; undefined
    2330:	736e7520 	.inst	0x736e7520 ; undefined
    2334:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
    2338:	68632064 	.inst	0x68632064 ; undefined
    233c:	5f007261 	.inst	0x5f007261 ; undefined
    2340:	5248535f 	.inst	0x5248535f ; undefined
    2344:	49575f54 	.inst	0x49575f54 ; undefined
    2348:	5f485444 	shl	d4, d2, #8
    234c:	3631205f 	tbz	wzr, #6, 4754 <stdout_putp+0x2924>
    2350:	565f5f00 	.inst	0x565f5f00 ; undefined
    2354:	49535245 	.inst	0x49535245 ; undefined
    2358:	5f5f4e4f 	.inst	0x5f5f4e4f ; undefined
    235c:	2e382220 	usubl	v0.8h, v17.8b, v24.8b
    2360:	22302e33 	.inst	0x22302e33 ; undefined
    2364:	495f5f00 	.inst	0x495f5f00 ; undefined
    2368:	4c5f544e 	.inst	0x4c5f544e ; undefined
    236c:	54534145 	b.pl	a8b94 <stdout_putp+0xa6d64>  // b.nfrst
    2370:	575f3436 	.inst	0x575f3436 ; undefined
    2374:	48544449 	ldxrh	w9, [x2]
    2378:	36205f5f 	tbz	wzr, #4, 2f60 <stdout_putp+0x1130>
    237c:	415f0034 	.inst	0x415f0034 ; undefined
    2380:	5f49534e 	.inst	0x5f49534e ; undefined
    2384:	41445453 	.inst	0x41445453 ; undefined
    2388:	485f4752 	ldxrh	w18, [x26]
    238c:	5f00205f 	.inst	0x5f00205f ; undefined
    2390:	5a49535f 	.inst	0x5a49535f ; undefined
    2394:	5f464f45 	.inst	0x5f464f45 ; undefined
    2398:	4e494f50 	.inst	0x4e494f50 ; undefined
    239c:	5f524554 	.inst	0x5f524554 ; undefined
    23a0:	0038205f 	.inst	0x0038205f ; NYI
    23a4:	4c465f5f 	.inst	0x4c465f5f ; undefined
    23a8:	5f343654 	.inst	0x5f343654 ; undefined
    23ac:	49535045 	.inst	0x49535045 ; undefined
    23b0:	5f4e4f4c 	.inst	0x5f4e4f4c ; undefined
    23b4:	2e32205f 	usubl	v31.8h, v2.8b, v18.8b
    23b8:	34303232 	cbz	w18, 629fc <stdout_putp+0x60bcc>
    23bc:	34303634 	cbz	w20, 62a80 <stdout_putp+0x60c50>
    23c0:	30353239 	adr	x25, 6ca05 <stdout_putp+0x6abd5>
    23c4:	30333133 	adr	x19, 689e9 <stdout_putp+0x66bb9>
    23c8:	34383038 	cbz	w24, 729cc <stdout_putp+0x70b9c>
    23cc:	33363237 	.inst	0x33363237 ; undefined
    23d0:	31363333 	adds	w19, w25, #0xd8c
    23d4:	34363138 	cbz	w24, 6e9f8 <stdout_putp+0x6cbc8>
    23d8:	65323630 	.inst	0x65323630 ; undefined
    23dc:	4636312d 	.inst	0x4636312d ; undefined
    23e0:	5f003436 	.inst	0x5f003436 ; undefined
    23e4:	554e475f 	.inst	0x554e475f ; undefined
    23e8:	41565f43 	.inst	0x41565f43 ; undefined
    23ec:	53494c5f 	.inst	0x53494c5f ; undefined
    23f0:	61002054 	.inst	0x61002054 ; undefined
    23f4:	6d5f7875 	ldp	d21, d30, [x3, #496]
    23f8:	5f696e69 	.inst	0x5f696e69 ; undefined
    23fc:	74726175 	.inst	0x74726175 ; undefined
    2400:	6765725f 	.inst	0x6765725f ; undefined
    2404:	00745f73 	.inst	0x00745f73 ; undefined
    2408:	61615f5f 	.inst	0x61615f5f ; undefined
    240c:	36686372 	tbz	w18, #13, 3078 <stdout_putp+0x1248>
    2410:	205f5f34 	.inst	0x205f5f34 ; undefined
    2414:	5f5f0031 	.inst	0x5f5f0031 ; undefined
    2418:	5f544e49 	.inst	0x5f544e49 ; undefined
    241c:	54444957 	.inst	0x54444957 ; undefined
    2420:	205f5f48 	.inst	0x205f5f48 ; undefined
    2424:	5f003233 	.inst	0x5f003233 ; undefined
    2428:	544c465f 	.inst	0x544c465f ; undefined
    242c:	5f383231 	.inst	0x5f383231 ; undefined
    2430:	49434544 	.inst	0x49434544 ; undefined
    2434:	5f4c414d 	.inst	0x5f4c414d ; undefined
    2438:	5f474944 	.inst	0x5f474944 ; undefined
    243c:	3633205f 	tbz	wzr, #6, 8844 <stdout_putp+0x6a14>
    2440:	475f5f00 	.inst	0x475f5f00 ; undefined
    2444:	415f4343 	.inst	0x415f4343 ; undefined
    2448:	494d4f54 	.inst	0x494d4f54 ; undefined
    244c:	4f505f43 	.inst	0x4f505f43 ; undefined
    2450:	45544e49 	.inst	0x45544e49 ; undefined
    2454:	4f4c5f52 	.inst	0x4f4c5f52 ; undefined
    2458:	465f4b43 	.inst	0x465f4b43 ; undefined
    245c:	20454552 	.inst	0x20454552 ; undefined
    2460:	696d0032 	ldpsw	x18, x0, [x1, #-152]
    2464:	755f696e 	.inst	0x755f696e ; undefined
    2468:	00747261 	.inst	0x00747261 ; undefined
    246c:	53555f5f 	.inst	0x53555f5f ; undefined
    2470:	4c5f5245 	.inst	0x4c5f5245 ; undefined
    2474:	4c454241 	.inst	0x4c454241 ; undefined
    2478:	4552505f 	.inst	0x4552505f ; undefined
    247c:	5f584946 	.inst	0x5f584946 ; undefined
    2480:	5f00205f 	.inst	0x5f00205f ; undefined
    2484:	4343475f 	.inst	0x4343475f ; undefined
    2488:	4f54415f 	.inst	0x4f54415f ; undefined
    248c:	5f43494d 	.inst	0x5f43494d ; undefined
    2490:	52414843 	.inst	0x52414843 ; undefined
    2494:	545f3233 	.inst	0x545f3233 ; undefined
    2498:	434f4c5f 	.inst	0x434f4c5f ; undefined
    249c:	52465f4b 	.inst	0x52465f4b ; undefined
    24a0:	32204545 	orr	w5, w10, #0x3ffff
    24a4:	415f5f00 	.inst	0x415f5f00 ; undefined
    24a8:	415f4d52 	.inst	0x415f4d52 ; undefined
    24ac:	5f484352 	.inst	0x5f484352 ; undefined
    24b0:	464f5250 	.inst	0x464f5250 ; undefined
    24b4:	20454c49 	.inst	0x20454c49 ; undefined
    24b8:	5f003536 	.inst	0x5f003536 ; undefined
    24bc:	4454535f 	.inst	0x4454535f ; undefined
    24c0:	4f485f43 	.inst	0x4f485f43 ; undefined
    24c4:	44455453 	.inst	0x44455453 ; undefined
    24c8:	30205f5f 	adr	xzr, 430b1 <stdout_putp+0x41281>
    24cc:	535f5f00 	.inst	0x535f5f00 ; undefined
    24d0:	5f455a49 	.inst	0x5f455a49 ; undefined
    24d4:	54444957 	.inst	0x54444957 ; undefined
    24d8:	205f5f48 	.inst	0x205f5f48 ; undefined
    24dc:	5f003436 	.inst	0x5f003436 ; undefined
    24e0:	5341525f 	.inst	0x5341525f ; undefined
    24e4:	534f4950 	.inst	0x534f4950 ; undefined
    24e8:	5059545f 	adr	xzr, b4f72 <stdout_putp+0xb3142>
    24ec:	5f5f5345 	.inst	0x5f5f5345 ; undefined
    24f0:	5f5f0020 	.inst	0x5f5f0020 ; undefined
    24f4:	5f736168 	.inst	0x5f736168 ; undefined
    24f8:	6c636e69 	ldnp	d9, d27, [x19, #-464]
    24fc:	28656475 	ldnp	w21, w25, [x3, #-216]
    2500:	29525453 	ldp	w19, w21, [x2, #144]
    2504:	685f5f20 	.inst	0x685f5f20 ; undefined
    2508:	695f7361 	ldpsw	x1, x28, [x27, #248]
    250c:	756c636e 	.inst	0x756c636e ; undefined
    2510:	5f5f6564 	.inst	0x5f5f6564 ; undefined
    2514:	52545328 	.inst	0x52545328 ; undefined
    2518:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    251c:	31544c46 	adds	w6, w2, #0x513, lsl #12
    2520:	41485f36 	.inst	0x41485f36 ; undefined
    2524:	55515f53 	.inst	0x55515f53 ; undefined
    2528:	5f544549 	.inst	0x5f544549 ; undefined
    252c:	5f4e414e 	.inst	0x5f4e414e ; undefined
    2530:	0031205f 	.inst	0x0031205f ; NYI
    2534:	4f4c5f5f 	.inst	0x4f4c5f5f ; undefined
    2538:	575f474e 	.inst	0x575f474e ; undefined
    253c:	48544449 	ldxrh	w9, [x2]
    2540:	36205f5f 	tbz	wzr, #4, 3128 <stdout_putp+0x12f8>
    2544:	5f5f0034 	.inst	0x5f5f0034 ; undefined
    2548:	43524141 	.inst	0x43524141 ; undefined
    254c:	45343648 	.inst	0x45343648 ; undefined
    2550:	005f5f42 	.inst	0x005f5f42 ; undefined
    2554:	43475f5f 	.inst	0x43475f5f ; undefined
    2558:	54415f43 	b.cc	85140 <stdout_putp+0x83310>  // b.lo, b.ul, b.last
    255c:	43494d4f 	.inst	0x43494d4f ; undefined
    2560:	4f4c4c5f 	.inst	0x4f4c4c5f ; undefined
    2564:	4c5f474e 	.inst	0x4c5f474e ; undefined
    2568:	5f4b434f 	.inst	0x5f4b434f ; undefined
    256c:	45455246 	.inst	0x45455246 ; undefined
    2570:	5f003220 	.inst	0x5f003220 ; undefined
    2574:	544c465f 	.inst	0x544c465f ; undefined
    2578:	58414d5f 	ldr	xzr, 84f20 <stdout_putp+0x830f0>
    257c:	5058455f 	adr	xzr, b2e26 <stdout_putp+0xb0ff6>
    2580:	31205f5f 	cmn	w26, #0x817
    2584:	70003832 	adr	x18, 2c8b <stdout_putp+0xe5b>
    2588:	746e6972 	.inst	0x746e6972 ; undefined
    258c:	66742066 	.inst	0x66742066 ; undefined
    2590:	72705f70 	.inst	0x72705f70 ; undefined
    2594:	66746e69 	.inst	0x66746e69 ; undefined
    2598:	415f5f00 	.inst	0x415f5f00 ; undefined
    259c:	494d4f54 	.inst	0x494d4f54 ; undefined
    25a0:	43415f43 	.inst	0x43415f43 ; undefined
    25a4:	45525f51 	.inst	0x45525f51 ; undefined
    25a8:	0034204c 	.inst	0x0034204c ; NYI
    25ac:	45445f5f 	.inst	0x45445f5f ; undefined
    25b0:	5f323343 	.inst	0x5f323343 ; undefined
    25b4:	5f4e494d 	.inst	0x5f4e494d ; undefined
    25b8:	5f505845 	.inst	0x5f505845 ; undefined
    25bc:	2d28205f 	stp	s31, s8, [x2, #-192]
    25c0:	00293439 	.inst	0x00293439 ; NYI
    25c4:	45445f5f 	.inst	0x45445f5f ; undefined
    25c8:	5f323343 	.inst	0x5f323343 ; undefined
    25cc:	5f58414d 	.inst	0x5f58414d ; undefined
    25d0:	5f505845 	.inst	0x5f505845 ; undefined
    25d4:	3739205f 	tbnz	wzr, #7, 49dc <stdout_putp+0x2bac>
    25d8:	495f5f00 	.inst	0x495f5f00 ; undefined
    25dc:	3436544e 	cbz	w14, 6f064 <stdout_putp+0x6d234>
    25e0:	5059545f 	adr	xzr, b506a <stdout_putp+0xb323a>
    25e4:	205f5f45 	.inst	0x205f5f45 ; undefined
    25e8:	676e6f6c 	.inst	0x676e6f6c ; undefined
    25ec:	746e6920 	.inst	0x746e6920 ; undefined
    25f0:	72656b00 	.inst	0x72656b00 ; undefined
    25f4:	5f6c656e 	.inst	0x5f6c656e ; undefined
    25f8:	6e69616d 	rsubhn2	v13.8h, v11.4s, v9.4s
    25fc:	445f5f00 	.inst	0x445f5f00 ; undefined
    2600:	455f4345 	.inst	0x455f4345 ; undefined
    2604:	5f4c4156 	.inst	0x5f4c4156 ; undefined
    2608:	4854454d 	ldxrh	w13, [x10]
    260c:	5f5f444f 	.inst	0x5f5f444f ; undefined
    2610:	5f003220 	.inst	0x5f003220 ; undefined
    2614:	42444c5f 	.inst	0x42444c5f ; undefined
    2618:	45445f4c 	.inst	0x45445f4c ; undefined
    261c:	414d4943 	.inst	0x414d4943 ; undefined
    2620:	49445f4c 	.inst	0x49445f4c ; undefined
    2624:	205f5f47 	.inst	0x205f5f47 ; undefined
    2628:	5f003633 	.inst	0x5f003633 ; undefined
    262c:	4d52415f 	.inst	0x4d52415f ; undefined
    2630:	4145465f 	.inst	0x4145465f ; undefined
    2634:	45525554 	.inst	0x45525554 ; undefined
    2638:	4352435f 	.inst	0x4352435f ; undefined
    263c:	31203233 	adds	w19, w17, #0x80c
    2640:	495f5f00 	.inst	0x495f5f00 ; undefined
    2644:	4c5f544e 	.inst	0x4c5f544e ; undefined
    2648:	54534145 	b.pl	a8e70 <stdout_putp+0xa7040>  // b.nfrst
    264c:	575f3233 	.inst	0x575f3233 ; undefined
    2650:	48544449 	ldxrh	w9, [x2]
    2654:	33205f5f 	.inst	0x33205f5f ; undefined
    2658:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    265c:	544e4955 	.inst	0x544e4955 ; undefined
    2660:	5f58414d 	.inst	0x5f58414d ; undefined
    2664:	5f58414d 	.inst	0x5f58414d ; undefined
    2668:	7830205f 	steorh	w16, [x2]
    266c:	66666666 	.inst	0x66666666 ; undefined
    2670:	66666666 	.inst	0x66666666 ; undefined
    2674:	66666666 	.inst	0x66666666 ; undefined
    2678:	66666666 	.inst	0x66666666 ; undefined
    267c:	5f004c55 	.inst	0x5f004c55 ; undefined
    2680:	4349505f 	.inst	0x4349505f ; undefined
    2684:	32205f5f 	orr	wsp, w26, #0xffffff
    2688:	555f5f00 	.inst	0x555f5f00 ; undefined
    268c:	5f544e49 	.inst	0x5f544e49 ; undefined
    2690:	5341454c 	.inst	0x5341454c ; undefined
    2694:	5f343654 	.inst	0x5f343654 ; undefined
    2698:	45505954 	.inst	0x45505954 ; undefined
    269c:	6c205f5f 	stnp	d31, d23, [x26, #-512]
    26a0:	20676e6f 	.inst	0x20676e6f ; undefined
    26a4:	69736e75 	ldpsw	x21, x27, [x19, #-104]
    26a8:	64656e67 	.inst	0x64656e67 ; undefined
    26ac:	746e6920 	.inst	0x746e6920 ; undefined
    26b0:	535f5f00 	.inst	0x535f5f00 ; undefined
    26b4:	5f455a49 	.inst	0x5f455a49 ; undefined
    26b8:	5f58414d 	.inst	0x5f58414d ; undefined
    26bc:	7830205f 	steorh	w16, [x2]
    26c0:	66666666 	.inst	0x66666666 ; undefined
    26c4:	66666666 	.inst	0x66666666 ; undefined
    26c8:	66666666 	.inst	0x66666666 ; undefined
    26cc:	66666666 	.inst	0x66666666 ; undefined
    26d0:	5f004c55 	.inst	0x5f004c55 ; undefined
    26d4:	4e494c5f 	.inst	0x4e494c5f ; undefined
    26d8:	5f4f5241 	.inst	0x5f4f5241 ; undefined
    26dc:	4e495053 	.inst	0x4e495053 ; undefined
    26e0:	30205f5f 	adr	xzr, 432c9 <stdout_putp+0x41499>
    26e4:	415f5f00 	.inst	0x415f5f00 ; undefined
    26e8:	415f4d52 	.inst	0x415f4d52 ; undefined
    26ec:	4e47494c 	.inst	0x4e47494c ; undefined
    26f0:	58414d5f 	ldr	xzr, 85098 <stdout_putp+0x83268>
    26f4:	4154535f 	.inst	0x4154535f ; undefined
    26f8:	505f4b43 	adr	x3, c1062 <stdout_putp+0xbf232>
    26fc:	31205257 	adds	w23, w18, #0x814
    2700:	5f5f0036 	.inst	0x5f5f0036 ; undefined
    2704:	5f434347 	.inst	0x5f434347 ; undefined
    2708:	4d4f5441 	.inst	0x4d4f5441 ; undefined
    270c:	535f4349 	.inst	0x535f4349 ; undefined
    2710:	54524f48 	b.hi	a70f8 <stdout_putp+0xa52c8>  // b.pmore
    2714:	434f4c5f 	.inst	0x434f4c5f ; undefined
    2718:	52465f4b 	.inst	0x52465f4b ; undefined
    271c:	32204545 	orr	w5, w10, #0x3ffff
    2720:	465f5f00 	.inst	0x465f5f00 ; undefined
    2724:	4d5f544c 	.inst	0x4d5f544c ; undefined
    2728:	315f4e49 	adds	w9, w18, #0x7d3, lsl #12
    272c:	58455f30 	ldr	x16, 8d310 <stdout_putp+0x8b4e0>
    2730:	205f5f50 	.inst	0x205f5f50 ; undefined
    2734:	37332d28 	tbnz	w8, #6, 8cd8 <stdout_putp+0x6ea8>
    2738:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    273c:	36544c46 	tbz	w6, #10, ffffffffffffb0c4 <stdout_putp+0xffffffffffff9294>
    2740:	494d5f34 	.inst	0x494d5f34 ; undefined
    2744:	58455f4e 	ldr	x14, 8d32c <stdout_putp+0x8b4fc>
    2748:	205f5f50 	.inst	0x205f5f50 ; undefined
    274c:	30312d28 	adr	x8, 64cf1 <stdout_putp+0x62ec1>
    2750:	00293132 	.inst	0x00293132 ; NYI
    2754:	52415f5f 	.inst	0x52415f5f ; undefined
    2758:	45465f4d 	.inst	0x45465f4d ; undefined
    275c:	52555441 	.inst	0x52555441 ; undefined
    2760:	4d465f45 	.inst	0x4d465f45 ; undefined
    2764:	5f5f0041 	.inst	0x5f5f0041 ; undefined
    2768:	5f544c46 	.inst	0x5f544c46 ; undefined
    276c:	4c415645 	.inst	0x4c415645 ; undefined
    2770:	54454d5f 	.inst	0x54454d5f ; undefined
    2774:	5f444f48 	.inst	0x5f444f48 ; undefined
    2778:	315f5354 	adds	w20, w26, #0x7d4, lsl #12
    277c:	31363638 	adds	w24, w17, #0xd8d
    2780:	5f5f335f 	sqdmlal	s31, h26, v15.h[1]
    2784:	5f003020 	.inst	0x5f003020 ; undefined
    2788:	4c42445f 	.inst	0x4c42445f ; undefined
    278c:	5341485f 	.inst	0x5341485f ; undefined
    2790:	464e495f 	.inst	0x464e495f ; undefined
    2794:	54494e49 	b.ls	9515c <stdout_putp+0x9332c>  // b.plast
    2798:	205f5f59 	.inst	0x205f5f59 ; undefined
    279c:	55410031 	.inst	0x55410031 ; undefined
    27a0:	45505f58 	.inst	0x45505f58 ; undefined
    27a4:	425f4952 	.inst	0x425f4952 ; undefined
    27a8:	20455341 	.inst	0x20455341 ; undefined
    27ac:	52455028 	.inst	0x52455028 ; undefined
    27b0:	41425f49 	.inst	0x41425f49 ; undefined
    27b4:	2b204553 	adds	w19, w10, w0, uxtw #1
    27b8:	30783020 	adr	x0, f2dbd <stdout_putp+0xf0f8d>
    27bc:	35313230 	cbnz	w16, 64e00 <stdout_putp+0x62fd0>
    27c0:	29303030 	stp	w16, w12, [x1, #-128]
    27c4:	495f5f00 	.inst	0x495f5f00 ; undefined
    27c8:	3436544e 	cbz	w14, 6f250 <stdout_putp+0x6d420>
    27cc:	6328435f 	.inst	0x6328435f ; undefined
    27d0:	20632029 	.inst	0x20632029 ; undefined
    27d4:	4c202323 	.inst	0x4c202323 ; undefined
    27d8:	495f5f00 	.inst	0x495f5f00 ; undefined
    27dc:	465f544e 	.inst	0x465f544e ; undefined
    27e0:	33545341 	.inst	0x33545341 ; undefined
    27e4:	59545f32 	.inst	0x59545f32 ; undefined
    27e8:	5f5f4550 	.inst	0x5f5f4550 ; undefined
    27ec:	746e6920 	.inst	0x746e6920 ; undefined
    27f0:	465f5f00 	.inst	0x465f5f00 ; undefined
    27f4:	485f544c 	ldxrh	w12, [x2]
    27f8:	515f5341 	sub	w1, w26, #0x7d4, lsl #12
    27fc:	54454955 	.inst	0x54454955 ; undefined
    2800:	4e414e5f 	.inst	0x4e414e5f ; undefined
    2804:	31205f5f 	cmn	w26, #0x817
    2808:	505f5f00 	adr	x0, c13ea <stdout_putp+0xbf5ba>
    280c:	49445254 	.inst	0x49445254 ; undefined
    2810:	545f4646 	b.vs	c10d8 <stdout_putp+0xbf2a8>
    2814:	5f455059 	.inst	0x5f455059 ; undefined
    2818:	6f6c205f 	umlal2	v31.4s, v2.8h, v12.h[2]
    281c:	6920676e 	stgp	x14, x25, [x27, #-1024]
    2820:	5f00746e 	.inst	0x5f00746e ; undefined
    2824:	4d52415f 	.inst	0x4d52415f ; undefined
    2828:	4145465f 	.inst	0x4145465f ; undefined
    282c:	45525554 	.inst	0x45525554 ; undefined
    2830:	4148535f 	.inst	0x4148535f ; undefined
    2834:	5f5f0033 	.inst	0x5f5f0033 ; undefined
    2838:	43445453 	.inst	0x43445453 ; undefined
    283c:	5245565f 	.inst	0x5245565f ; undefined
    2840:	4e4f4953 	.inst	0x4e4f4953 ; undefined
    2844:	32205f5f 	orr	wsp, w26, #0xffffff
    2848:	31373130 	adds	w16, w9, #0xdcc
    284c:	5f004c30 	.inst	0x5f004c30 ; undefined
    2850:	4345445f 	.inst	0x4345445f ; undefined
    2854:	5f383231 	.inst	0x5f383231 ; undefined
    2858:	4e425553 	.inst	0x4e425553 ; undefined
    285c:	414d524f 	.inst	0x414d524f ; undefined
    2860:	494d5f4c 	.inst	0x494d5f4c ; undefined
    2864:	205f5f4e 	.inst	0x205f5f4e ; undefined
    2868:	30302e30 	adr	x16, 62e2d <stdout_putp+0x60ffd>
    286c:	30303030 	adr	x16, 62e71 <stdout_putp+0x61041>
    2870:	30303030 	adr	x16, 62e75 <stdout_putp+0x61045>
    2874:	30303030 	adr	x16, 62e79 <stdout_putp+0x61049>
    2878:	30303030 	adr	x16, 62e7d <stdout_putp+0x6104d>
    287c:	30303030 	adr	x16, 62e81 <stdout_putp+0x61051>
    2880:	30303030 	adr	x16, 62e85 <stdout_putp+0x61055>
    2884:	30303030 	adr	x16, 62e89 <stdout_putp+0x61059>
    2888:	45313030 	.inst	0x45313030 ; undefined
    288c:	3431362d 	cbz	w13, 64f50 <stdout_putp+0x63120>
    2890:	004c4433 	.inst	0x004c4433 ; undefined
    2894:	4c465f5f 	.inst	0x4c465f5f ; undefined
    2898:	58323354 	ldr	x20, 66f00 <stdout_putp+0x650d0>
    289c:	5341485f 	.inst	0x5341485f ; undefined
    28a0:	4955515f 	.inst	0x4955515f ; undefined
    28a4:	4e5f5445 	.inst	0x4e5f5445 ; undefined
    28a8:	5f5f4e41 	.inst	0x5f5f4e41 ; undefined
    28ac:	5f003120 	.inst	0x5f003120 ; undefined
    28b0:	4c42445f 	.inst	0x4c42445f ; undefined
    28b4:	58414d5f 	ldr	xzr, 8525c <stdout_putp+0x8342c>
    28b8:	5f30315f 	.inst	0x5f30315f ; undefined
    28bc:	5f505845 	.inst	0x5f505845 ; undefined
    28c0:	3033205f 	adr	xzr, 68cc9 <stdout_putp+0x66e99>
    28c4:	5f5f0038 	.inst	0x5f5f0038 ; undefined
    28c8:	5f434347 	.inst	0x5f434347 ; undefined
    28cc:	4d4f5441 	.inst	0x4d4f5441 ; undefined
    28d0:	495f4349 	.inst	0x495f4349 ; undefined
    28d4:	4c5f544e 	.inst	0x4c5f544e ; undefined
    28d8:	5f4b434f 	.inst	0x5f4b434f ; undefined
    28dc:	45455246 	.inst	0x45455246 ; undefined
    28e0:	5f003220 	.inst	0x5f003220 ; undefined
    28e4:	6369705f 	.inst	0x6369705f ; undefined
    28e8:	32205f5f 	orr	wsp, w26, #0xffffff
    28ec:	475f5f00 	.inst	0x475f5f00 ; undefined
    28f0:	5f43554e 	shl	d14, d10, #3
    28f4:	43445453 	.inst	0x43445453 ; undefined
    28f8:	4c4e495f 	.inst	0x4c4e495f ; undefined
    28fc:	5f454e49 	.inst	0x5f454e49 ; undefined
    2900:	0031205f 	.inst	0x0031205f ; NYI
    2904:	49425f5f 	.inst	0x49425f5f ; undefined
    2908:	53454747 	.inst	0x53454747 ; undefined
    290c:	4c415f54 	.inst	0x4c415f54 ; undefined
    2910:	4d4e4749 	.inst	0x4d4e4749 ; undefined
    2914:	5f544e45 	.inst	0x5f544e45 ; undefined
    2918:	3631205f 	tbz	wzr, #6, 4d20 <stdout_putp+0x2ef0>
    291c:	465f5f00 	.inst	0x465f5f00 ; undefined
    2920:	3231544c 	orr	w12, w2, #0xffff801f
    2924:	45445f38 	.inst	0x45445f38 ; undefined
    2928:	4d524f4e 	.inst	0x4d524f4e ; undefined
    292c:	4e494d5f 	.inst	0x4e494d5f ; undefined
    2930:	36205f5f 	tbz	wzr, #4, 3518 <stdout_putp+0x16e8>
    2934:	3537342e 	cbnz	w14, 70fb8 <stdout_putp+0x6f188>
    2938:	31353731 	adds	w17, w25, #0xd4d
    293c:	33343931 	.inst	0x33343931 ; undefined
    2940:	35323038 	cbnz	w24, 66f44 <stdout_putp+0x65114>
    2944:	39303131 	strb	w17, [x9, #3084]
    2948:	33343432 	.inst	0x33343432 ; undefined
    294c:	38353938 	.inst	0x38353938 ; undefined
    2950:	36373232 	tbz	w18, #6, f94 <systick_handler+0x30>
    2954:	35353634 	cbnz	w20, 6d018 <stdout_putp+0x6b1e8>
    2958:	39342d65 	strb	w5, [x11, #3339]
    295c:	31463636 	adds	w22, w17, #0x18d, lsl #12
    2960:	5f003832 	.inst	0x5f003832 ; undefined
    2964:	544e495f 	.inst	0x544e495f ; undefined
    2968:	5341465f 	.inst	0x5341465f ; undefined
    296c:	575f3854 	.inst	0x575f3854 ; undefined
    2970:	48544449 	ldxrh	w9, [x2]
    2974:	33205f5f 	.inst	0x33205f5f ; undefined
    2978:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    297c:	43524141 	.inst	0x43524141 ; undefined
    2980:	5f343648 	.inst	0x5f343648 ; undefined
    2984:	444f4d43 	.inst	0x444f4d43 ; undefined
    2988:	4c5f4c45 	.inst	0x4c5f4c45 ; undefined
    298c:	45475241 	.inst	0x45475241 ; undefined
    2990:	5f005f5f 	.inst	0x5f005f5f ; undefined
    2994:	544c465f 	.inst	0x544c465f ; undefined
    2998:	4e494d5f 	.inst	0x4e494d5f ; undefined
    299c:	5058455f 	adr	xzr, b3246 <stdout_putp+0xb1416>
    29a0:	28205f5f 	stnp	wzr, w23, [x26, #-256]
    29a4:	3532312d 	cbnz	w13, 66fc8 <stdout_putp+0x65198>
    29a8:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    29ac:	31434544 	adds	w4, w10, #0xd1, lsl #12
    29b0:	4d5f3832 	.inst	0x4d5f3832 ; undefined
    29b4:	5f5f5841 	.inst	0x5f5f5841 ; undefined
    29b8:	392e3920 	strb	w0, [x9, #2958]
    29bc:	39393939 	strb	w25, [x9, #3662]
    29c0:	39393939 	strb	w25, [x9, #3662]
    29c4:	39393939 	strb	w25, [x9, #3662]
    29c8:	39393939 	strb	w25, [x9, #3662]
    29cc:	39393939 	strb	w25, [x9, #3662]
    29d0:	39393939 	strb	w25, [x9, #3662]
    29d4:	39393939 	strb	w25, [x9, #3662]
    29d8:	39393939 	strb	w25, [x9, #3662]
    29dc:	34313645 	cbz	w5, 650a4 <stdout_putp+0x63274>
    29e0:	004c4434 	.inst	0x004c4434 ; undefined
    29e4:	45525f5f 	.inst	0x45525f5f ; undefined
    29e8:	54534947 	b.vc	a9310 <stdout_putp+0xa74e0>
    29ec:	505f5245 	adr	x5, c1436 <stdout_putp+0xbf606>
    29f0:	49464552 	.inst	0x49464552 ; undefined
    29f4:	205f5f58 	.inst	0x205f5f58 ; undefined
    29f8:	6f682f00 	.inst	0x6f682f00 ; undefined
    29fc:	612f656d 	.inst	0x612f656d ; undefined
    2a00:	73696862 	.inst	0x73696862 ; undefined
    2a04:	2f6b6568 	.inst	0x2f6b6568 ; undefined
    2a08:	65646f43 	fnmls	z3.h, p3/m, z26.h, z4.h
    2a0c:	65722f73 	fmls	z19.h, p3/m, z27.h, z18.h
    2a10:	2f736f70 	.inst	0x2f736f70 ; undefined
    2a14:	70736172 	adr	x18, e9643 <stdout_putp+0xe7813>
    2a18:	736f5f69 	.inst	0x736f5f69 ; undefined
    2a1c:	465f5f00 	.inst	0x465f5f00 ; undefined
    2a20:	3631544c 	tbz	w12, #6, 54a8 <stdout_putp+0x3678>
    2a24:	58414d5f 	ldr	xzr, 853cc <stdout_putp+0x8359c>
    2a28:	36205f5f 	tbz	wzr, #4, 3610 <stdout_putp+0x17e0>
    2a2c:	3035352e 	adr	x14, 6d0d1 <stdout_putp+0x6b2a1>
    2a30:	30303034 	adr	x20, 63035 <stdout_putp+0x61205>
    2a34:	30303030 	adr	x16, 63039 <stdout_putp+0x61209>
    2a38:	30303030 	adr	x16, 6303d <stdout_putp+0x6120d>
    2a3c:	30303030 	adr	x16, 63041 <stdout_putp+0x61211>
    2a40:	30303030 	adr	x16, 63045 <stdout_putp+0x61215>
    2a44:	30303030 	adr	x16, 63049 <stdout_putp+0x61219>
    2a48:	30303030 	adr	x16, 6304d <stdout_putp+0x6121d>
    2a4c:	30303030 	adr	x16, 63051 <stdout_putp+0x61221>
    2a50:	46342b65 	.inst	0x46342b65 ; undefined
    2a54:	5f003631 	.inst	0x5f003631 ; undefined
    2a58:	4d52415f 	.inst	0x4d52415f ; undefined
    2a5c:	5343505f 	.inst	0x5343505f ; undefined
    2a60:	5041415f 	adr	xzr, 8528a <stdout_putp+0x8345a>
    2a64:	34365343 	cbz	w3, 6f4cc <stdout_putp+0x6d69c>
    2a68:	5f003120 	.inst	0x5f003120 ; undefined
    2a6c:	4e49555f 	.inst	0x4e49555f ; undefined
    2a70:	454c5f54 	.inst	0x454c5f54 ; undefined
    2a74:	33545341 	.inst	0x33545341 ; undefined
    2a78:	414d5f32 	.inst	0x414d5f32 ; undefined
    2a7c:	205f5f58 	.inst	0x205f5f58 ; undefined
    2a80:	66667830 	.inst	0x66667830 ; undefined
    2a84:	66666666 	.inst	0x66666666 ; undefined
    2a88:	00556666 	.inst	0x00556666 ; undefined
    2a8c:	4c465f5f 	.inst	0x4c465f5f ; undefined
    2a90:	58323354 	ldr	x20, 670f8 <stdout_putp+0x652c8>
    2a94:	58414d5f 	ldr	xzr, 8543c <stdout_putp+0x8360c>
    2a98:	5f30315f 	.inst	0x5f30315f ; undefined
    2a9c:	5f505845 	.inst	0x5f505845 ; undefined
    2aa0:	3033205f 	adr	xzr, 68ea9 <stdout_putp+0x67079>
    2aa4:	5f5f0038 	.inst	0x5f5f0038 ; undefined
    2aa8:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    2aac:	5f534148 	.inst	0x5f534148 ; undefined
    2ab0:	4f4e4544 	.inst	0x4f4e4544 ; undefined
    2ab4:	5f5f4d52 	.inst	0x5f5f4d52 ; undefined
    2ab8:	5f003120 	.inst	0x5f003120 ; undefined
    2abc:	544c465f 	.inst	0x544c465f ; undefined
    2ac0:	4d5f3631 	.inst	0x4d5f3631 ; undefined
    2ac4:	315f5841 	adds	w1, w2, #0x7d6, lsl #12
    2ac8:	58455f30 	ldr	x16, 8d6ac <stdout_putp+0x8b87c>
    2acc:	205f5f50 	.inst	0x205f5f50 ; undefined
    2ad0:	5f5f0034 	.inst	0x5f5f0034 ; undefined
    2ad4:	36544c46 	tbz	w6, #10, ffffffffffffb45c <stdout_putp+0xffffffffffff962c>
    2ad8:	45445f34 	.inst	0x45445f34 ; undefined
    2adc:	4d524f4e 	.inst	0x4d524f4e ; undefined
    2ae0:	4e494d5f 	.inst	0x4e494d5f ; undefined
    2ae4:	34205f5f 	cbz	wzr, 436cc <stdout_putp+0x4189c>
    2ae8:	3034392e 	adr	x14, 6b20d <stdout_putp+0x693dd>
    2aec:	34363536 	cbz	w22, 6f190 <stdout_putp+0x6d360>
    2af0:	31343835 	adds	w21, w1, #0xd0e
    2af4:	35363432 	cbnz	w18, 6f178 <stdout_putp+0x6d348>
    2af8:	37313434 	tbnz	w20, #6, 517c <stdout_putp+0x334c>
    2afc:	38363536 	.inst	0x38363536 ; undefined
    2b00:	38323937 	.inst	0x38323937 ; undefined
    2b04:	32323836 	orr	w22, w1, #0x1fffc000
    2b08:	32373331 	orr	w17, w25, #0x3ffe00
    2b0c:	32332d65 	orr	w5, w11, #0x1ffe000
    2b10:	34364634 	cbz	w20, 6f3d4 <stdout_putp+0x6d5a4>
    2b14:	465f5f00 	.inst	0x465f5f00 ; undefined
    2b18:	3233544c 	orr	w12, w2, #0xffffe007
    2b1c:	58414d5f 	ldr	xzr, 854c4 <stdout_putp+0x83694>
    2b20:	5f30315f 	.inst	0x5f30315f ; undefined
    2b24:	5f505845 	.inst	0x5f505845 ; undefined
    2b28:	3833205f 	steorb	w19, [x2]
    2b2c:	535f5f00 	.inst	0x535f5f00 ; undefined
    2b30:	5f434454 	.inst	0x5f434454 ; undefined
    2b34:	5f465455 	shl	d21, d2, #6
    2b38:	5f5f3233 	sqdmlal	s19, h17, v15.h[1]
    2b3c:	5f003120 	.inst	0x5f003120 ; undefined
    2b40:	5254505f 	.inst	0x5254505f ; undefined
    2b44:	46464944 	.inst	0x46464944 ; undefined
    2b48:	4449575f 	.inst	0x4449575f ; undefined
    2b4c:	5f5f4854 	.inst	0x5f5f4854 ; undefined
    2b50:	00343620 	.inst	0x00343620 ; NYI
    2b54:	4e495f5f 	.inst	0x4e495f5f ; undefined
    2b58:	454c5f54 	.inst	0x454c5f54 ; undefined
    2b5c:	33545341 	.inst	0x33545341 ; undefined
    2b60:	414d5f32 	.inst	0x414d5f32 ; undefined
    2b64:	205f5f58 	.inst	0x205f5f58 ; undefined
    2b68:	66377830 	.inst	0x66377830 ; undefined
    2b6c:	66666666 	.inst	0x66666666 ; undefined
    2b70:	5f006666 	.inst	0x5f006666 ; undefined
    2b74:	4e49555f 	.inst	0x4e49555f ; undefined
    2b78:	41465f54 	.inst	0x41465f54 ; undefined
    2b7c:	34365453 	cbz	w19, 6f604 <stdout_putp+0x6d7d4>
    2b80:	5059545f 	adr	xzr, b560a <stdout_putp+0xb37da>
    2b84:	205f5f45 	.inst	0x205f5f45 ; undefined
    2b88:	676e6f6c 	.inst	0x676e6f6c ; undefined
    2b8c:	736e7520 	.inst	0x736e7520 ; undefined
    2b90:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
    2b94:	6e692064 	usubl2	v4.4s, v3.8h, v9.8h
    2b98:	55410074 	.inst	0x55410074 ; undefined
    2b9c:	554d5f58 	.inst	0x554d5f58 ; undefined
    2ba0:	5249495f 	.inst	0x5249495f ; undefined
    2ba4:	4745525f 	.inst	0x4745525f ; undefined
    2ba8:	4c5f5f00 	.inst	0x4c5f5f00 ; undefined
    2bac:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    2bb0:	5f58414d 	.inst	0x5f58414d ; undefined
    2bb4:	455f3031 	.inst	0x455f3031 ; undefined
    2bb8:	5f5f5058 	.inst	0x5f5f5058 ; undefined
    2bbc:	33393420 	.inst	0x33393420 ; undefined
    2bc0:	5f5f0032 	.inst	0x5f5f0032 ; undefined
    2bc4:	36434544 	tbz	w4, #8, 946c <stdout_putp+0x763c>
    2bc8:	494d5f34 	.inst	0x494d5f34 ; undefined
    2bcc:	205f5f4e 	.inst	0x205f5f4e ; undefined
    2bd0:	332d4531 	.inst	0x332d4531 ; undefined
    2bd4:	44443338 	.inst	0x44443338 ; undefined
    2bd8:	465f5f00 	.inst	0x465f5f00 ; undefined
    2bdc:	3233544c 	orr	w12, w2, #0xffffe007
    2be0:	4e494d5f 	.inst	0x4e494d5f ; undefined
    2be4:	31205f5f 	cmn	w26, #0x817
    2be8:	3537312e 	cbnz	w14, 7120c <stdout_putp+0x6f3dc>
    2bec:	33343934 	.inst	0x33343934 ; undefined
    2bf0:	32383035 	orr	w21, w1, #0x1fff00
    2bf4:	37383232 	tbnz	w18, #7, 3238 <stdout_putp+0x1408>
    2bf8:	39373035 	strb	w21, [x1, #3532]
    2bfc:	33373836 	.inst	0x33373836 ; undefined
    2c00:	37333536 	tbnz	w22, #6, 92a4 <stdout_putp+0x7474>
    2c04:	32323232 	orr	w18, w17, #0x7ffc000
    2c08:	38363534 	.inst	0x38363534 ; undefined
    2c0c:	38332d65 	.inst	0x38332d65 ; undefined
    2c10:	00323346 	.inst	0x00323346 ; NYI
    2c14:	42445f5f 	.inst	0x42445f5f ; undefined
    2c18:	50455f4c 	adr	x12, 8d802 <stdout_putp+0x8b9d2>
    2c1c:	4f4c4953 	.inst	0x4f4c4953 ; undefined
    2c20:	205f5f4e 	.inst	0x205f5f4e ; undefined
    2c24:	6f642828 	umlal2	v8.4s, v1.8h, v4.h[6]
    2c28:	656c6275 	fnmls	z21.h, p0/m, z19.h, z12.h
    2c2c:	322e3229 	orr	w9, w17, #0x7ffc0000
    2c30:	34343032 	cbz	w18, 6b234 <stdout_putp+0x69404>
    2c34:	39343036 	strb	w22, [x1, #3340]
    2c38:	33303532 	.inst	0x33303532 ; undefined
    2c3c:	38303331 	ldsetb	w16, w17, [x25]
    2c40:	37343830 	tbnz	w16, #6, ffffffffffffb344 <stdout_putp+0xffffffffffff9514>
    2c44:	33333632 	.inst	0x33333632 ; undefined
    2c48:	38313633 	.inst	0x38313633 ; undefined
    2c4c:	30343631 	adr	x17, 6b311 <stdout_putp+0x694e1>
    2c50:	2d653236 	ldp	s22, s12, [x17, #-216]
    2c54:	294c3631 	ldp	w17, w13, [x17, #96]
    2c58:	505f5f00 	adr	x0, c183a <stdout_putp+0xbfa0a>
    2c5c:	4d474152 	.inst	0x4d474152 ; undefined
    2c60:	45525f41 	.inst	0x45525f41 ; undefined
    2c64:	49464544 	.inst	0x49464544 ; undefined
    2c68:	455f454e 	.inst	0x455f454e ; undefined
    2c6c:	414e5458 	.inst	0x414e5458 ; undefined
    2c70:	3120454d 	adds	w13, w10, #0x811
    2c74:	535f5f00 	.inst	0x535f5f00 ; undefined
    2c78:	415f4749 	.inst	0x415f4749 ; undefined
    2c7c:	494d4f54 	.inst	0x494d4f54 ; undefined
    2c80:	59545f43 	.inst	0x59545f43 ; undefined
    2c84:	5f5f4550 	.inst	0x5f5f4550 ; undefined
    2c88:	746e6920 	.inst	0x746e6920 ; undefined
    2c8c:	4e494d00 	.inst	0x4e494d00 ; undefined
    2c90:	41555f49 	.inst	0x41555f49 ; undefined
    2c94:	425f5452 	.inst	0x425f5452 ; undefined
    2c98:	20455341 	.inst	0x20455341 ; undefined
    2c9c:	58554128 	ldr	x8, ad4c0 <stdout_putp+0xab690>
    2ca0:	5245505f 	.inst	0x5245505f ; undefined
    2ca4:	41425f49 	.inst	0x41425f49 ; undefined
    2ca8:	2b204553 	adds	w19, w10, w0, uxtw #1
    2cac:	34783020 	cbz	w0, f32b0 <stdout_putp+0xf1480>
    2cb0:	5f002930 	.inst	0x5f002930 ; undefined
    2cb4:	544c465f 	.inst	0x544c465f ; undefined
    2cb8:	5f383231 	.inst	0x5f383231 ; undefined
    2cbc:	5f534148 	.inst	0x5f534148 ; undefined
    2cc0:	4f4e4544 	.inst	0x4f4e4544 ; undefined
    2cc4:	5f5f4d52 	.inst	0x5f5f4d52 ; undefined
    2cc8:	5f003120 	.inst	0x5f003120 ; undefined
    2ccc:	4d52415f 	.inst	0x4d52415f ; undefined
    2cd0:	4145465f 	.inst	0x4145465f ; undefined
    2cd4:	45525554 	.inst	0x45525554 ; undefined
    2cd8:	4556535f 	.inst	0x4556535f ; undefined
    2cdc:	4c5f5f00 	.inst	0x4c5f5f00 ; undefined
    2ce0:	5f4c4244 	.inst	0x5f4c4244 ; undefined
    2ce4:	5f534148 	.inst	0x5f534148 ; undefined
    2ce8:	4f4e4544 	.inst	0x4f4e4544 ; undefined
    2cec:	5f5f4d52 	.inst	0x5f5f4d52 ; undefined
    2cf0:	5f003120 	.inst	0x5f003120 ; undefined
    2cf4:	544c465f 	.inst	0x544c465f ; undefined
    2cf8:	4d5f3436 	.inst	0x4d5f3436 ; undefined
    2cfc:	5f544e41 	.inst	0x5f544e41 ; undefined
    2d00:	5f474944 	.inst	0x5f474944 ; undefined
    2d04:	3335205f 	.inst	0x3335205f ; undefined
    2d08:	445f5f00 	.inst	0x445f5f00 ; undefined
    2d0c:	34364345 	cbz	w5, 6f574 <stdout_putp+0x6d744>
    2d10:	4e414d5f 	.inst	0x4e414d5f ; undefined
    2d14:	49445f54 	.inst	0x49445f54 ; undefined
    2d18:	205f5f47 	.inst	0x205f5f47 ; undefined
    2d1c:	5f003631 	.inst	0x5f003631 ; undefined
    2d20:	544c465f 	.inst	0x544c465f ; undefined
    2d24:	5341485f 	.inst	0x5341485f ; undefined
    2d28:	4e45445f 	.inst	0x4e45445f ; undefined
    2d2c:	5f4d524f 	.inst	0x5f4d524f ; undefined
    2d30:	0031205f 	.inst	0x0031205f ; NYI
    2d34:	4e495f5f 	.inst	0x4e495f5f ; undefined
    2d38:	41465f54 	.inst	0x41465f54 ; undefined
    2d3c:	34365453 	cbz	w19, 6f7c4 <stdout_putp+0x6d994>
    2d40:	4449575f 	.inst	0x4449575f ; undefined
    2d44:	5f5f4854 	.inst	0x5f5f4854 ; undefined
    2d48:	00343620 	.inst	0x00343620 ; NYI
    2d4c:	42445f5f 	.inst	0x42445f5f ; undefined
    2d50:	45445f4c 	.inst	0x45445f4c ; undefined
    2d54:	414d4943 	.inst	0x414d4943 ; undefined
    2d58:	49445f4c 	.inst	0x49445f4c ; undefined
    2d5c:	205f5f47 	.inst	0x205f5f47 ; undefined
    2d60:	73003731 	.inst	0x73003731 ; undefined
    2d64:	692f6372 	stgp	x18, x24, [x27, #-544]
    2d68:	2f74696e 	umlsl	v14.4s, v11.4h, v4.h[7]
    2d6c:	5f717269 	sqdmlsl	s9, h19, v1.h[3]
    2d70:	72746e65 	.inst	0x72746e65 ; undefined
    2d74:	00532e79 	.inst	0x00532e79 ; undefined
    2d78:	20554e47 	.inst	0x20554e47 ; undefined
    2d7c:	32205341 	orr	w1, w26, #0x1fffff
    2d80:	2e32332e 	usubw	v14.8h, v25.8h, v18.8b
    2d84:	4e490030 	.inst	0x4e490030 ; undefined
    2d88:	52535f54 	.inst	0x52535f54 ; undefined
    2d8c:	424d5f43 	.inst	0x424d5f43 ; undefined
    2d90:	2032584f 	.inst	0x2032584f ; undefined
    2d94:	30307830 	adr	x16, 63c99 <stdout_putp+0x61e69>
    2d98:	30303030 	adr	x16, 6339d <stdout_putp+0x6156d>
    2d9c:	4c003034 	.inst	0x4c003034 ; undefined
    2da0:	4c41434f 	.inst	0x4c41434f ; undefined
    2da4:	4d49545f 	.inst	0x4d49545f ; undefined
    2da8:	435f5245 	.inst	0x435f5245 ; undefined
    2dac:	5f4c5254 	.inst	0x5f4c5254 ; undefined
    2db0:	5f515249 	.inst	0x5f515249 ; undefined
    2db4:	28204e45 	stnp	w5, w19, [x18, #-256]
    2db8:	323c3c31 	orr	w17, w1, #0xffff0
    2dbc:	43002939 	.inst	0x43002939 ; undefined
    2dc0:	3245524f 	.inst	0x3245524f ; undefined
    2dc4:	4f424d5f 	.inst	0x4f424d5f ; undefined
    2dc8:	525f3058 	.inst	0x525f3058 ; undefined
    2dcc:	524c4344 	.inst	0x524c4344 ; undefined
    2dd0:	34783020 	cbz	w0, f33d4 <stdout_putp+0xf15a4>
    2dd4:	30303030 	adr	x16, 633d9 <stdout_putp+0x615a9>
    2dd8:	00304530 	.inst	0x00304530 ; NYI
    2ddc:	6365736d 	.inst	0x6365736d ; undefined
    2de0:	6369745f 	.inst	0x6369745f ; undefined
    2de4:	4300736b 	.inst	0x4300736b ; undefined
    2de8:	3345524f 	.inst	0x3345524f ; undefined
    2dec:	5149465f 	sub	wsp, w18, #0x251, lsl #12
    2df0:	554f535f 	.inst	0x554f535f ; undefined
    2df4:	20454352 	.inst	0x20454352 ; undefined
    2df8:	30347830 	adr	x16, 6bcfd <stdout_putp+0x69ecd>
    2dfc:	30303030 	adr	x16, 63401 <stdout_putp+0x615d1>
    2e00:	53004337 	ubfx	w23, w25, #0, #17
    2e04:	5f525350 	.inst	0x5f525350 ; undefined
    2e08:	45444f4d 	.inst	0x45444f4d ; undefined
    2e0c:	314c455f 	cmn	w10, #0x311, lsl #12
    2e10:	35282068 	cbnz	w8, 5321c <stdout_putp+0x513ec>
    2e14:	29303c3c 	stp	w28, w15, [x1, #-128]
    2e18:	54435300 	b.eq	89878 <stdout_putp+0x87a48>  // b.none
    2e1c:	455f524c 	.inst	0x455f524c ; undefined
    2e20:	415f314c 	.inst	0x415f314c ; undefined
    2e24:	4e47494c 	.inst	0x4e47494c ; undefined
    2e28:	4b48435f 	sub	wzr, w26, w8, lsr #16
    2e2c:	5349445f 	.inst	0x5349445f ; undefined
    2e30:	3c302820 	.inst	0x3c302820 ; undefined
    2e34:	0029313c 	.inst	0x0029313c ; NYI
    2e38:	45524f43 	.inst	0x45524f43 ; undefined
    2e3c:	424d5f33 	.inst	0x424d5f33 ; undefined
    2e40:	5f33584f 	fmls	h15, h2, v3.h[7]
    2e44:	4c434452 	.inst	0x4c434452 ; undefined
    2e48:	78302052 	ldeorh	w16, w18, [x2]
    2e4c:	30303034 	adr	x20, 63451 <stdout_putp+0x61621>
    2e50:	43463030 	.inst	0x43463030 ; undefined
    2e54:	73797300 	.inst	0x73797300 ; undefined
    2e58:	6b636974 	.inst	0x6b636974 ; undefined
    2e5c:	6e61685f 	fcvtxn2	v31.4s, v2.2d
    2e60:	72656c64 	.inst	0x72656c64 ; undefined
    2e64:	71726900 	subs	w0, w8, #0xc9a, lsl #12
    2e68:	7374735f 	.inst	0x7374735f ; undefined
    2e6c:	4d495400 	.inst	0x4d495400 ; undefined
    2e70:	5f305245 	fmls	h5, h18, v0.h[3]
    2e74:	20514946 	.inst	0x20514946 ; undefined
    2e78:	30317830 	adr	x16, 65d7d <stdout_putp+0x63f4d>
    2e7c:	53415200 	.inst	0x53415200 ; undefined
    2e80:	534f4950 	.inst	0x534f4950 ; undefined
    2e84:	4742445f 	.inst	0x4742445f ; undefined
    2e88:	62645f28 	.inst	0x62645f28 ; undefined
    2e8c:	6c665f67 	ldnp	d7, d23, [x27, #-416]
    2e90:	2e2c6761 	umax	v1.8b, v27.8b, v12.8b
    2e94:	20292e2e 	.inst	0x20292e2e ; undefined
    2e98:	207b6f64 	.inst	0x207b6f64 ; undefined
    2e9c:	44286669 	.inst	0x44286669 ; undefined
    2ea0:	435f4742 	.inst	0x435f4742 ; undefined
    2ea4:	49464e4f 	.inst	0x49464e4f ; undefined
    2ea8:	20262047 	.inst	0x20262047 ; undefined
    2eac:	6762645f 	.inst	0x6762645f ; undefined
    2eb0:	616c665f 	.inst	0x616c665f ; undefined
    2eb4:	70202967 	adr	x7, 433e3 <stdout_putp+0x415b3>
    2eb8:	746e6972 	.inst	0x746e6972 ; undefined
    2ebc:	5f5f2866 	.inst	0x5f5f2866 ; undefined
    2ec0:	415f4156 	.inst	0x415f4156 ; undefined
    2ec4:	5f534752 	.inst	0x5f534752 ; undefined
    2ec8:	203b295f 	.inst	0x203b295f ; undefined
    2ecc:	6968777d 	.inst	0x6968777d ; undefined
    2ed0:	3028656c 	adr	x12, 53b7d <stdout_putp+0x51d4d>
    2ed4:	43530029 	.inst	0x43530029 ; undefined
    2ed8:	4c455f52 	.inst	0x4c455f52 ; undefined
    2edc:	534e5f33 	.inst	0x534e5f33 ; undefined
    2ee0:	3c312820 	.inst	0x3c312820 ; undefined
    2ee4:	0029303c 	.inst	0x0029303c ; NYI
    2ee8:	45524f43 	.inst	0x45524f43 ; undefined
    2eec:	424d5f31 	.inst	0x424d5f31 ; undefined
    2ef0:	5f33584f 	fmls	h15, h2, v3.h[7]
    2ef4:	4c434452 	.inst	0x4c434452 ; undefined
    2ef8:	78302052 	ldeorh	w16, w18, [x2]
    2efc:	30303034 	adr	x20, 63501 <stdout_putp+0x616d1>
    2f00:	43443030 	.inst	0x43443030 ; undefined
    2f04:	63657300 	.inst	0x63657300 ; undefined
    2f08:	6e69735f 	uabdl2	v31.4s, v26.8h, v9.8h
    2f0c:	625f6563 	.inst	0x625f6563 ; undefined
    2f10:	00746f6f 	.inst	0x00746f6f ; undefined
    2f14:	64616572 	.inst	0x64616572 ; undefined
    2f18:	746e635f 	.inst	0x746e635f ; undefined
    2f1c:	00746376 	.inst	0x00746376 ; undefined
    2f20:	45524f43 	.inst	0x45524f43 ; undefined
    2f24:	4d49545f 	.inst	0x4d49545f ; undefined
    2f28:	495f5245 	.inst	0x495f5245 ; undefined
    2f2c:	5f52544e 	shl	d14, d2, #18
    2f30:	204c4553 	.inst	0x204c4553 ; undefined
    2f34:	30347830 	adr	x16, 6be39 <stdout_putp+0x6a009>
    2f38:	30303030 	adr	x16, 6353d <stdout_putp+0x6170d>
    2f3c:	43003432 	.inst	0x43003432 ; undefined
    2f40:	3045524f 	adr	x15, 8d989 <stdout_putp+0x8bb59>
    2f44:	4d49545f 	.inst	0x4d49545f ; undefined
    2f48:	495f5245 	.inst	0x495f5245 ; undefined
    2f4c:	535f5152 	.inst	0x535f5152 ; undefined
    2f50:	30204c45 	adr	x5, 438d9 <stdout_putp+0x41aa9>
    2f54:	00303078 	.inst	0x00303078 ; NYI
    2f58:	45524f43 	.inst	0x45524f43 ; undefined
    2f5c:	52495f33 	.inst	0x52495f33 ; undefined
    2f60:	4f535f51 	.inst	0x4f535f51 ; undefined
    2f64:	45435255 	.inst	0x45435255 ; undefined
    2f68:	34783020 	cbz	w0, f356c <stdout_putp+0xf173c>
    2f6c:	30303030 	adr	x16, 63571 <stdout_putp+0x61741>
    2f70:	00433630 	.inst	0x00433630 ; undefined
    2f74:	454d4954 	.inst	0x454d4954 ; undefined
    2f78:	495f3052 	.inst	0x495f3052 ; undefined
    2f7c:	30205152 	adr	x18, 439a5 <stdout_putp+0x41b75>
    2f80:	00313078 	.inst	0x00313078 ; NYI
    2f84:	64616572 	.inst	0x64616572 ; undefined
    2f88:	746e635f 	.inst	0x746e635f ; undefined
    2f8c:	76745f76 	.inst	0x76745f76 ; undefined
    2f90:	43006c61 	.inst	0x43006c61 ; undefined
    2f94:	3045524f 	adr	x15, 8d9dd <stdout_putp+0x8bbad>
    2f98:	4f424d5f 	.inst	0x4f424d5f ; undefined
    2f9c:	52495f58 	.inst	0x52495f58 ; undefined
    2fa0:	544e4351 	.inst	0x544e4351 ; undefined
    2fa4:	7830204c 	ldeorh	w16, w12, [x2]
    2fa8:	30303034 	adr	x20, 635ad <stdout_putp+0x6177d>
    2fac:	30353030 	adr	x16, 6d5b1 <stdout_putp+0x6b781>
    2fb0:	63727300 	.inst	0x63727300 ; undefined
    2fb4:	696e692f 	ldpsw	x15, x26, [x9, #-144]
    2fb8:	69742f74 	ldpsw	x20, x11, [x27, #-96]
    2fbc:	7372656d 	.inst	0x7372656d ; undefined
    2fc0:	4300632e 	.inst	0x4300632e ; undefined
    2fc4:	5f45524f 	.inst	0x5f45524f ; undefined
    2fc8:	454d4954 	.inst	0x454d4954 ; undefined
    2fcc:	52505f52 	.inst	0x52505f52 ; undefined
    2fd0:	41435345 	.inst	0x41435345 ; undefined
    2fd4:	3020454c 	adr	x12, 4387d <stdout_putp+0x41a4d>
    2fd8:	30303478 	adr	x24, 63665 <stdout_putp+0x61835>
    2fdc:	30303030 	adr	x16, 635e1 <stdout_putp+0x617b1>
    2fe0:	54580038 	.inst	0x54580038 ; undefined
    2fe4:	465f4c41 	.inst	0x465f4c41 ; undefined
    2fe8:	5f514552 	.inst	0x5f514552 ; undefined
    2fec:	28205a48 	stnp	w8, w22, [x18, #-256]
    2ff0:	20323931 	.inst	0x20323931 ; undefined
    2ff4:	3031202a 	adr	x10, 653f9 <stdout_putp+0x635c9>
    2ff8:	202a2030 	.inst	0x202a2030 ; undefined
    2ffc:	30303031 	adr	x17, 63601 <stdout_putp+0x617d1>
    3000:	4f430029 	.inst	0x4f430029 ; undefined
    3004:	5f334552 	.inst	0x5f334552 ; undefined
    3008:	584f424d 	ldr	x13, a1850 <stdout_putp+0x9fa20>
    300c:	44525f32 	.inst	0x44525f32 ; undefined
    3010:	20524c43 	.inst	0x20524c43 ; undefined
    3014:	30347830 	adr	x16, 6bf19 <stdout_putp+0x6a0e9>
    3018:	30303030 	adr	x16, 6361d <stdout_putp+0x617ed>
    301c:	43003846 	.inst	0x43003846 ; undefined
    3020:	3245524f 	.inst	0x3245524f ; undefined
    3024:	4f424d5f 	.inst	0x4f424d5f ; undefined
    3028:	535f3358 	.inst	0x535f3358 ; undefined
    302c:	30205445 	adr	x5, 43ab5 <stdout_putp+0x41c85>
    3030:	30303478 	adr	x24, 636bd <stdout_putp+0x6188d>
    3034:	41303030 	.inst	0x41303030 ; undefined
    3038:	52490043 	.inst	0x52490043 ; undefined
    303c:	45505f51 	.inst	0x45505f51 ; undefined
    3040:	4e49444e 	.inst	0x4e49444e ; undefined
    3044:	5f315f47 	.inst	0x5f315f47 ; undefined
    3048:	54535953 	.inst	0x54535953 ; undefined
    304c:	52454d49 	.inst	0x52454d49 ; undefined
    3050:	3c312820 	.inst	0x3c312820 ; undefined
    3054:	0029313c 	.inst	0x0029313c ; NYI
    3058:	5f544e49 	.inst	0x5f544e49 ; undefined
    305c:	5f435253 	.inst	0x5f435253 ; undefined
    3060:	454d4954 	.inst	0x454d4954 ; undefined
    3064:	30203352 	adr	x18, 436cd <stdout_putp+0x4189d>
    3068:	30303078 	adr	x24, 63675 <stdout_putp+0x61845>
    306c:	30303030 	adr	x16, 63671 <stdout_putp+0x61841>
    3070:	69740038 	ldpsw	x24, x0, [x1, #-96]
    3074:	5f72656d 	.inst	0x5f72656d ; undefined
    3078:	4f430074 	.inst	0x4f430074 ; undefined
    307c:	5f324552 	.inst	0x5f324552 ; undefined
    3080:	584f424d 	ldr	x13, a18c8 <stdout_putp+0x9fa98>
    3084:	44525f32 	.inst	0x44525f32 ; undefined
    3088:	20524c43 	.inst	0x20524c43 ; undefined
    308c:	30347830 	adr	x16, 6bf91 <stdout_putp+0x6a161>
    3090:	30303030 	adr	x16, 63695 <stdout_putp+0x61865>
    3094:	43003845 	.inst	0x43003845 ; undefined
    3098:	3245524f 	.inst	0x3245524f ; undefined
    309c:	5152495f 	sub	wsp, w10, #0x492, lsl #12
    30a0:	554f535f 	.inst	0x554f535f ; undefined
    30a4:	20454352 	.inst	0x20454352 ; undefined
    30a8:	30347830 	adr	x16, 6bfad <stdout_putp+0x6a17d>
    30ac:	30303030 	adr	x16, 636b1 <stdout_putp+0x61881>
    30b0:	4c003836 	.inst	0x4c003836 ; undefined
    30b4:	4c41434f 	.inst	0x4c41434f ; undefined
    30b8:	4d49545f 	.inst	0x4d49545f ; undefined
    30bc:	575f5245 	.inst	0x575f5245 ; undefined
    30c0:	54435f52 	.inst	0x54435f52 ; undefined
    30c4:	525f4c52 	.inst	0x525f4c52 ; undefined
    30c8:	414f4c45 	.inst	0x414f4c45 ; undefined
    30cc:	31282044 	adds	w4, w2, #0xa08
    30d0:	30333c3c 	adr	x28, 69855 <stdout_putp+0x67a25>
    30d4:	59530029 	ldapurh	w9, [x1, #-208]
    30d8:	49545f53 	.inst	0x49545f53 ; undefined
    30dc:	5f52454d 	.inst	0x5f52454d ; undefined
    30e0:	51455246 	sub	w6, w18, #0x154, lsl #12
    30e4:	205a485f 	.inst	0x205a485f ; undefined
    30e8:	30353228 	adr	x8, 6d72d <stdout_putp+0x6b8fd>
    30ec:	31202a20 	adds	w0, w17, #0x80a
    30f0:	20303030 	.inst	0x20303030 ; undefined
    30f4:	3031202a 	adr	x10, 654f9 <stdout_putp+0x636c9>
    30f8:	00293030 	.inst	0x00293030 ; NYI
    30fc:	454d4954 	.inst	0x454d4954 ; undefined
    3100:	465f3352 	.inst	0x465f3352 ; undefined
    3104:	30205149 	adr	x9, 43b2d <stdout_putp+0x41cfd>
    3108:	00303878 	.inst	0x00303878 ; NYI
    310c:	41434f4c 	.inst	0x41434f4c ; undefined
    3110:	49545f4c 	.inst	0x49545f4c ; undefined
    3114:	5f52454d 	.inst	0x5f52454d ; undefined
    3118:	435f5257 	.inst	0x435f5257 ; undefined
    311c:	204c5254 	.inst	0x204c5254 ; undefined
    3120:	30347830 	adr	x16, 6c025 <stdout_putp+0x6a1f5>
    3124:	30303030 	adr	x16, 63729 <stdout_putp+0x618f9>
    3128:	43003833 	.inst	0x43003833 ; undefined
    312c:	3245524f 	.inst	0x3245524f ; undefined
    3130:	4f424d5f 	.inst	0x4f424d5f ; undefined
    3134:	52495f58 	.inst	0x52495f58 ; undefined
    3138:	544e4351 	.inst	0x544e4351 ; undefined
    313c:	7830204c 	ldeorh	w16, w12, [x2]
    3140:	30303034 	adr	x20, 63745 <stdout_putp+0x61915>
    3144:	38353030 	ldsetb	w21, w16, [x1]
    3148:	544e4900 	b.eq	9fa68 <stdout_putp+0x9dc38>  // b.none
    314c:	4352535f 	.inst	0x4352535f ; undefined
    3150:	4d49545f 	.inst	0x4d49545f ; undefined
    3154:	20305245 	.inst	0x20305245 ; undefined
    3158:	30307830 	adr	x16, 6405d <stdout_putp+0x6222d>
    315c:	30303030 	adr	x16, 63761 <stdout_putp+0x61931>
    3160:	53003130 	ubfx	w16, w9, #0, #13
    3164:	524c5443 	.inst	0x524c5443 ; undefined
    3168:	314c455f 	cmn	w10, #0x311, lsl #12
    316c:	4143445f 	.inst	0x4143445f ; undefined
    3170:	5f454843 	.inst	0x5f454843 ; undefined
    3174:	28204e45 	stnp	w5, w19, [x18, #-256]
    3178:	323c3c31 	orr	w17, w1, #0xffff0
    317c:	43530029 	.inst	0x43530029 ; undefined
    3180:	5f524c54 	.inst	0x5f524c54 ; undefined
    3184:	5f314c45 	.inst	0x5f314c45 ; undefined
    3188:	5f453045 	sqdmlal	s5, h2, v5.h[0]
    318c:	20474942 	.inst	0x20474942 ; undefined
    3190:	3c3c3128 	.inst	0x3c3c3128 ; undefined
    3194:	00293432 	.inst	0x00293432 ; NYI
    3198:	584f424d 	ldr	x13, a19e0 <stdout_putp+0x9fbb0>
    319c:	52495f33 	.inst	0x52495f33 ; undefined
    31a0:	78302051 	ldeorh	w16, w17, [x2]
    31a4:	77003830 	.inst	0x77003830 ; undefined
    31a8:	65746972 	fnmls	z18.h, p2/m, z11.h, z20.h
    31ac:	746e635f 	.inst	0x746e635f ; undefined
    31b0:	76745f76 	.inst	0x76745f76 ; undefined
    31b4:	49006c61 	.inst	0x49006c61 ; undefined
    31b8:	425f5152 	.inst	0x425f5152 ; undefined
    31bc:	43495341 	.inst	0x43495341 ; undefined
    31c0:	4e45505f 	.inst	0x4e45505f ; undefined
    31c4:	474e4944 	.inst	0x474e4944 ; undefined
    31c8:	434f4c5f 	.inst	0x434f4c5f ; undefined
    31cc:	545f4c41 	b.ne	c1b54 <stdout_putp+0xbfd24>  // b.any
    31d0:	52454d49 	.inst	0x52454d49 ; undefined
    31d4:	3c312820 	.inst	0x3c312820 ; undefined
    31d8:	0029303c 	.inst	0x0029303c ; NYI
    31dc:	41434f4c 	.inst	0x41434f4c ; undefined
    31e0:	45505f4c 	.inst	0x45505f4c ; undefined
    31e4:	425f4952 	.inst	0x425f4952 ; undefined
    31e8:	20455341 	.inst	0x20455341 ; undefined
    31ec:	34783028 	cbz	w8, f37f0 <stdout_putp+0xf19c0>
    31f0:	30303030 	adr	x16, 637f5 <stdout_putp+0x619c5>
    31f4:	29303030 	stp	w16, w12, [x1, #-128]
    31f8:	524f4300 	.inst	0x524f4300 ; undefined
    31fc:	545f3245 	b.pl	c1844 <stdout_putp+0xbfa14>  // b.nfrst
    3200:	52454d49 	.inst	0x52454d49 ; undefined
    3204:	5149465f 	sub	wsp, w18, #0x251, lsl #12
    3208:	4c45535f 	.inst	0x4c45535f ; undefined
    320c:	30783020 	adr	x0, f3811 <stdout_putp+0xf19e1>
    3210:	43530036 	.inst	0x43530036 ; undefined
    3214:	5f524c54 	.inst	0x5f524c54 ; undefined
    3218:	5f314c45 	.inst	0x5f314c45 ; undefined
    321c:	47494c41 	.inst	0x47494c41 ; undefined
    3220:	48435f4e 	ldxrh	w14, [x26]
    3224:	4e455f4b 	.inst	0x4e455f4b ; undefined
    3228:	3c312820 	.inst	0x3c312820 ; undefined
    322c:	0029313c 	.inst	0x0029313c ; NYI
    3230:	45524f43 	.inst	0x45524f43 ; undefined
    3234:	49545f32 	.inst	0x49545f32 ; undefined
    3238:	5f52454d 	.inst	0x5f52454d ; undefined
    323c:	5f515249 	.inst	0x5f515249 ; undefined
    3240:	204c4553 	.inst	0x204c4553 ; undefined
    3244:	32307830 	orr	w16, w1, #0xffff7fff
    3248:	524f4300 	.inst	0x524f4300 ; undefined
    324c:	545f3145 	b.pl	c1874 <stdout_putp+0xbfa44>  // b.nfrst
    3250:	52454d49 	.inst	0x52454d49 ; undefined
    3254:	5152495f 	sub	wsp, w10, #0x492, lsl #12
    3258:	4c45535f 	.inst	0x4c45535f ; undefined
    325c:	30783020 	adr	x0, f3861 <stdout_putp+0xf1a31>
    3260:	49540031 	.inst	0x49540031 ; undefined
    3264:	3152454d 	adds	w13, w10, #0x491, lsl #12
    3268:	5152495f 	sub	wsp, w10, #0x492, lsl #12
    326c:	30783020 	adr	x0, f3871 <stdout_putp+0xf1a41>
    3270:	4f4c0032 	.inst	0x4f4c0032 ; undefined
    3274:	5f4c4143 	.inst	0x5f4c4143 ; undefined
    3278:	454d4954 	.inst	0x454d4954 ; undefined
    327c:	54435f52 	.inst	0x54435f52 ; undefined
    3280:	455f4c52 	.inst	0x455f4c52 ; undefined
    3284:	3128204e 	adds	w14, w2, #0xa08
    3288:	38323c3c 	.inst	0x38323c3c ; undefined
    328c:	4f430029 	.inst	0x4f430029 ; undefined
    3290:	5f324552 	.inst	0x5f324552 ; undefined
    3294:	584f424d 	ldr	x13, a1adc <stdout_putp+0x9fcac>
    3298:	45535f30 	.inst	0x45535f30 ; undefined
    329c:	78302054 	ldeorh	w16, w20, [x2]
    32a0:	30303034 	adr	x20, 638a5 <stdout_putp+0x61a75>
    32a4:	30413030 	adr	x16, 858a9 <stdout_putp+0x83a79>
    32a8:	4f424d00 	.inst	0x4f424d00 ; undefined
    32ac:	465f3058 	.inst	0x465f3058 ; undefined
    32b0:	30205149 	adr	x9, 43cd9 <stdout_putp+0x41ea9>
    32b4:	00303178 	.inst	0x00303178 ; NYI
    32b8:	454d4954 	.inst	0x454d4954 ; undefined
    32bc:	465f3152 	.inst	0x465f3152 ; undefined
    32c0:	30205149 	adr	x9, 43ce9 <stdout_putp+0x41eb9>
    32c4:	00303278 	.inst	0x00303278 ; NYI
    32c8:	45524f43 	.inst	0x45524f43 ; undefined
    32cc:	424d5f31 	.inst	0x424d5f31 ; undefined
    32d0:	5f31584f 	fmls	h15, h2, v1.h[7]
    32d4:	4c434452 	.inst	0x4c434452 ; undefined
    32d8:	78302052 	ldeorh	w16, w18, [x2]
    32dc:	30303034 	adr	x20, 638e1 <stdout_putp+0x61ab1>
    32e0:	34443030 	cbz	w16, 8b8e4 <stdout_putp+0x89ab4>
    32e4:	524f4300 	.inst	0x524f4300 ; undefined
    32e8:	4d5f3345 	.inst	0x4d5f3345 ; undefined
    32ec:	32584f42 	.inst	0x32584f42 ; undefined
    32f0:	5445535f 	.inst	0x5445535f ; undefined
    32f4:	34783020 	cbz	w0, f38f8 <stdout_putp+0xf1ac8>
    32f8:	30303030 	adr	x16, 638fd <stdout_putp+0x61acd>
    32fc:	00384230 	.inst	0x00384230 ; NYI
    3300:	45524f43 	.inst	0x45524f43 ; undefined
    3304:	424d5f33 	.inst	0x424d5f33 ; undefined
    3308:	5f30584f 	fmls	h15, h2, v0.h[7]
    330c:	4c434452 	.inst	0x4c434452 ; undefined
    3310:	78302052 	ldeorh	w16, w18, [x2]
    3314:	30303034 	adr	x20, 63919 <stdout_putp+0x61ae9>
    3318:	30463030 	adr	x16, 8f91d <stdout_putp+0x8daed>
    331c:	524f4300 	.inst	0x524f4300 ; undefined
    3320:	465f3045 	.inst	0x465f3045 ; undefined
    3324:	535f5149 	.inst	0x535f5149 ; undefined
    3328:	4352554f 	.inst	0x4352554f ; undefined
    332c:	78302045 	ldeorh	w16, w5, [x2]
    3330:	30303034 	adr	x20, 63935 <stdout_putp+0x61b05>
    3334:	30373030 	adr	x16, 71939 <stdout_putp+0x6fb09>
    3338:	696e6900 	ldpsw	x0, x26, [x8, #-144]
    333c:	79735f74 	ldrh	w20, [x27, #6574]
    3340:	6d697473 	ldp	d19, d29, [x3, #-368]
    3344:	53007265 	ubfx	w5, w19, #0, #29
    3348:	524c5443 	.inst	0x524c5443 ; undefined
    334c:	314c455f 	cmn	w10, #0x311, lsl #12
    3350:	5f45455f 	.inst	0x5f45455f ; undefined
    3354:	20474942 	.inst	0x20474942 ; undefined
    3358:	3c3c3128 	.inst	0x3c3c3128 ; undefined
    335c:	00293532 	.inst	0x00293532 ; NYI
    3360:	5f515249 	.inst	0x5f515249 ; undefined
    3364:	5f535953 	.inst	0x5f535953 ; undefined
    3368:	454d4954 	.inst	0x454d4954 ; undefined
    336c:	5f315f52 	.inst	0x5f315f52 ; undefined
    3370:	28204e45 	stnp	w5, w19, [x18, #-256]
    3374:	313c3c31 	adds	w17, w1, #0xf0f
    3378:	5f5f0029 	.inst	0x5f5f0029 ; undefined
    337c:	5f4d5241 	.inst	0x5f4d5241 ; undefined
    3380:	205f5f48 	.inst	0x205f5f48 ; undefined
    3384:	51524900 	sub	w0, w8, #0x492, lsl #12
    3388:	5f4e455f 	.inst	0x5f4e455f ; undefined
    338c:	464f5f31 	.inst	0x464f5f31 ; undefined
    3390:	30282046 	adr	x6, 53799 <stdout_putp+0x51969>
    3394:	30313278 	adr	x24, 659e1 <stdout_putp+0x63bb1>
    3398:	4f430029 	.inst	0x4f430029 ; undefined
    339c:	5f304552 	.inst	0x5f304552 ; undefined
    33a0:	5f515249 	.inst	0x5f515249 ; undefined
    33a4:	52554f53 	.inst	0x52554f53 ; undefined
    33a8:	30204543 	adr	x3, 43c51 <stdout_putp+0x41e21>
    33ac:	30303478 	adr	x24, 63a39 <stdout_putp+0x61c09>
    33b0:	36303030 	tbz	w16, #6, 39b4 <stdout_putp+0x1b84>
    33b4:	4e490030 	.inst	0x4e490030 ; undefined
    33b8:	52535f54 	.inst	0x52535f54 ; undefined
    33bc:	424d5f43 	.inst	0x424d5f43 ; undefined
    33c0:	2030584f 	.inst	0x2030584f ; undefined
    33c4:	30307830 	adr	x16, 642c9 <stdout_putp+0x62499>
    33c8:	30303030 	adr	x16, 639cd <stdout_putp+0x61b9d>
    33cc:	43003031 	.inst	0x43003031 ; undefined
    33d0:	3345524f 	.inst	0x3345524f ; undefined
    33d4:	4f424d5f 	.inst	0x4f424d5f ; undefined
    33d8:	525f3158 	.inst	0x525f3158 ; undefined
    33dc:	524c4344 	.inst	0x524c4344 ; undefined
    33e0:	34783020 	cbz	w0, f39e4 <stdout_putp+0xf1bb4>
    33e4:	30303030 	adr	x16, 639e9 <stdout_putp+0x61bb9>
    33e8:	00344630 	.inst	0x00344630 ; NYI
    33ec:	656d6974 	fnmls	z20.h, p2/m, z11.h, z13.h
    33f0:	65725f72 	fnmla	z18.h, p7/m, z27.h, z18.h
    33f4:	4d007367 	st3	{v7.h-v9.h}[6], [x27]
    33f8:	32584f42 	.inst	0x32584f42 ; undefined
    33fc:	5149465f 	sub	wsp, w18, #0x251, lsl #12
    3400:	34783020 	cbz	w0, f3a04 <stdout_putp+0xf1bd4>
    3404:	4e490030 	.inst	0x4e490030 ; undefined
    3408:	52535f54 	.inst	0x52535f54 ; undefined
    340c:	4d505f43 	.inst	0x4d505f43 ; undefined
    3410:	78302055 	ldeorh	w16, w21, [x2]
    3414:	30303030 	adr	x16, 63a19 <stdout_putp+0x61be9>
    3418:	30303230 	adr	x16, 63a5d <stdout_putp+0x61c2d>
    341c:	524f4300 	.inst	0x524f4300 ; undefined
    3420:	4d5f3045 	.inst	0x4d5f3045 ; undefined
    3424:	33584f42 	.inst	0x33584f42 ; undefined
    3428:	4344525f 	.inst	0x4344525f ; undefined
    342c:	3020524c 	adr	x12, 43e75 <stdout_putp+0x42045>
    3430:	30303478 	adr	x24, 63abd <stdout_putp+0x61c8d>
    3434:	43303030 	.inst	0x43303030 ; undefined
    3438:	424d0043 	.inst	0x424d0043 ; undefined
    343c:	5f30584f 	fmls	h15, h2, v0.h[7]
    3440:	20515249 	.inst	0x20515249 ; undefined
    3444:	31307830 	adds	w16, w1, #0xc1e
    3448:	434f4c00 	.inst	0x434f4c00 ; undefined
    344c:	545f4c41 	b.ne	c1dd4 <stdout_putp+0xbffa4>  // b.any
    3450:	52454d49 	.inst	0x52454d49 ; undefined
    3454:	5f52575f 	shl	d31, d26, #18
    3458:	4c525443 	.inst	0x4c525443 ; undefined
    345c:	5152495f 	sub	wsp, w10, #0x492, lsl #12
    3460:	524c435f 	.inst	0x524c435f ; undefined
    3464:	3c312820 	.inst	0x3c312820 ; undefined
    3468:	2931333c 	stp	w28, w12, [x25, #-120]
    346c:	51524900 	sub	w0, w8, #0x492, lsl #12
    3470:	4e45505f 	.inst	0x4e45505f ; undefined
    3474:	474e4944 	.inst	0x474e4944 ; undefined
    3478:	4f5f315f 	sqdmlal2	v31.4s, v10.8h, v15.h[1]
    347c:	28204646 	stnp	w6, w17, [x18, #-256]
    3480:	30327830 	adr	x16, 68385 <stdout_putp+0x66555>
    3484:	49002934 	.inst	0x49002934 ; undefined
    3488:	505f5152 	adr	x18, c1eb2 <stdout_putp+0xc0082>
    348c:	49444e45 	.inst	0x49444e45 ; undefined
    3490:	325f474e 	.inst	0x325f474e ; undefined
    3494:	46464f5f 	.inst	0x46464f5f ; undefined
    3498:	78302820 	.inst	0x78302820 ; undefined
    349c:	29383032 	stp	w18, w12, [x1, #-64]
    34a0:	73696400 	.inst	0x73696400 ; undefined
    34a4:	656c6261 	fnmls	z1.h, p0/m, z19.h, z12.h
    34a8:	746e635f 	.inst	0x746e635f ; undefined
    34ac:	4f430076 	.inst	0x4f430076 ; undefined
    34b0:	5f304552 	.inst	0x5f304552 ; undefined
    34b4:	584f424d 	ldr	x13, a1cfc <stdout_putp+0x9fecc>
    34b8:	45535f33 	.inst	0x45535f33 ; undefined
    34bc:	78302054 	ldeorh	w16, w20, [x2]
    34c0:	30303034 	adr	x20, 63ac5 <stdout_putp+0x61c95>
    34c4:	43383030 	.inst	0x43383030 ; undefined
    34c8:	54435300 	b.eq	89f28 <stdout_putp+0x880f8>  // b.none
    34cc:	455f524c 	.inst	0x455f524c ; undefined
    34d0:	445f314c 	.inst	0x445f314c ; undefined
    34d4:	48434143 	ldxrh	w3, [x10]
    34d8:	49445f45 	.inst	0x49445f45 ; undefined
    34dc:	31282053 	adds	w19, w2, #0xa08
    34e0:	29323c3c 	stp	w28, w15, [x1, #-112]
    34e4:	43495400 	.inst	0x43495400 ; undefined
    34e8:	52465f4b 	.inst	0x52465f4b ; undefined
    34ec:	4d5f5145 	.inst	0x4d5f5145 ; undefined
    34f0:	31282053 	adds	w19, w2, #0xa08
    34f4:	00293030 	.inst	0x00293030 ; NYI
    34f8:	584f424d 	ldr	x13, a1d40 <stdout_putp+0x9ff10>
    34fc:	52495f32 	.inst	0x52495f32 ; undefined
    3500:	78302051 	ldeorh	w16, w17, [x2]
    3504:	72003430 	ands	w16, w1, #0x3fff
    3508:	5f646165 	.inst	0x5f646165 ; undefined
    350c:	65726f63 	fnmls	z3.h, p3/m, z27.h, z18.h
    3510:	6d697430 	ldp	d16, d29, [x1, #-368]
    3514:	705f7265 	adr	x5, c2363 <stdout_putp+0xc0533>
    3518:	69646e65 	ldpsw	x5, x27, [x19, #-224]
    351c:	4900676e 	.inst	0x4900676e ; undefined
    3520:	425f5152 	.inst	0x425f5152 ; undefined
    3524:	43495341 	.inst	0x43495341 ; undefined
    3528:	4e45505f 	.inst	0x4e45505f ; undefined
    352c:	474e4944 	.inst	0x474e4944 ; undefined
    3530:	46464f5f 	.inst	0x46464f5f ; undefined
    3534:	78302820 	.inst	0x78302820 ; undefined
    3538:	29303032 	stp	w18, w12, [x1, #-128]
    353c:	524f4300 	.inst	0x524f4300 ; undefined
    3540:	4d5f3345 	.inst	0x4d5f3345 ; undefined
    3544:	5f584f42 	.inst	0x5f584f42 ; undefined
    3548:	43515249 	.inst	0x43515249 ; undefined
    354c:	204c544e 	.inst	0x204c544e ; undefined
    3550:	30347830 	adr	x16, 6c455 <stdout_putp+0x6a625>
    3554:	30303030 	adr	x16, 63b59 <stdout_putp+0x61d29>
    3558:	43004335 	.inst	0x43004335 ; undefined
    355c:	3045524f 	adr	x15, 8dfa5 <stdout_putp+0x8c175>
    3560:	4f424d5f 	.inst	0x4f424d5f ; undefined
    3564:	525f3258 	.inst	0x525f3258 ; undefined
    3568:	524c4344 	.inst	0x524c4344 ; undefined
    356c:	34783020 	cbz	w0, f3b70 <stdout_putp+0xf1d40>
    3570:	30303030 	adr	x16, 63b75 <stdout_putp+0x61d45>
    3574:	00384330 	.inst	0x00384330 ; NYI
    3578:	454d4954 	.inst	0x454d4954 ; undefined
    357c:	495f3252 	.inst	0x495f3252 ; undefined
    3580:	30205152 	adr	x18, 43fa9 <stdout_putp+0x42179>
    3584:	00343078 	.inst	0x00343078 ; NYI
    3588:	45524f43 	.inst	0x45524f43 ; undefined
    358c:	49465f32 	.inst	0x49465f32 ; undefined
    3590:	4f535f51 	.inst	0x4f535f51 ; undefined
    3594:	45435255 	.inst	0x45435255 ; undefined
    3598:	34783020 	cbz	w0, f3b9c <stdout_putp+0xf1d6c>
    359c:	30303030 	adr	x16, 63ba1 <stdout_putp+0x61d71>
    35a0:	00383730 	.inst	0x00383730 ; NYI
    35a4:	41434f4c 	.inst	0x41434f4c ; undefined
    35a8:	49545f4c 	.inst	0x49545f4c ; undefined
    35ac:	5f52454d 	.inst	0x5f52454d ; undefined
    35b0:	45534142 	.inst	0x45534142 ; undefined
    35b4:	45502820 	.inst	0x45502820 ; undefined
    35b8:	425f4952 	.inst	0x425f4952 ; undefined
    35bc:	20455341 	.inst	0x20455341 ; undefined
    35c0:	7830202b 	ldeorh	w16, w11, [x1]
    35c4:	30303442 	adr	x2, 63c4d <stdout_putp+0x61e1d>
    35c8:	4f430029 	.inst	0x4f430029 ; undefined
    35cc:	5f334552 	.inst	0x5f334552 ; undefined
    35d0:	584f424d 	ldr	x13, a1e18 <stdout_putp+0x9ffe8>
    35d4:	45535f33 	.inst	0x45535f33 ; undefined
    35d8:	78302054 	ldeorh	w16, w20, [x2]
    35dc:	30303034 	adr	x20, 63be1 <stdout_putp+0x61db1>
    35e0:	43423030 	.inst	0x43423030 ; undefined
    35e4:	43495400 	.inst	0x43495400 ; undefined
    35e8:	505f534b 	adr	x11, c2052 <stdout_putp+0xc0222>
    35ec:	535f5245 	.inst	0x535f5245 ; undefined
    35f0:	28204345 	stnp	w5, w16, [x26, #-256]
    35f4:	30303031 	adr	x17, 63bf9 <stdout_putp+0x61dc9>
    35f8:	54202f20 	b.eq	43bdc <stdout_putp+0x41dac>  // b.none
    35fc:	5f4b4349 	.inst	0x5f4b4349 ; undefined
    3600:	51455246 	sub	w6, w18, #0x154, lsl #12
    3604:	29534d5f 	ldp	wzr, w19, [x10, #152]
    3608:	4f424d00 	.inst	0x4f424d00 ; undefined
    360c:	465f3358 	.inst	0x465f3358 ; undefined
    3610:	30205149 	adr	x9, 44039 <stdout_putp+0x42209>
    3614:	00303878 	.inst	0x00303878 ; NYI
    3618:	45524f43 	.inst	0x45524f43 ; undefined
    361c:	424d5f32 	.inst	0x424d5f32 ; undefined
    3620:	5f31584f 	fmls	h15, h2, v1.h[7]
    3624:	20544553 	.inst	0x20544553 ; undefined
    3628:	30347830 	adr	x16, 6c52d <stdout_putp+0x6a6fd>
    362c:	30303030 	adr	x16, 63c31 <stdout_putp+0x61e01>
    3630:	44003441 	.inst	0x44003441 ; undefined
    3634:	435f4742 	.inst	0x435f4742 ; undefined
    3638:	49464e4f 	.inst	0x49464e4f ; undefined
    363c:	54282047 	b.vc	53a44 <stdout_putp+0x51c14>
    3640:	52454d49 	.inst	0x52454d49 ; undefined
    3644:	4742445f 	.inst	0x4742445f ; undefined
    3648:	4f430029 	.inst	0x4f430029 ; undefined
    364c:	5f304552 	.inst	0x5f304552 ; undefined
    3650:	454d4954 	.inst	0x454d4954 ; undefined
    3654:	49465f52 	.inst	0x49465f52 ; undefined
    3658:	45535f51 	.inst	0x45535f51 ; undefined
    365c:	7830204c 	ldeorh	w16, w12, [x2]
    3660:	43003430 	.inst	0x43003430 ; undefined
    3664:	3145524f 	adds	w15, w18, #0x154, lsl #12
    3668:	4f424d5f 	.inst	0x4f424d5f ; undefined
    366c:	535f3258 	.inst	0x535f3258 ; undefined
    3670:	30205445 	adr	x5, 440f9 <stdout_putp+0x422c9>
    3674:	30303478 	adr	x24, 63d01 <stdout_putp+0x61ed1>
    3678:	39303030 	strb	w16, [x1, #3084]
    367c:	69750038 	ldpsw	x24, x0, [x1, #-88]
    3680:	3233746e 	orr	w14, w3, #0xffffe7ff
    3684:	616e6500 	.inst	0x616e6500 ; undefined
    3688:	5f656c62 	.inst	0x5f656c62 ; undefined
    368c:	76746e63 	.inst	0x76746e63 ; undefined
    3690:	544e4900 	b.eq	9ffb0 <stdout_putp+0x9e180>  // b.none
    3694:	4352535f 	.inst	0x4352535f ; undefined
    3698:	4d49545f 	.inst	0x4d49545f ; undefined
    369c:	20315245 	.inst	0x20315245 ; undefined
    36a0:	30307830 	adr	x16, 645a5 <stdout_putp+0x62775>
    36a4:	30303030 	adr	x16, 63ca9 <stdout_putp+0x61e79>
    36a8:	63003230 	.inst	0x63003230 ; undefined
    36ac:	5f76746e 	sqshl	d14, d3, #54
    36b0:	006c7463 	.inst	0x006c7463 ; undefined
    36b4:	4c544353 	.inst	0x4c544353 ; undefined
    36b8:	4c455f52 	.inst	0x4c455f52 ; undefined
    36bc:	54535f31 	.inst	0x54535f31 ; undefined
    36c0:	5f4b4341 	.inst	0x5f4b4341 ; undefined
    36c4:	47494c41 	.inst	0x47494c41 ; undefined
    36c8:	48435f4e 	ldxrh	w14, [x26]
    36cc:	4e455f4b 	.inst	0x4e455f4b ; undefined
    36d0:	3c312820 	.inst	0x3c312820 ; undefined
    36d4:	0029343c 	.inst	0x0029343c ; NYI
    36d8:	4c544353 	.inst	0x4c544353 ; undefined
    36dc:	4c455f52 	.inst	0x4c455f52 ; undefined
    36e0:	4d4d5f31 	.inst	0x4d4d5f31 ; undefined
    36e4:	49445f55 	.inst	0x49445f55 ; undefined
    36e8:	30282053 	adr	x19, 53af1 <stdout_putp+0x51cc1>
    36ec:	29303c3c 	stp	w28, w15, [x1, #-128]
    36f0:	524f4300 	.inst	0x524f4300 ; undefined
    36f4:	4d5f3045 	.inst	0x4d5f3045 ; undefined
    36f8:	32584f42 	.inst	0x32584f42 ; undefined
    36fc:	5445535f 	.inst	0x5445535f ; undefined
    3700:	34783020 	cbz	w0, f3d04 <stdout_putp+0xf1ed4>
    3704:	30303030 	adr	x16, 63d09 <stdout_putp+0x61ed9>
    3708:	00383830 	.inst	0x00383830 ; NYI
    370c:	42414e45 	.inst	0x42414e45 ; undefined
    3710:	545f454c 	b.gt	c1fb8 <stdout_putp+0xc0188>
    3714:	52454d49 	.inst	0x52454d49 ; undefined
    3718:	5152495f 	sub	wsp, w10, #0x492, lsl #12
    371c:	53003120 	ubfx	w0, w9, #0, #13
    3720:	524c5443 	.inst	0x524c5443 ; undefined
    3724:	314c455f 	cmn	w10, #0x311, lsl #12
    3728:	4530455f 	.inst	0x4530455f ; undefined
    372c:	54494c5f 	.inst	0x54494c5f ; undefined
    3730:	20454c54 	.inst	0x20454c54 ; undefined
    3734:	3c3c3028 	.inst	0x3c3c3028 ; undefined
    3738:	00293432 	.inst	0x00293432 ; NYI
    373c:	45524f43 	.inst	0x45524f43 ; undefined
    3740:	49545f31 	.inst	0x49545f31 ; undefined
    3744:	5f52454d 	.inst	0x5f52454d ; undefined
    3748:	43515249 	.inst	0x43515249 ; undefined
    374c:	204c544e 	.inst	0x204c544e ; undefined
    3750:	30347830 	adr	x16, 6c655 <stdout_putp+0x6a825>
    3754:	30303030 	adr	x16, 63d59 <stdout_putp+0x61f29>
    3758:	43003434 	.inst	0x43003434 ; undefined
    375c:	3345524f 	.inst	0x3345524f ; undefined
    3760:	4d49545f 	.inst	0x4d49545f ; undefined
    3764:	465f5245 	.inst	0x465f5245 ; undefined
    3768:	535f5149 	.inst	0x535f5149 ; undefined
    376c:	30204c45 	adr	x5, 440f5 <stdout_putp+0x422c5>
    3770:	00373078 	.inst	0x00373078 ; NYI
    3774:	45524f43 	.inst	0x45524f43 ; undefined
    3778:	49545f30 	.inst	0x49545f30 ; undefined
    377c:	5f52454d 	.inst	0x5f52454d ; undefined
    3780:	43515249 	.inst	0x43515249 ; undefined
    3784:	204c544e 	.inst	0x204c544e ; undefined
    3788:	30347830 	adr	x16, 6c68d <stdout_putp+0x6a85d>
    378c:	30303030 	adr	x16, 63d91 <stdout_putp+0x61f61>
    3790:	53003034 	ubfx	w20, w1, #0, #13
    3794:	524c5443 	.inst	0x524c5443 ; undefined
    3798:	314c455f 	cmn	w10, #0x311, lsl #12
    379c:	4143495f 	.inst	0x4143495f ; undefined
    37a0:	5f454843 	.inst	0x5f454843 ; undefined
    37a4:	28204e45 	stnp	w5, w19, [x18, #-256]
    37a8:	313c3c31 	adds	w17, w1, #0xf0f
    37ac:	53002932 	ubfx	w18, w9, #0, #11
    37b0:	5f525350 	.inst	0x5f525350 ; undefined
    37b4:	4b53414d 	sub	w13, w10, w19, lsr #16
    37b8:	4358455f 	.inst	0x4358455f ; undefined
    37bc:	49545045 	.inst	0x49545045 ; undefined
    37c0:	20534e4f 	.inst	0x20534e4f ; undefined
    37c4:	3c203728 	.inst	0x3c203728 ; undefined
    37c8:	2936203c 	stp	w28, w8, [x1, #-80]
    37cc:	52415500 	.inst	0x52415500 ; undefined
    37d0:	41425f54 	.inst	0x41425f54 ; undefined
    37d4:	41524455 	.inst	0x41524455 ; undefined
    37d8:	28204554 	stnp	w20, w17, [x10, #-256]
    37dc:	32353131 	orr	w17, w9, #0xfff800
    37e0:	00293030 	.inst	0x00293030 ; NYI
    37e4:	584f424d 	ldr	x13, a202c <stdout_putp+0xa01fc>
    37e8:	52495f31 	.inst	0x52495f31 ; undefined
    37ec:	78302051 	ldeorh	w16, w17, [x2]
    37f0:	43003230 	.inst	0x43003230 ; undefined
    37f4:	3045524f 	adr	x15, 8e23d <stdout_putp+0x8c40d>
    37f8:	4f424d5f 	.inst	0x4f424d5f ; undefined
    37fc:	535f3058 	.inst	0x535f3058 ; undefined
    3800:	30205445 	adr	x5, 44289 <stdout_putp+0x42459>
    3804:	30303478 	adr	x24, 63e91 <stdout_putp+0x62061>
    3808:	38303030 	ldsetb	w16, w16, [x1]
    380c:	4f430030 	.inst	0x4f430030 ; undefined
    3810:	5f334552 	.inst	0x5f334552 ; undefined
    3814:	454d4954 	.inst	0x454d4954 ; undefined
    3818:	52495f52 	.inst	0x52495f52 ; undefined
    381c:	544e4351 	.inst	0x544e4351 ; undefined
    3820:	7830204c 	ldeorh	w16, w12, [x2]
    3824:	30303034 	adr	x20, 63e29 <stdout_putp+0x61ff9>
    3828:	43343030 	.inst	0x43343030 ; undefined
    382c:	4d524100 	.inst	0x4d524100 ; undefined
    3830:	544e495f 	.inst	0x544e495f ; undefined
    3834:	5341425f 	.inst	0x5341425f ; undefined
    3838:	50282045 	adr	x5, 53c42 <stdout_putp+0x51e12>
    383c:	5f495245 	.inst	0x5f495245 ; undefined
    3840:	45534142 	.inst	0x45534142 ; undefined
    3844:	30202b20 	adr	x0, 43da9 <stdout_putp+0x41f79>
    3848:	30304278 	adr	x24, 64095 <stdout_putp+0x62265>
    384c:	48002930 	stxrh	w0, w16, [x9]
    3850:	455f5243 	.inst	0x455f5243 ; undefined
    3854:	525f324c 	.inst	0x525f324c ; undefined
    3858:	41415f57 	.inst	0x41415f57 ; undefined
    385c:	36484352 	tbz	w18, #9, 40c4 <stdout_putp+0x2294>
    3860:	31282034 	adds	w20, w1, #0xa08
    3864:	31333c3c 	adds	w28, w1, #0xccf
    3868:	65720029 	fmla	z9.h, p0/m, z1.h, z18.h
    386c:	635f6461 	.inst	0x635f6461 ; undefined
    3870:	7266746e 	.inst	0x7266746e ; undefined
    3874:	424d0071 	.inst	0x424d0071 ; undefined
    3878:	5f31584f 	fmls	h15, h2, v1.h[7]
    387c:	20514946 	.inst	0x20514946 ; undefined
    3880:	30327830 	adr	x16, 68785 <stdout_putp+0x66955>
    3884:	4d495400 	.inst	0x4d495400 ; undefined
    3888:	5f325245 	fmls	h5, h18, v2.h[3]
    388c:	20514946 	.inst	0x20514946 ; undefined
    3890:	30347830 	adr	x16, 6c795 <stdout_putp+0x6a965>
    3894:	524f4300 	.inst	0x524f4300 ; undefined
    3898:	4d5f3145 	.inst	0x4d5f3145 ; undefined
    389c:	30584f42 	adr	x2, b4285 <stdout_putp+0xb2455>
    38a0:	4344525f 	.inst	0x4344525f ; undefined
    38a4:	3020524c 	adr	x12, 442ed <stdout_putp+0x424bd>
    38a8:	30303478 	adr	x24, 63f35 <stdout_putp+0x62105>
    38ac:	44303030 	.inst	0x44303030 ; undefined
    38b0:	43530030 	.inst	0x43530030 ; undefined
    38b4:	4c455f52 	.inst	0x4c455f52 ; undefined
    38b8:	57525f33 	.inst	0x57525f33 ; undefined
    38bc:	5241415f 	.inst	0x5241415f ; undefined
    38c0:	34364843 	cbz	w3, 701c8 <stdout_putp+0x6e398>
    38c4:	3c312820 	.inst	0x3c312820 ; undefined
    38c8:	2930313c 	stp	w28, w12, [x9, #-128]
    38cc:	544e4900 	b.eq	a01ec <stdout_putp+0x9e3bc>  // b.none
    38d0:	4352535f 	.inst	0x4352535f ; undefined
    38d4:	4d49545f 	.inst	0x4d49545f ; undefined
    38d8:	20325245 	.inst	0x20325245 ; undefined
    38dc:	30307830 	adr	x16, 647e1 <stdout_putp+0x629b1>
    38e0:	30303030 	adr	x16, 63ee5 <stdout_putp+0x620b5>
    38e4:	53003430 	ubfx	w16, w1, #0, #14
    38e8:	524c5443 	.inst	0x524c5443 ; undefined
    38ec:	314c455f 	cmn	w10, #0x311, lsl #12
    38f0:	4143495f 	.inst	0x4143495f ; undefined
    38f4:	5f454843 	.inst	0x5f454843 ; undefined
    38f8:	20534944 	.inst	0x20534944 ; undefined
    38fc:	3c3c3028 	.inst	0x3c3c3028 ; undefined
    3900:	00293231 	.inst	0x00293231 ; NYI
    3904:	5f6d756e 	sqshl	d14, d11, #45
    3908:	6b636974 	.inst	0x6b636974 ; undefined
    390c:	69735f73 	ldpsw	x19, x23, [x27, #-104]
    3910:	5f65636e 	.inst	0x5f65636e ; undefined
    3914:	746f6f62 	.inst	0x746f6f62 ; undefined
    3918:	53595300 	.inst	0x53595300 ; undefined
    391c:	4d49545f 	.inst	0x4d49545f ; undefined
    3920:	5f535245 	.inst	0x5f535245 ; undefined
    3924:	45534142 	.inst	0x45534142 ; undefined
    3928:	45502820 	.inst	0x45502820 ; undefined
    392c:	425f4952 	.inst	0x425f4952 ; undefined
    3930:	20455341 	.inst	0x20455341 ; undefined
    3934:	7830202b 	ldeorh	w16, w11, [x1]
    3938:	30303033 	adr	x19, 63f3d <stdout_putp+0x6210d>
    393c:	69740029 	ldpsw	x9, x0, [x1, #-96]
    3940:	5f72656d 	.inst	0x5f72656d ; undefined
    3944:	73676572 	.inst	0x73676572 ; undefined
    3948:	7500745f 	.inst	0x7500745f ; undefined
    394c:	36746e69 	tbz	w9, #14, ffffffffffffc718 <stdout_putp+0xffffffffffffa8e8>
    3950:	4f430034 	.inst	0x4f430034 ; undefined
    3954:	5f324552 	.inst	0x5f324552 ; undefined
    3958:	584f424d 	ldr	x13, a21a0 <stdout_putp+0xa0370>
    395c:	44525f33 	.inst	0x44525f33 ; undefined
    3960:	20524c43 	.inst	0x20524c43 ; undefined
    3964:	30347830 	adr	x16, 6c869 <stdout_putp+0x6aa39>
    3968:	30303030 	adr	x16, 63f6d <stdout_putp+0x6213d>
    396c:	53004345 	ubfx	w5, w26, #0, #17
    3970:	524c5443 	.inst	0x524c5443 ; undefined
    3974:	314c455f 	cmn	w10, #0x311, lsl #12
    3978:	5f45455f 	.inst	0x5f45455f ; undefined
    397c:	5454494c 	b.gt	ac2a4 <stdout_putp+0xaa474>
    3980:	2820454c 	stnp	w12, w17, [x10, #-256]
    3984:	323c3c30 	orr	w16, w1, #0xffff0
    3988:	43002935 	.inst	0x43002935 ; undefined
    398c:	3145524f 	adds	w15, w18, #0x154, lsl #12
    3990:	4d49545f 	.inst	0x4d49545f ; undefined
    3994:	465f5245 	.inst	0x465f5245 ; undefined
    3998:	535f5149 	.inst	0x535f5149 ; undefined
    399c:	30204c45 	adr	x5, 44325 <stdout_putp+0x424f5>
    39a0:	00353078 	.inst	0x00353078 ; NYI
    39a4:	45524f43 	.inst	0x45524f43 ; undefined
    39a8:	49465f31 	.inst	0x49465f31 ; undefined
    39ac:	4f535f51 	.inst	0x4f535f51 ; undefined
    39b0:	45435255 	.inst	0x45435255 ; undefined
    39b4:	34783020 	cbz	w0, f3fb8 <stdout_putp+0xf2188>
    39b8:	30303030 	adr	x16, 63fbd <stdout_putp+0x6218d>
    39bc:	00343730 	.inst	0x00343730 ; NYI
    39c0:	45524f43 	.inst	0x45524f43 ; undefined
    39c4:	424d5f30 	.inst	0x424d5f30 ; undefined
    39c8:	5f30584f 	fmls	h15, h2, v0.h[7]
    39cc:	4c434452 	.inst	0x4c434452 ; undefined
    39d0:	78302052 	ldeorh	w16, w18, [x2]
    39d4:	30303034 	adr	x20, 63fd9 <stdout_putp+0x621a9>
    39d8:	30433030 	adr	x16, 89fdd <stdout_putp+0x881ad>
    39dc:	524f4300 	.inst	0x524f4300 ; undefined
    39e0:	4d5f3245 	.inst	0x4d5f3245 ; undefined
    39e4:	32584f42 	.inst	0x32584f42 ; undefined
    39e8:	5445535f 	.inst	0x5445535f ; undefined
    39ec:	34783020 	cbz	w0, f3ff0 <stdout_putp+0xf21c0>
    39f0:	30303030 	adr	x16, 63ff5 <stdout_putp+0x621c5>
    39f4:	00384130 	.inst	0x00384130 ; NYI
    39f8:	45524f43 	.inst	0x45524f43 ; undefined
    39fc:	424d5f30 	.inst	0x424d5f30 ; undefined
    3a00:	5f31584f 	fmls	h15, h2, v1.h[7]
    3a04:	4c434452 	.inst	0x4c434452 ; undefined
    3a08:	78302052 	ldeorh	w16, w18, [x2]
    3a0c:	30303034 	adr	x20, 64011 <stdout_putp+0x621e1>
    3a10:	34433030 	cbz	w16, 8a014 <stdout_putp+0x881e4>
    3a14:	524f4300 	.inst	0x524f4300 ; undefined
    3a18:	4d5f3345 	.inst	0x4d5f3345 ; undefined
    3a1c:	31584f42 	adds	w2, w26, #0x613, lsl #12
    3a20:	5445535f 	.inst	0x5445535f ; undefined
    3a24:	34783020 	cbz	w0, f4028 <stdout_putp+0xf21f8>
    3a28:	30303030 	adr	x16, 6402d <stdout_putp+0x621fd>
    3a2c:	00344230 	.inst	0x00344230 ; NYI
    3a30:	4c544353 	.inst	0x4c544353 ; undefined
    3a34:	4c455f52 	.inst	0x4c455f52 ; undefined
    3a38:	4d4d5f31 	.inst	0x4d4d5f31 ; undefined
    3a3c:	4e455f55 	.inst	0x4e455f55 ; undefined
    3a40:	3c312820 	.inst	0x3c312820 ; undefined
    3a44:	0029303c 	.inst	0x0029303c ; NYI
    3a48:	41434f4c 	.inst	0x41434f4c ; undefined
    3a4c:	49545f4c 	.inst	0x49545f4c ; undefined
    3a50:	5f52454d 	.inst	0x5f52454d ; undefined
    3a54:	4c525443 	.inst	0x4c525443 ; undefined
    3a58:	34783020 	cbz	w0, f405c <stdout_putp+0xf222c>
    3a5c:	30303030 	adr	x16, 64061 <stdout_putp+0x62231>
    3a60:	00343330 	.inst	0x00343330 ; NYI
    3a64:	74756f72 	.inst	0x74756f72 ; undefined
    3a68:	5f676e69 	.inst	0x5f676e69 ; undefined
    3a6c:	65726f63 	fnmls	z3.h, p3/m, z27.h, z18.h
    3a70:	746e6330 	.inst	0x746e6330 ; undefined
    3a74:	6f745f76 	.inst	0x6f745f76 ; undefined
    3a78:	726f635f 	.inst	0x726f635f ; undefined
    3a7c:	72693065 	.inst	0x72693065 ; undefined
    3a80:	69740071 	ldpsw	x17, x0, [x3, #-96]
    3a84:	5f72656d 	.inst	0x5f72656d ; undefined
    3a88:	72746e69 	.inst	0x72746e69 ; undefined
    3a8c:	6e65705f 	uabdl2	v31.4s, v2.8h, v5.8h
    3a90:	676e6964 	.inst	0x676e6964 ; undefined
    3a94:	524f4300 	.inst	0x524f4300 ; undefined
    3a98:	4d5f3345 	.inst	0x4d5f3345 ; undefined
    3a9c:	30584f42 	adr	x2, b4485 <stdout_putp+0xb2655>
    3aa0:	5445535f 	.inst	0x5445535f ; undefined
    3aa4:	34783020 	cbz	w0, f40a8 <stdout_putp+0xf2278>
    3aa8:	30303030 	adr	x16, 640ad <stdout_putp+0x6227d>
    3aac:	00304230 	.inst	0x00304230 ; NYI
    3ab0:	45524f43 	.inst	0x45524f43 ; undefined
    3ab4:	49545f33 	.inst	0x49545f33 ; undefined
    3ab8:	5f52454d 	.inst	0x5f52454d ; undefined
    3abc:	5f515249 	.inst	0x5f515249 ; undefined
    3ac0:	204c4553 	.inst	0x204c4553 ; undefined
    3ac4:	33307830 	.inst	0x33307830 ; undefined
    3ac8:	4d495400 	.inst	0x4d495400 ; undefined
    3acc:	5f335245 	fmls	h5, h18, v3.h[3]
    3ad0:	20515249 	.inst	0x20515249 ; undefined
    3ad4:	38307830 	strb	w16, [x1, x16, lsl #0]
    3ad8:	524f4300 	.inst	0x524f4300 ; undefined
    3adc:	4d5f3245 	.inst	0x4d5f3245 ; undefined
    3ae0:	31584f42 	adds	w2, w26, #0x613, lsl #12
    3ae4:	4344525f 	.inst	0x4344525f ; undefined
    3ae8:	3020524c 	adr	x12, 44531 <stdout_putp+0x42701>
    3aec:	30303478 	adr	x24, 64179 <stdout_putp+0x62349>
    3af0:	45303030 	.inst	0x45303030 ; undefined
    3af4:	616c0034 	.inst	0x616c0034 ; undefined
    3af8:	635f7473 	.inst	0x635f7473 ; undefined
    3afc:	746e756f 	.inst	0x746e756f ; undefined
    3b00:	524f4300 	.inst	0x524f4300 ; undefined
    3b04:	4d5f3145 	.inst	0x4d5f3145 ; undefined
    3b08:	5f584f42 	.inst	0x5f584f42 ; undefined
    3b0c:	43515249 	.inst	0x43515249 ; undefined
    3b10:	204c544e 	.inst	0x204c544e ; undefined
    3b14:	30347830 	adr	x16, 6ca19 <stdout_putp+0x6abe9>
    3b18:	30303030 	adr	x16, 6411d <stdout_putp+0x622ed>
    3b1c:	49003435 	.inst	0x49003435 ; undefined
    3b20:	535f544e 	.inst	0x535f544e ; undefined
    3b24:	475f4352 	.inst	0x475f4352 ; undefined
    3b28:	30205550 	adr	x16, 445d1 <stdout_putp+0x427a1>
    3b2c:	30303078 	adr	x24, 64139 <stdout_putp+0x62309>
    3b30:	30313030 	adr	x16, 66135 <stdout_putp+0x64305>
    3b34:	4f430030 	.inst	0x4f430030 ; undefined
    3b38:	5f314552 	.inst	0x5f314552 ; undefined
    3b3c:	584f424d 	ldr	x13, a2384 <stdout_putp+0xa0554>
    3b40:	45535f30 	.inst	0x45535f30 ; undefined
    3b44:	78302054 	ldeorh	w16, w20, [x2]
    3b48:	30303034 	adr	x20, 6414d <stdout_putp+0x6231d>
    3b4c:	30393030 	adr	x16, 76151 <stdout_putp+0x74321>
    3b50:	4d495400 	.inst	0x4d495400 ; undefined
    3b54:	445f5245 	.inst	0x445f5245 ; undefined
    3b58:	28204742 	stnp	w2, w17, [x26, #-256]
    3b5c:	3c3c2030 	.inst	0x3c3c2030 ; undefined
    3b60:	00293020 	.inst	0x00293020 ; NYI
    3b64:	41525f5f 	.inst	0x41525f5f ; undefined
    3b68:	4f495053 	.inst	0x4f495053 ; undefined
    3b6c:	4f435f53 	.inst	0x4f435f53 ; undefined
    3b70:	4749464e 	.inst	0x4749464e ; undefined
    3b74:	5f5f485f 	.inst	0x5f5f485f ; undefined
    3b78:	59530020 	ldapurh	w0, [x1, #-208]
    3b7c:	4d495453 	.inst	0x4d495453 ; undefined
    3b80:	495f5245 	.inst	0x495f5245 ; undefined
    3b84:	5f52544e 	shl	d14, d2, #18
    3b88:	4b53414d 	sub	w13, w10, w19, lsr #16
    3b8c:	52492820 	.inst	0x52492820 ; undefined
    3b90:	59535f51 	.inst	0x59535f51 ; undefined
    3b94:	49545f53 	.inst	0x49545f53 ; undefined
    3b98:	5f52454d 	.inst	0x5f52454d ; undefined
    3b9c:	4e455f31 	.inst	0x4e455f31 ; undefined
    3ba0:	4f430029 	.inst	0x4f430029 ; undefined
    3ba4:	5f314552 	.inst	0x5f314552 ; undefined
    3ba8:	5f515249 	.inst	0x5f515249 ; undefined
    3bac:	52554f53 	.inst	0x52554f53 ; undefined
    3bb0:	30204543 	adr	x3, 44459 <stdout_putp+0x42629>
    3bb4:	30303478 	adr	x24, 64241 <stdout_putp+0x62411>
    3bb8:	36303030 	tbz	w16, #6, 41bc <stdout_putp+0x238c>
    3bbc:	4f430034 	.inst	0x4f430034 ; undefined
    3bc0:	5f324552 	.inst	0x5f324552 ; undefined
    3bc4:	454d4954 	.inst	0x454d4954 ; undefined
    3bc8:	52495f52 	.inst	0x52495f52 ; undefined
    3bcc:	544e4351 	.inst	0x544e4351 ; undefined
    3bd0:	7830204c 	ldeorh	w16, w12, [x2]
    3bd4:	30303034 	adr	x20, 641d9 <stdout_putp+0x623a9>
    3bd8:	38343030 	ldsetb	w20, w16, [x1]
    3bdc:	544e4900 	b.eq	a04fc <stdout_putp+0x9e6cc>  // b.none
    3be0:	4352535f 	.inst	0x4352535f ; undefined
    3be4:	4f424d5f 	.inst	0x4f424d5f ; undefined
    3be8:	30203158 	adr	x24, 44211 <stdout_putp+0x423e1>
    3bec:	30303078 	adr	x24, 641f9 <stdout_putp+0x623c9>
    3bf0:	32303030 	orr	w16, w1, #0x1fff0000
    3bf4:	4f430030 	.inst	0x4f430030 ; undefined
    3bf8:	545f4552 	.inst	0x545f4552 ; undefined
    3bfc:	52454d49 	.inst	0x52454d49 ; undefined
    3c00:	4552505f 	.inst	0x4552505f ; undefined
    3c04:	4c414353 	.inst	0x4c414353 ; undefined
    3c08:	41565f45 	.inst	0x41565f45 ; undefined
    3c0c:	3028204c 	adr	x12, 54015 <stdout_putp+0x521e5>
    3c10:	41363078 	.inst	0x41363078 ; undefined
    3c14:	41414141 	.inst	0x41414141 ; undefined
    3c18:	49002942 	.inst	0x49002942 ; undefined
    3c1c:	535f544e 	.inst	0x535f544e ; undefined
    3c20:	4d5f4352 	.inst	0x4d5f4352 ; undefined
    3c24:	33584f42 	.inst	0x33584f42 ; undefined
    3c28:	30783020 	adr	x0, f422d <stdout_putp+0xf23fd>
    3c2c:	30303030 	adr	x16, 64231 <stdout_putp+0x62401>
    3c30:	00303830 	.inst	0x00303830 ; NYI
    3c34:	45524f43 	.inst	0x45524f43 ; undefined
    3c38:	424d5f31 	.inst	0x424d5f31 ; undefined
    3c3c:	5f31584f 	fmls	h15, h2, v1.h[7]
    3c40:	20544553 	.inst	0x20544553 ; undefined
    3c44:	30347830 	adr	x16, 6cb49 <stdout_putp+0x6ad19>
    3c48:	30303030 	adr	x16, 6424d <stdout_putp+0x6241d>
    3c4c:	43003439 	.inst	0x43003439 ; undefined
    3c50:	3045524f 	adr	x15, 8e699 <stdout_putp+0x8c869>
    3c54:	4f424d5f 	.inst	0x4f424d5f ; undefined
    3c58:	535f3158 	.inst	0x535f3158 ; undefined
    3c5c:	30205445 	adr	x5, 446e5 <stdout_putp+0x428b5>
    3c60:	30303478 	adr	x24, 642ed <stdout_putp+0x624bd>
    3c64:	38303030 	ldsetb	w16, w16, [x1]
    3c68:	4f430034 	.inst	0x4f430034 ; undefined
    3c6c:	5f314552 	.inst	0x5f314552 ; undefined
    3c70:	584f424d 	ldr	x13, a24b8 <stdout_putp+0xa0688>
    3c74:	44525f32 	.inst	0x44525f32 ; undefined
    3c78:	20524c43 	.inst	0x20524c43 ; undefined
    3c7c:	30347830 	adr	x16, 6cb81 <stdout_putp+0x6ad51>
    3c80:	30303030 	adr	x16, 64285 <stdout_putp+0x62455>
    3c84:	63003844 	.inst	0x63003844 ; undefined
    3c88:	665f7274 	.inst	0x665f7274 ; undefined
    3c8c:	43007172 	.inst	0x43007172 ; undefined
    3c90:	3145524f 	adds	w15, w18, #0x154, lsl #12
    3c94:	4f424d5f 	.inst	0x4f424d5f ; undefined
    3c98:	535f3358 	.inst	0x535f3358 ; undefined
    3c9c:	30205445 	adr	x5, 44725 <stdout_putp+0x428f5>
    3ca0:	30303478 	adr	x24, 6432d <stdout_putp+0x624fd>
    3ca4:	39303030 	strb	w16, [x1, #3084]
    3ca8:	49540043 	.inst	0x49540043 ; undefined
    3cac:	5f52454d 	.inst	0x5f52454d ; undefined
    3cb0:	20474244 	.inst	0x20474244 ; undefined
    3cb4:	3c203128 	.inst	0x3c203128 ; undefined
    3cb8:	2930203c 	stp	w28, w8, [x1, #-128]
    3cbc:	71726900 	subs	w0, w8, #0xc9a, lsl #12
    3cc0:	6e61685f 	fcvtxn2	v31.4s, v2.2d
    3cc4:	72656c64 	.inst	0x72656c64 ; undefined
    3cc8:	67657200 	.inst	0x67657200 ; undefined
    3ccc:	69003436 	stgp	x22, x13, [x1]
    3cd0:	655f7172 	fcmne	p2.h, p4/z, z11.h, z31.h
    3cd4:	65725f6e 	fnmla	z14.h, p7/m, z27.h, z18.h
    3cd8:	6e690067 	uaddl2	v7.4s, v3.8h, v9.8h
    3cdc:	735f7469 	.inst	0x735f7469 ; undefined
    3ce0:	69747379 	ldpsw	x25, x28, [x27, #-96]
    3ce4:	745f6b63 	.inst	0x745f6b63 ; undefined
    3ce8:	72656d69 	.inst	0x72656d69 ; undefined
    3cec:	696e6900 	ldpsw	x0, x26, [x8, #-144]
    3cf0:	6e695f74 	uqrshl	v20.8h, v27.8h, v9.8h
    3cf4:	72726574 	.inst	0x72726574 ; undefined
    3cf8:	73747075 	.inst	0x73747075 ; undefined
    3cfc:	63727300 	.inst	0x63727300 ; undefined
    3d00:	696e692f 	ldpsw	x15, x26, [x9, #-144]
    3d04:	72692f74 	.inst	0x72692f74 ; undefined
    3d08:	00632e71 	.inst	0x00632e71 ; undefined
    3d0c:	62616e65 	.inst	0x62616e65 ; undefined
    3d10:	695f656c 	ldpsw	x12, x25, [x11, #248]
    3d14:	7265746e 	.inst	0x7265746e ; undefined
    3d18:	74707572 	.inst	0x74707572 ; undefined
    3d1c:	72690073 	.inst	0x72690073 ; undefined
    3d20:	6e655f71 	uqrshl	v17.8h, v27.8h, v5.8h
    3d24:	63727300 	.inst	0x63727300 ; undefined
    3d28:	696e692f 	ldpsw	x15, x26, [x9, #-144]
    3d2c:	6f622f74 	.inst	0x6f622f74 ; undefined
    3d30:	532e746f 	.inst	0x532e746f ; undefined
    3d34:	63727300 	.inst	0x63727300 ; undefined
    3d38:	2f6d6d2f 	.inst	0x2f6d6d2f ; undefined
    3d3c:	2e6d656d 	umax	v13.4h, v11.4h, v13.4h
    3d40:	50470053 	adr	x19, 91d4a <stdout_putp+0x8ff1a>
    3d44:	304e454c 	adr	x12, a05ed <stdout_putp+0x9e7bd>
    3d48:	72617500 	.inst	0x72617500 ; undefined
    3d4c:	72775f74 	.inst	0x72775f74 ; undefined
    3d50:	00657469 	.inst	0x00657469 ; undefined
    3d54:	45465047 	.inst	0x45465047 ; undefined
    3d58:	6700304e 	.inst	0x6700304e ; undefined
    3d5c:	5f6f6970 	.inst	0x5f6f6970 ; undefined
    3d60:	73676572 	.inst	0x73676572 ; undefined
    3d64:	7500745f 	.inst	0x7500745f ; undefined
    3d68:	5f747261 	sqdmlsl	s1, h19, v4.h[3]
    3d6c:	64616572 	.inst	0x64616572 ; undefined
    3d70:	63727300 	.inst	0x63727300 ; undefined
    3d74:	7265702f 	.inst	0x7265702f ; undefined
    3d78:	61752f69 	.inst	0x61752f69 ; undefined
    3d7c:	632e7472 	.inst	0x632e7472 ; undefined
    3d80:	46504700 	.inst	0x46504700 ; undefined
    3d84:	344c4553 	cbz	w19, 9c62c <stdout_putp+0x9a7fc>
    3d88:	696e6900 	ldpsw	x0, x26, [x8, #-144]
    3d8c:	61755f74 	.inst	0x61755f74 ; undefined
    3d90:	70007472 	adr	x18, 4c1f <stdout_putp+0x2def>
    3d94:	00637475 	.inst	0x00637475 ; undefined
    3d98:	6f697067 	fcmla	v7.8h, v3.8h, v9.h[1], #270
    3d9c:	53504700 	.inst	0x53504700 ; undefined
    3da0:	00305445 	.inst	0x00305445 ; NYI
    3da4:	45535047 	.inst	0x45535047 ; undefined
    3da8:	47003154 	.inst	0x47003154 ; undefined
    3dac:	45534650 	.inst	0x45534650 ; undefined
    3db0:	4700314c 	.inst	0x4700314c ; undefined
    3db4:	45534650 	.inst	0x45534650 ; undefined
    3db8:	4700324c 	.inst	0x4700324c ; undefined
    3dbc:	45534650 	.inst	0x45534650 ; undefined
    3dc0:	4700334c 	.inst	0x4700334c ; undefined
    3dc4:	45534650 	.inst	0x45534650 ; undefined
    3dc8:	4700354c 	.inst	0x4700354c ; undefined
    3dcc:	4e455250 	.inst	0x4e455250 ; undefined
    3dd0:	50470030 	adr	x16, 91dd6 <stdout_putp+0x8ffa6>
    3dd4:	314e4552 	adds	w18, w10, #0x391, lsl #12
    3dd8:	4c504700 	.inst	0x4c504700 ; undefined
    3ddc:	00305645 	.inst	0x00305645 ; NYI
    3de0:	454c5047 	.inst	0x454c5047 ; undefined
    3de4:	47003156 	.inst	0x47003156 ; undefined
    3de8:	4e454c50 	.inst	0x4e454c50 ; undefined
    3dec:	50470031 	adr	x17, 91df2 <stdout_putp+0x8ffc2>
    3df0:	43445550 	.inst	0x43445550 ; undefined
    3df4:	00304b4c 	.inst	0x00304b4c ; NYI
    3df8:	55505047 	.inst	0x55505047 ; undefined
    3dfc:	4b4c4344 	sub	w4, w26, w12, lsr #16
    3e00:	61640031 	.inst	0x61640031 ; undefined
    3e04:	47006174 	.inst	0x47006174 ; undefined
    3e08:	5f4f4950 	.inst	0x5f4f4950 ; undefined
    3e0c:	45534142 	.inst	0x45534142 ; undefined
    3e10:	45502820 	.inst	0x45502820 ; undefined
    3e14:	425f4952 	.inst	0x425f4952 ; undefined
    3e18:	20455341 	.inst	0x20455341 ; undefined
    3e1c:	7830202b 	ldeorh	w16, w11, [x1]
    3e20:	30323030 	adr	x16, 68425 <stdout_putp+0x665f5>
    3e24:	30303030 	adr	x16, 64429 <stdout_putp+0x625f9>
    3e28:	50470029 	adr	x9, 91e2e <stdout_putp+0x8fffe>
    3e2c:	304e4548 	adr	x8, a06d5 <stdout_putp+0x9e8a5>
    3e30:	48504700 	ldxrh	w0, [x24]
    3e34:	00314e45 	.inst	0x00314e45 ; NYI
    3e38:	55505047 	.inst	0x55505047 ; undefined
    3e3c:	61750044 	.inst	0x61750044 ; undefined
    3e40:	725f7472 	.inst	0x725f7472 ; undefined
    3e44:	5f646165 	.inst	0x5f646165 ; undefined
    3e48:	69617661 	ldpsw	x1, x29, [x19, #-248]
    3e4c:	6c62616c 	ldnp	d12, d24, [x11, #-480]
    3e50:	50470065 	adr	x5, 91e5e <stdout_putp+0x9002e>
    3e54:	4e455241 	.inst	0x4e455241 ; undefined
    3e58:	50470030 	adr	x16, 91e5e <stdout_putp+0x9002e>
    3e5c:	4e455241 	.inst	0x4e455241 ; undefined
    3e60:	50470031 	adr	x17, 91e66 <stdout_putp+0x90036>
    3e64:	314e4546 	adds	w6, w10, #0x391, lsl #12
    3e68:	41504700 	.inst	0x41504700 ; undefined
    3e6c:	314e4546 	adds	w6, w10, #0x391, lsl #12
    3e70:	41504700 	.inst	0x41504700 ; undefined
    3e74:	304e4546 	adr	x6, a071d <stdout_putp+0x9e8ed>
    3e78:	43504700 	.inst	0x43504700 ; undefined
    3e7c:	0030524c 	.inst	0x0030524c ; NYI
    3e80:	4c435047 	.inst	0x4c435047 ; undefined
    3e84:	47003152 	.inst	0x47003152 ; undefined
    3e88:	53444550 	.inst	0x53444550 ; undefined
    3e8c:	50470030 	adr	x16, 91e92 <stdout_putp+0x90062>
    3e90:	31534445 	adds	w5, w2, #0x4d1, lsl #12
    3e94:	6e697500 	uabd	v0.8h, v8.8h, v9.8h
    3e98:	5f003874 	.inst	0x5f003874 ; undefined
    3e9c:	5f72675f 	.inst	0x5f72675f ; undefined
    3ea0:	00706f74 	.inst	0x00706f74 ; undefined
    3ea4:	63747570 	.inst	0x63747570 ; undefined
    3ea8:	75700066 	.inst	0x75700066 ; undefined
    3eac:	00706374 	.inst	0x00706374 ; undefined
    3eb0:	706d756e 	adr	x14, ded5f <stdout_putp+0xdcf2f>
    3eb4:	70667400 	adr	x0, d0d37 <stdout_putp+0xcef07>
    3eb8:	726f665f 	.inst	0x726f665f ; undefined
    3ebc:	0074616d 	.inst	0x0074616d ; undefined
    3ec0:	61326975 	.inst	0x61326975 ; undefined
    3ec4:	73616200 	.inst	0x73616200 ; undefined
    3ec8:	5f5f0065 	.inst	0x5f5f0065 ; undefined
    3ecc:	63756e67 	.inst	0x63756e67 ; undefined
    3ed0:	5f61765f 	sqshl	d31, d18, #33
    3ed4:	7473696c 	.inst	0x7473696c ; undefined
    3ed8:	6f626100 	umlsl2	v0.4s, v8.8h, v2.h[2]
    3edc:	5f007472 	.inst	0x5f007472 ; undefined
    3ee0:	5f72675f 	.inst	0x5f72675f ; undefined
    3ee4:	7366666f 	.inst	0x7366666f ; undefined
    3ee8:	64747300 	.inst	0x64747300 ; undefined
    3eec:	5f74756f 	sqshl	d15, d11, #52
    3ef0:	66747570 	.inst	0x66747570 ; undefined
    3ef4:	64747300 	.inst	0x64747300 ; undefined
    3ef8:	5f74756f 	sqshl	d15, d11, #52
    3efc:	70747570 	adr	x16, ecdab <stdout_putp+0xeaf7b>
    3f00:	67696400 	.inst	0x67696400 ; undefined
    3f04:	73007469 	.inst	0x73007469 ; undefined
    3f08:	752f6372 	.inst	0x752f6372 ; undefined
    3f0c:	736c6974 	.inst	0x736c6974 ; undefined
    3f10:	6972702f 	ldpsw	x15, x28, [x1, #-112]
    3f14:	2e66746e 	uabd	v14.4h, v3.4h, v6.4h
    3f18:	75700063 	.inst	0x75700063 ; undefined
    3f1c:	77686374 	.inst	0x77686374 ; undefined
    3f20:	765f5f00 	.inst	0x765f5f00 ; undefined
    3f24:	666f5f72 	.inst	0x666f5f72 ; undefined
    3f28:	5f007366 	.inst	0x5f007366 ; undefined
    3f2c:	5f72765f 	sqshl	d31, d18, #50
    3f30:	00706f74 	.inst	0x00706f74 ; undefined
    3f34:	74735f5f 	.inst	0x74735f5f ; undefined
    3f38:	006b6361 	.inst	0x006b6361 ; undefined
    3f3c:	74696e69 	.inst	0x74696e69 ; undefined
    3f40:	6972705f 	ldpsw	xzr, x28, [x2, #-112]
    3f44:	0066746e 	.inst	0x0066746e ; undefined
    3f48:	5f746567 	.inst	0x5f746567 ; undefined
    3f4c:	64006c65 	.inst	0x64006c65 ; undefined
    3f50:	5f706d75 	.inst	0x5f706d75 ; undefined
    3f54:	73676572 	.inst	0x73676572 ; undefined
    3f58:	74656700 	.inst	0x74656700 ; undefined
    3f5c:	726f635f 	.inst	0x726f635f ; undefined
    3f60:	64695f65 	.inst	0x64695f65 ; undefined
    3f64:	696d6d00 	ldpsw	x0, x27, [x8, #-152]
    3f68:	72775f6f 	.inst	0x72775f6f ; undefined
    3f6c:	00657469 	.inst	0x00657469 ; undefined
    3f70:	616c6564 	.inst	0x616c6564 ; undefined
    3f74:	6d6d0079 	ldp	d25, d0, [x3, #-304]
    3f78:	725f6f69 	.inst	0x725f6f69 ; undefined
    3f7c:	00646165 	.inst	0x00646165 ; undefined
    3f80:	2f637273 	fcmla	v19.4h, v19.4h, v3.h[1], #270
    3f84:	6c697475 	ldnp	d21, d29, [x3, #-368]
    3f88:	74752f73 	.inst	0x74752f73 ; undefined
    3f8c:	2e736c69 	umin	v9.4h, v3.4h, v19.4h
    3f90:	79630063 	ldrh	w3, [x3, #4480]
    3f94:	73656c63 	.inst	0x73656c63 ; undefined
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
{
   0:	3a434347 	ccmn	w26, w3, #0x7, mi  // mi = first
    cntv_ctl = 0;
   4:	4e472820 	trn1	v0.8h, v1.8h, v7.8h
	asm volatile ("msr cntv_ctl_el0, %0" :: "r" (cntv_ctl));
   8:	6f542055 	umlal2	v21.4s, v2.8h, v4.h[1]
   c:	68636c6f 	.inst	0x68636c6f ; undefined
}
  10:	206e6961 	.inst	0x206e6961 ; undefined
  14:	20726f66 	.inst	0x20726f66 ; undefined
  18:	20656874 	.inst	0x20656874 ; undefined
    {
  1c:	72702d41 	.inst	0x72702d41 ; undefined
  20:	6c69666f 	ldnp	d15, d25, [x19, #-368]
  24:	72412065 	.inst	0x72412065 ; undefined
    va_start(va,fmt);
  28:	74696863 	.inst	0x74696863 ; undefined
  2c:	75746365 	.inst	0x75746365 ; undefined
  30:	38206572 	.inst	0x38206572 ; undefined
  34:	322d332e 	orr	w14, w25, #0xfff80000
  38:	2e393130 	usubw	v16.8h, v9.8h, v25.8b
  3c:	28203330 	stnp	w16, w12, [x25, #-256]
  40:	2d6d7261 	ldp	s1, s28, [x19, #-152]
  44:	2d6c6572 	ldp	s18, s25, [x11, #-160]
  48:	36332e38 	tbz	w24, #6, 660c <stdout_putp+0x47dc>
    tfp_format(&s,putcp,fmt,va);
  4c:	38202929 	.inst	0x38202929 ; undefined
  50:	302e332e 	adr	x14, 5c6b5 <stdout_putp+0x5a885>
	...

Disassembly of section .debug_frame:

0000000000000000 <.debug_frame>:
{
   0:	0000000c 	.inst	0x0000000c ; undefined
    cntv_ctl = 0;
   4:	ffffffff 	.inst	0xffffffff ; undefined
	asm volatile ("msr cntv_ctl_el0, %0" :: "r" (cntv_ctl));
   8:	78040001 	sturh	w1, [x0, #64]
   c:	001f0c1e 	.inst	0x001f0c1e ; undefined
}
  10:	00000024 	.inst	0x00000024 ; undefined
  14:	00000000 	.inst	0x00000000 ; undefined
  18:	00000e08 	.inst	0x00000e08 ; undefined
    {
  1c:	00000000 	.inst	0x00000000 ; undefined
  20:	0000006c 	.inst	0x0000006c ; undefined
  24:	00000000 	.inst	0x00000000 ; undefined
    va_start(va,fmt);
  28:	9d200e41 	.inst	0x9d200e41 ; undefined
  2c:	42039e04 	.inst	0x42039e04 ; undefined
  30:	00000293 	.inst	0x00000293 ; undefined
  34:	00000000 	.inst	0x00000000 ; undefined
  38:	0000000c 	.inst	0x0000000c ; undefined
  3c:	ffffffff 	.inst	0xffffffff ; undefined
  40:	78040001 	sturh	w1, [x0, #64]
  44:	001f0c1e 	.inst	0x001f0c1e ; undefined
  48:	00000024 	.inst	0x00000024 ; undefined
    tfp_format(&s,putcp,fmt,va);
  4c:	00000038 	.inst	0x00000038 ; undefined
  50:	00000e74 	.inst	0x00000e74 ; undefined
  54:	00000000 	.inst	0x00000000 ; undefined
  58:	00000024 	.inst	0x00000024 ; undefined
  5c:	00000000 	.inst	0x00000000 ; undefined
  60:	9d100e41 	.inst	0x9d100e41 ; undefined
  64:	47019e02 	.inst	0x47019e02 ; undefined
  68:	000eddde 	.inst	0x000eddde ; undefined
  6c:	00000000 	.inst	0x00000000 ; undefined
  70:	00000024 	.inst	0x00000024 ; undefined
  74:	00000038 	.inst	0x00000038 ; undefined
  78:	00000e98 	.inst	0x00000e98 ; undefined
  7c:	00000000 	.inst	0x00000000 ; undefined
  80:	00000024 	.inst	0x00000024 ; undefined
    putcp(&s,0);
  84:	00000000 	.inst	0x00000000 ; undefined
  88:	9d200e41 	.inst	0x9d200e41 ; undefined
  8c:	47039e04 	.inst	0x47039e04 ; undefined
    }
  90:	000eddde 	.inst	0x000eddde ; undefined
  94:	00000000 	.inst	0x00000000 ; undefined
  98:	0000001c 	.inst	0x0000001c ; undefined
    vtable_entry    irq_cur_el_sp0
  9c:	00000038 	.inst	0x00000038 ; undefined
  a0:	00000ebc 	.inst	0x00000ebc ; undefined
  a4:	00000000 	.inst	0x00000000 ; undefined
  a8:	00000020 	.inst	0x00000020 ; undefined
  ac:	00000000 	.inst	0x00000000 ; undefined
  b0:	46100e41 	.inst	0x46100e41 ; undefined
  b4:	0000000e 	.inst	0x0000000e ; undefined
  b8:	0000001c 	.inst	0x0000001c ; undefined
  bc:	00000038 	.inst	0x00000038 ; undefined
	...
  c8:	0000001c 	.inst	0x0000001c ; undefined
  cc:	00000000 	.inst	0x00000000 ; undefined
  d0:	45100e41 	.inst	0x45100e41 ; undefined
  d4:	0000000e 	.inst	0x0000000e ; undefined
  d8:	0000001c 	.inst	0x0000001c ; undefined
  dc:	00000038 	.inst	0x00000038 ; undefined
	...
  e8:	00000018 	.inst	0x00000018 ; undefined
  ec:	00000000 	.inst	0x00000000 ; undefined
  f0:	44100e41 	.inst	0x44100e41 ; undefined
  f4:	0000000e 	.inst	0x0000000e ; undefined
  f8:	0000001c 	.inst	0x0000001c ; undefined
  fc:	00000038 	.inst	0x00000038 ; undefined
	...
    vtable_entry    fiq_cur_el_sp0
 108:	00000018 	.inst	0x00000018 ; undefined
 10c:	00000000 	.inst	0x00000000 ; undefined
 110:	44100e41 	.inst	0x44100e41 ; undefined
 114:	0000000e 	.inst	0x0000000e ; undefined
 118:	0000001c 	.inst	0x0000001c ; undefined
 11c:	00000038 	.inst	0x00000038 ; undefined
 120:	00000edc 	.inst	0x00000edc ; undefined
 124:	00000000 	.inst	0x00000000 ; undefined
 128:	0000001c 	.inst	0x0000001c ; undefined
 12c:	00000000 	.inst	0x00000000 ; undefined
 130:	45100e41 	.inst	0x45100e41 ; undefined
 134:	0000000e 	.inst	0x0000000e ; undefined
 138:	0000001c 	.inst	0x0000001c ; undefined
 13c:	00000038 	.inst	0x00000038 ; undefined
 140:	00000ef8 	.inst	0x00000ef8 ; undefined
 144:	00000000 	.inst	0x00000000 ; undefined
 148:	00000018 	.inst	0x00000018 ; undefined
 14c:	00000000 	.inst	0x00000000 ; undefined
 150:	44100e41 	.inst	0x44100e41 ; undefined
 154:	0000000e 	.inst	0x0000000e ; undefined
 158:	00000024 	.inst	0x00000024 ; undefined
 15c:	00000038 	.inst	0x00000038 ; undefined
 160:	00000f10 	.inst	0x00000f10 ; undefined
 164:	00000000 	.inst	0x00000000 ; undefined
 168:	00000054 	.inst	0x00000054 ; undefined
 16c:	00000000 	.inst	0x00000000 ; undefined
 170:	9d100e41 	.inst	0x9d100e41 ; undefined
 174:	53019e02 	.inst	0x53019e02 ; undefined
 178:	000eddde 	.inst	0x000eddde ; undefined
 17c:	00000000 	.inst	0x00000000 ; undefined
    vtable_entry    serror_cur_el_sp0
 180:	00000024 	.inst	0x00000024 ; undefined
 184:	00000038 	.inst	0x00000038 ; undefined
 188:	00000f64 	.inst	0x00000f64 ; undefined
 18c:	00000000 	.inst	0x00000000 ; undefined
 190:	000000b0 	.inst	0x000000b0 ; undefined
 194:	00000000 	.inst	0x00000000 ; undefined
 198:	9d100e41 	.inst	0x9d100e41 ; undefined
 19c:	6a019e02 	.inst	0x6a019e02 ; undefined
 1a0:	000eddde 	.inst	0x000eddde ; undefined
 1a4:	00000000 	.inst	0x00000000 ; undefined
 1a8:	00000024 	.inst	0x00000024 ; undefined
 1ac:	00000038 	.inst	0x00000038 ; undefined
 1b0:	00001014 	.inst	0x00001014 ; undefined
 1b4:	00000000 	.inst	0x00000000 ; undefined
 1b8:	0000002c 	.inst	0x0000002c ; undefined
 1bc:	00000000 	.inst	0x00000000 ; undefined
 1c0:	9d200e41 	.inst	0x9d200e41 ; undefined
 1c4:	49039e04 	.inst	0x49039e04 ; undefined
 1c8:	000eddde 	.inst	0x000eddde ; undefined
 1cc:	00000000 	.inst	0x00000000 ; undefined
 1d0:	0000000c 	.inst	0x0000000c ; undefined
 1d4:	ffffffff 	.inst	0xffffffff ; undefined
 1d8:	78040001 	sturh	w1, [x0, #64]
 1dc:	001f0c1e 	.inst	0x001f0c1e ; undefined
 1e0:	00000024 	.inst	0x00000024 ; undefined
 1e4:	000001d0 	.inst	0x000001d0 ; undefined
 1e8:	00001040 	.inst	0x00001040 ; undefined
 1ec:	00000000 	.inst	0x00000000 ; undefined
 1f0:	0000001c 	.inst	0x0000001c ; undefined
 1f4:	00000000 	.inst	0x00000000 ; undefined
 1f8:	9d200e41 	.inst	0x9d200e41 ; undefined
 1fc:	45039e04 	.inst	0x45039e04 ; undefined
    vtable_entry    sync_cur_el_spx
 200:	000eddde 	.inst	0x000eddde ; undefined
 204:	00000000 	.inst	0x00000000 ; undefined
 208:	0000001c 	.inst	0x0000001c ; undefined
 20c:	000001d0 	.inst	0x000001d0 ; undefined
 210:	0000105c 	.inst	0x0000105c ; undefined
 214:	00000000 	.inst	0x00000000 ; undefined
 218:	0000002c 	.inst	0x0000002c ; undefined
 21c:	00000000 	.inst	0x00000000 ; undefined
 220:	49200e41 	.inst	0x49200e41 ; undefined
 224:	0000000e 	.inst	0x0000000e ; undefined
 228:	00000024 	.inst	0x00000024 ; undefined
 22c:	000001d0 	.inst	0x000001d0 ; undefined
 230:	00001088 	.inst	0x00001088 ; undefined
 234:	00000000 	.inst	0x00000000 ; undefined
 238:	0000002c 	.inst	0x0000002c ; undefined
 23c:	00000000 	.inst	0x00000000 ; undefined
 240:	9d200e41 	.inst	0x9d200e41 ; undefined
 244:	49039e04 	.inst	0x49039e04 ; undefined
 248:	000eddde 	.inst	0x000eddde ; undefined
 24c:	00000000 	.inst	0x00000000 ; undefined
 250:	00000024 	.inst	0x00000024 ; undefined
 254:	000001d0 	.inst	0x000001d0 ; undefined
 258:	000010b4 	.inst	0x000010b4 ; undefined
 25c:	00000000 	.inst	0x00000000 ; undefined
 260:	00000040 	.inst	0x00000040 ; undefined
 264:	00000000 	.inst	0x00000000 ; undefined
 268:	9d200e41 	.inst	0x9d200e41 ; undefined
 26c:	4e039e04 	.inst	0x4e039e04 ; undefined
 270:	000eddde 	.inst	0x000eddde ; undefined
 274:	00000000 	.inst	0x00000000 ; undefined
 278:	0000000c 	.inst	0x0000000c ; undefined
 27c:	ffffffff 	.inst	0xffffffff ; undefined
    vtable_entry    irq_cur_el_spx
 280:	78040001 	sturh	w1, [x0, #64]
 284:	001f0c1e 	.inst	0x001f0c1e ; undefined
 288:	00000024 	.inst	0x00000024 ; undefined
 28c:	00000278 	.inst	0x00000278 ; undefined
 290:	000010f4 	.inst	0x000010f4 ; undefined
 294:	00000000 	.inst	0x00000000 ; undefined
 298:	000000dc 	.inst	0x000000dc ; undefined
 29c:	00000000 	.inst	0x00000000 ; undefined
 2a0:	9d100e41 	.inst	0x9d100e41 ; undefined
 2a4:	75019e02 	.inst	0x75019e02 ; undefined
 2a8:	000eddde 	.inst	0x000eddde ; undefined
 2ac:	00000000 	.inst	0x00000000 ; undefined
 2b0:	00000014 	.inst	0x00000014 ; undefined
 2b4:	00000278 	.inst	0x00000278 ; undefined
 2b8:	000011d0 	.inst	0x000011d0 ; undefined
 2bc:	00000000 	.inst	0x00000000 ; undefined
 2c0:	00000020 	.inst	0x00000020 ; undefined
 2c4:	00000000 	.inst	0x00000000 ; undefined
 2c8:	0000001c 	.inst	0x0000001c ; undefined
 2cc:	00000278 	.inst	0x00000278 ; undefined
 2d0:	000011f0 	.inst	0x000011f0 ; undefined
 2d4:	00000000 	.inst	0x00000000 ; undefined
 2d8:	00000024 	.inst	0x00000024 ; undefined
 2dc:	00000000 	.inst	0x00000000 ; undefined
 2e0:	47100e41 	.inst	0x47100e41 ; undefined
 2e4:	0000000e 	.inst	0x0000000e ; undefined
 2e8:	0000001c 	.inst	0x0000001c ; undefined
 2ec:	00000278 	.inst	0x00000278 ; undefined
 2f0:	00001214 	.inst	0x00001214 ; undefined
 2f4:	00000000 	.inst	0x00000000 ; undefined
 2f8:	00000028 	.inst	0x00000028 ; undefined
 2fc:	00000000 	.inst	0x00000000 ; undefined
    vtable_entry    fiq_cur_el_spx
 300:	48100e41 	stxrh	w16, w1, [x18]
 304:	0000000e 	.inst	0x0000000e ; undefined
 308:	00000024 	.inst	0x00000024 ; undefined
 30c:	00000278 	.inst	0x00000278 ; undefined
 310:	0000123c 	.inst	0x0000123c ; undefined
 314:	00000000 	.inst	0x00000000 ; undefined
 318:	00000024 	.inst	0x00000024 ; undefined
 31c:	00000000 	.inst	0x00000000 ; undefined
 320:	9d200e41 	.inst	0x9d200e41 ; undefined
 324:	47039e04 	.inst	0x47039e04 ; undefined
 328:	000eddde 	.inst	0x000eddde ; undefined
 32c:	00000000 	.inst	0x00000000 ; undefined
 330:	0000000c 	.inst	0x0000000c ; undefined
 334:	ffffffff 	.inst	0xffffffff ; undefined
 338:	78040001 	sturh	w1, [x0, #64]
 33c:	001f0c1e 	.inst	0x001f0c1e ; undefined
 340:	0000001c 	.inst	0x0000001c ; undefined
 344:	00000330 	.inst	0x00000330 ; undefined
 348:	00001260 	.inst	0x00001260 ; undefined
 34c:	00000000 	.inst	0x00000000 ; undefined
 350:	00000128 	.inst	0x00000128 ; undefined
 354:	00000000 	.inst	0x00000000 ; undefined
 358:	02300e41 	.inst	0x02300e41 ; undefined
 35c:	00000e48 	.inst	0x00000e48 ; undefined
 360:	00000024 	.inst	0x00000024 ; undefined
 364:	00000330 	.inst	0x00000330 ; undefined
 368:	00001388 	.inst	0x00001388 ; undefined
 36c:	00000000 	.inst	0x00000000 ; undefined
 370:	0000005c 	.inst	0x0000005c ; undefined
 374:	00000000 	.inst	0x00000000 ; undefined
 378:	9d200e41 	.inst	0x9d200e41 ; undefined
 37c:	55039e04 	.inst	0x55039e04 ; undefined
    vtable_entry    serror_cur_el_spx
 380:	000eddde 	.inst	0x000eddde ; undefined
 384:	00000000 	.inst	0x00000000 ; undefined
 388:	0000001c 	.inst	0x0000001c ; undefined
 38c:	00000330 	.inst	0x00000330 ; undefined
 390:	000013e4 	.inst	0x000013e4 ; undefined
 394:	00000000 	.inst	0x00000000 ; undefined
 398:	00000080 	.inst	0x00000080 ; undefined
 39c:	00000000 	.inst	0x00000000 ; undefined
 3a0:	5e100e41 	.inst	0x5e100e41 ; undefined
 3a4:	0000000e 	.inst	0x0000000e ; undefined
 3a8:	00000024 	.inst	0x00000024 ; undefined
 3ac:	00000330 	.inst	0x00000330 ; undefined
 3b0:	00001464 	.inst	0x00001464 ; undefined
 3b4:	00000000 	.inst	0x00000000 ; undefined
 3b8:	000000ac 	.inst	0x000000ac ; undefined
 3bc:	00000000 	.inst	0x00000000 ; undefined
 3c0:	9d400e41 	.inst	0x9d400e41 ; undefined
 3c4:	69079e08 	stgp	x8, x7, [x16, #240]
 3c8:	000eddde 	.inst	0x000eddde ; undefined
 3cc:	00000000 	.inst	0x00000000 ; undefined
 3d0:	00000024 	.inst	0x00000024 ; undefined
 3d4:	00000330 	.inst	0x00000330 ; undefined
 3d8:	00001510 	.inst	0x00001510 ; undefined
 3dc:	00000000 	.inst	0x00000000 ; undefined
 3e0:	000000dc 	.inst	0x000000dc ; undefined
 3e4:	00000000 	.inst	0x00000000 ; undefined
 3e8:	9d400e41 	.inst	0x9d400e41 ; undefined
 3ec:	75079e08 	.inst	0x75079e08 ; undefined
 3f0:	000eddde 	.inst	0x000eddde ; undefined
 3f4:	00000000 	.inst	0x00000000 ; undefined
 3f8:	0000002c 	.inst	0x0000002c ; undefined
 3fc:	00000330 	.inst	0x00000330 ; undefined
    vtable_entry    sync_lower_el_a64
 400:	000015ec 	.inst	0x000015ec ; undefined
 404:	00000000 	.inst	0x00000000 ; undefined
 408:	00000420 	.inst	0x00000420 ; undefined
 40c:	00000000 	.inst	0x00000000 ; undefined
 410:	9d600e41 	.inst	0x9d600e41 ; undefined
 414:	420b9e0c 	.inst	0x420b9e0c ; undefined
 418:	04030a93 	subr	z19.b, p2/m, z19.b, z20.b
 41c:	d3ddde01 	.inst	0xd3ddde01 ; undefined
 420:	0000000e 	.inst	0x0000000e ; undefined
 424:	00000000 	.inst	0x00000000 ; undefined
 428:	0000001c 	.inst	0x0000001c ; undefined
 42c:	00000330 	.inst	0x00000330 ; undefined
 430:	00001a0c 	.inst	0x00001a0c ; undefined
 434:	00000000 	.inst	0x00000000 ; undefined
 438:	00000038 	.inst	0x00000038 ; undefined
 43c:	00000000 	.inst	0x00000000 ; undefined
 440:	4c100e41 	.inst	0x4c100e41 ; undefined
 444:	0000000e 	.inst	0x0000000e ; undefined
 448:	00000024 	.inst	0x00000024 ; undefined
 44c:	00000330 	.inst	0x00000330 ; undefined
 450:	00001a44 	.inst	0x00001a44 ; undefined
 454:	00000000 	.inst	0x00000000 ; undefined
 458:	000000a0 	.inst	0x000000a0 ; undefined
 45c:	00000000 	.inst	0x00000000 ; undefined
 460:	01a00e41 	.inst	0x01a00e41 ; undefined
 464:	139e149d 	extr	w29, w4, w30, #5
 468:	0eddde66 	.inst	0x0eddde66 ; undefined
 46c:	00000000 	.inst	0x00000000 ; undefined
 470:	0000001c 	.inst	0x0000001c ; undefined
 474:	00000330 	.inst	0x00000330 ; undefined
	...
    vtable_entry    irq_lower_el_a64
 480:	00000034 	.inst	0x00000034 ; undefined
 484:	00000000 	.inst	0x00000000 ; undefined
 488:	4b100e41 	sub	w1, w18, w16, lsl #3
 48c:	0000000e 	.inst	0x0000000e ; undefined
 490:	00000024 	.inst	0x00000024 ; undefined
 494:	00000330 	.inst	0x00000330 ; undefined
	...
 4a0:	0000009c 	.inst	0x0000009c ; undefined
 4a4:	00000000 	.inst	0x00000000 ; undefined
 4a8:	01900e41 	.inst	0x01900e41 ; undefined
 4ac:	119e129d 	.inst	0x119e129d ; undefined
 4b0:	0eddde65 	.inst	0x0eddde65 ; undefined
 4b4:	00000000 	.inst	0x00000000 ; undefined
 4b8:	0000000c 	.inst	0x0000000c ; undefined
 4bc:	ffffffff 	.inst	0xffffffff ; undefined
 4c0:	78040001 	sturh	w1, [x0, #64]
 4c4:	001f0c1e 	.inst	0x001f0c1e ; undefined
 4c8:	0000001c 	.inst	0x0000001c ; undefined
 4cc:	000004b8 	.inst	0x000004b8 ; undefined
 4d0:	00001ae4 	.inst	0x00001ae4 ; undefined
 4d4:	00000000 	.inst	0x00000000 ; undefined
 4d8:	00000020 	.inst	0x00000020 ; undefined
 4dc:	00000000 	.inst	0x00000000 ; undefined
 4e0:	46100e41 	.inst	0x46100e41 ; undefined
 4e4:	0000000e 	.inst	0x0000000e ; undefined
 4e8:	0000001c 	.inst	0x0000001c ; undefined
 4ec:	000004b8 	.inst	0x000004b8 ; undefined
 4f0:	00001b04 	.inst	0x00001b04 ; undefined
 4f4:	00000000 	.inst	0x00000000 ; undefined
 4f8:	0000001c 	.inst	0x0000001c ; undefined
 4fc:	00000000 	.inst	0x00000000 ; undefined
    vtable_entry    fiq_lower_el_a64
 500:	45100e41 	.inst	0x45100e41 ; undefined
 504:	0000000e 	.inst	0x0000000e ; undefined
 508:	0000001c 	.inst	0x0000001c ; undefined
 50c:	000004b8 	.inst	0x000004b8 ; undefined
 510:	00001b20 	.inst	0x00001b20 ; undefined
 514:	00000000 	.inst	0x00000000 ; undefined
 518:	0000001c 	.inst	0x0000001c ; undefined
 51c:	00000000 	.inst	0x00000000 ; undefined
 520:	45100e41 	.inst	0x45100e41 ; undefined
 524:	0000000e 	.inst	0x0000000e ; undefined
 528:	0000001c 	.inst	0x0000001c ; undefined
 52c:	000004b8 	.inst	0x000004b8 ; undefined
 530:	00001b3c 	.inst	0x00001b3c ; undefined
 534:	00000000 	.inst	0x00000000 ; undefined
 538:	00000028 	.inst	0x00000028 ; undefined
 53c:	00000000 	.inst	0x00000000 ; undefined
 540:	48100e41 	stxrh	w16, w1, [x18]
 544:	0000000e 	.inst	0x0000000e ; undefined
 548:	0000001c 	.inst	0x0000001c ; undefined
 54c:	000004b8 	.inst	0x000004b8 ; undefined
 550:	00001b64 	.inst	0x00001b64 ; undefined
 554:	00000000 	.inst	0x00000000 ; undefined
 558:	00000018 	.inst	0x00000018 ; undefined
 55c:	00000000 	.inst	0x00000000 ; undefined
 560:	44100e41 	.inst	0x44100e41 ; undefined
 564:	0000000e 	.inst	0x0000000e ; undefined
 568:	00000024 	.inst	0x00000024 ; undefined
 56c:	000004b8 	.inst	0x000004b8 ; undefined
 570:	00001b7c 	.inst	0x00001b7c ; undefined
 574:	00000000 	.inst	0x00000000 ; undefined
 578:	00000198 	.inst	0x00000198 ; undefined
 57c:	00000000 	.inst	0x00000000 ; undefined
    vtable_entry    serror_lower_el_a64
 580:	02e00e41 	.inst	0x02e00e41 ; undefined
 584:	2b9e2c9d 	adds	w29, w4, w30, asr #11
 588:	ddde6402 	.inst	0xddde6402 ; undefined
 58c:	0000000e 	.inst	0x0000000e ; undefined

Disassembly of section .bss:

0000000000001df8 <systimer>:
	...

Disassembly of section .bss.stdout_putf:

0000000000001e28 <stdout_putf>:
	...

Disassembly of section .bss.stdout_putp:

0000000000001e30 <stdout_putp>:
	...

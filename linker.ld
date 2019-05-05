ENTRY(_boot_entry)
SECTIONS{
    .text : 
    {
        KEEP(*(.text.boot))
        *(.text)
    }
    __rodata_start = .;
    .rodata :
    {
        *(.rodata)
    }
    __rodata_end = .;
    __data_start = .;
    .data :
    {
        *(.data)
    }
    __data_end = .;
    . = ALIGN(0x8);
    __bss_start = .;
    .bss :
    {
        *(.bss)
    }
    __bss_end = .;
}

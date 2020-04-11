#include "uart.h"
#include "printf.h"
#include "utils.h"
#include <irq.h>

void kernel_main()
{
    init_uart();
    init_printf(0, putc);
    printf("Core %d up at Exception level %d\n", get_core_id(), get_el());

    init_interrupts();
    while(1){
        if(uart_read_available()){
            uart_write('\n');
            uart_write(uart_read());
        }
    }

}

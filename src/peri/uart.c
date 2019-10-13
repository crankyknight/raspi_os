#include "uart.h"
#include "gpio.h"
#include "utils.h"

reg32* AUX_ENABLES = (reg32*)(AUX_PERI_BASE + 0x4);
aux_mini_uart_regs_t* mini_uart = (aux_mini_uart_regs_t*) MINI_UART_BASE;
gpio_regs_t* gpio = (gpio_regs_t*) GPIO_BASE;

void uart_init(){
    /*Disable mini uart */
    *AUX_ENABLES = 0;
    /*Enable GPIO alternative fn as mini uart with no PD/PU*/
    gpio->GPFSEL2 = (0x010 << 12) | (0x010 << 15);
    gpio->GPPUD = 0;
    delay(150);
    gpio->GPPUDCLK0 = (1 << 14) | (1 << 15); 
    delay(150);
    gpio->GPPUDCLK0 = 0; 
    /*Counfigure uart */
    /*Disable interrupts */
    mini_uart->AUX_MU_IER_REG = mini_uart->AUX_MU_IER_REG & ~(uint32)0x3;
    /*Clear FIFOs */
    mini_uart->AUX_MU_IIR_REG = 0x3 << 1; 
    /*Set baud rate to 115200 */
    mini_uart->AUX_MU_BAUD_REG = 271;
    *(reg32*)0x3f215068 = 271;
    /*Enable mini uart */
    *AUX_ENABLES = 1;
}

uint8 uart_read_available(){
    return mini_uart->AUX_MU_LSR_REG & 0x1;
}

uint8 uart_read(){
    uint8 data = mini_uart->AUX_MU_IO_REG & 0xFF;
    return data;
}

void uart_write(uint8 data){
    mini_uart->AUX_MU_IO_REG = data;
}

void putc(char *p, char data){
    uart_write(data);
}

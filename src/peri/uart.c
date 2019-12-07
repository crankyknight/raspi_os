#include "config.h"
#include "uart.h"
#include "gpio.h"
#include "utils.h"

reg32* AUX_ENABLES = (reg32*)(AUX_PERI_BASE + 0x4);
aux_mini_uart_regs_t* mini_uart = (aux_mini_uart_regs_t*) MINI_UART_BASE;
gpio_regs_t* gpio = (gpio_regs_t*) GPIO_BASE;

void init_uart(){
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
    /*Set baud rate */
    /* Note : From BCM2835 ARM peripherals Manual :
     * Baudrate = sys_timer_freq/(8*(baudrate_reg + 1))
     */
    mini_uart->AUX_MU_BAUD_REG = (int)((SYS_TIMER_FREQ_HZ)/(8*UART_BAUDRATE)) - 1;
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

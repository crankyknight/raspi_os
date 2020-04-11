#ifndef __RASPIOS_CONFIG_H__
#define __RASPIOS_CONFIG_H__

#define SYS_TIMER_FREQ_HZ      (250 * 1000 * 1000)
#define XTAL_FREQ_HZ           (192 * 100 * 1000)
#define TICK_FREQ_MS           (100)
#define UART_BAUDRATE          (115200)

#define ENABLE_TIMER_IRQ        1

/*Debug configs */
#define TIMER_DBG               (1 << 0)

#define DBG_CONFIG              (TIMER_DBG)

#define RASPIOS_DBG(_dbg_flag, ...)\
    do{ \
        if(DBG_CONFIG & _dbg_flag)\
            printf(__VA_ARGS__);\
    }while(0)

#endif /* __RASPIOS_CONFIG_H__ */

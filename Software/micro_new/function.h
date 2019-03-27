// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef XC_HEADER_TEMPLATE_H
#define	XC_HEADER_TEMPLATE_H

#include <xc.h> // include processor files - each processor file is guarded.  
#include "stdint.h"

//#define TEST

/***************  define pin table from here  ******************/
// cme6005 data port define  BPC_DATA
#define CME_DATA_PORT PORTCbits.RC1
#define CME_DATA_TRI TRISCbits.TRISC1
#define CME_DATA_IOC IOCCPbits.IOCCP1
#define CME_DATA_WPU WPUCbits.WPUC1
#define CME_DATA_IOC_INT IOCCFbits.IOCCF1

// switch port define Syn
#define SWITCH_PORT PORTCbits.RC5
#define SWITCH_TRI TRISCbits.TRISC5
#define SWITCH_WPU WPUCbits.WPUC5
#define BPC_ON PORTCbits.RC2          // PON : LOW active

// output display port define
#define PIC_DATA PORTBbits.RB5
#define PIC_SHCP PORTBbits.RB0
#define PIC_STCP PORTBbits.RB1
#define PIC_OE PORTBbits.RB3

// define light controll
#define Light_on PORTAbits.RA0

// define RTC chip port
#define PIC_INT PORTCbits.RC0
#define PIC_INT_TRI TRISCbits.TRISC0
#define PIC_INT_WPU WPUCbits.WPUC0
#define PIC_SCL PORTCbits.RC3
#define PIC_SDA PORTCbits.RC4
#define CLKOUT PORTAbits.RA7        // EXTERN CLK IN

/***************  define pin table  end  ******************/

typedef uint8_t u8;
typedef int8_t s8;
typedef uint16_t u16;
typedef int16_t s16;

typedef enum{
    FALSE = 0,
    TRUE = 1,
}BOOL;

enum{
    BPC_PWR_ON = 0,
    BPC_PWR_OFF = 1,
    
    PIN_LOW = 0,
    PIN_HIGH = 1,
    
}ENUM;

/* KEY HANDLE */
#define KEY_CHECK_BITS (0x0f) 
#define KEY_PRESS      (0x03)


/// some value define
#define RECV_BUF_MAX 20

// calculate + bias
#define TIMER_0_RST (217 + 14)
// decode time : code pulse time
#define MAX_HIGH_LEVEL_TIMES 100  // 1s
#define TIME_0_1 10    // 100ms
#define TIME_0_2 20    // 200ms
#define TIME_0_3 30    // 300ms
#define TIME_0_4 40    // 400ms
#define BIAS 5         // 50ms

typedef struct{
   // bool value used in receive_decode
    volatile BOOL g_flg_switch;        // switch
    volatile BOOL g_start_read_data;   // start read data
    volatile BOOL g_find_recv_start; 
    
    /**
    * public data here
    */
    // time data
    u8 g_time_h;
    u8 g_time_m;
    u8 g_time_s;
    u8 g_time_10ms;

    // times value in receive_decode
    u16 g_high_level_times;
    u16 g_all_level_times;
    u16 g_recv_count;
    // read time buf in receive_code
    u8 g_recv_buf[RECV_BUF_MAX];
    
}G_DATA;

/******  all functions  ********/
/**
 * @func:receive signal and decode
 */
void receive_decode(void);

/**
 * @func:update time 
 */
void update_time(void);


/**
 * @func:update dispaly and call by update_time
 */
void update_display(void);



#endif	/* XC_HEADER_TEMPLATE_H */


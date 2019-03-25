// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef XC_HEADER_TEMPLATE_H
#define	XC_HEADER_TEMPLATE_H

#include <xc.h> // include processor files - each processor file is guarded.  

/// some value define
#define TRUE 1
#define FALSE 0
#define RECV_BUF_MAX 20

// calculate + bias
#define TIMER_0_START (217 + 14)

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
#define BPC_ON PORTCbits.RC2

// output display port define
#define PIC_DATA PORTBbits.RB5
#define PIC_SHCP PORTBbits.RB0
#define PIC_STCP PORTBbits.RB1
#define PIC_OE PORTBbits.RB3

// define light controll
#define Light_on PORTAbits.RA0

// define time chip
#define PIC_INT PORTCbits.RC0
#define PIC_INT_TRI TRISCbits.TRISC0
#define PIC_INT_WPU WPUCbits.WPUC0
#define PIC_SCL PORTCbits.RC3
#define PIC_SDA PORTCbits.RC4
#define CLKOUT PORTAbits.RA7

// decode time 
#define MAX_HIGH_LEVEL_TIMES 100
#define TIME_0_1 10
#define TIME_0_2 20
#define TIME_0_3 30
#define TIME_0_4 40
#define BIAS 5


/**
 * public data here
 */
// time data
int g_time_h;
int g_time_m;
int g_time_s;
int g_time_u;

// bool value used in receive_decode
int g_start_read_switch; // switch
int g_start_read_data;   // start read data
int g_find_recv_start;

// times value in receive_decode
int g_high_level_times;
int g_all_level_times;
int g_recv_count;
// read time buf in receive_code
int g_recv_buf[RECV_BUF_MAX];

// all functions
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


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
#define TIMER_0_START (217 + 13)

// cme6005 data port define
#define CME_DATA_PORT PORTCbits.RC2
#define CME_DATA_TRI TRISCbits.TRISC2
#define CME_DATA_IOC IOCCPbits.IOCCP2
#define CME_DATA_WPU WPUCbits.WPUC2
#define CME_DATA_IOC_INT IOCCFbits.IOCCF2
// switch port define
#define SWITCH_PORT PORTCbits.RC7
#define SWITCH_TRI TRISCbits.TRISC7
#define SWITCH_WPU WPUCbits.WPUC7
// test output port define
#define SECOND_DISPLAY LATAbits.LATA0
#define CME_DATA_SIGNAL LATAbits.LATA1
#define OUTPUT_DECODE_1 LATAbits.LATA2
#define OUTPUT_DECODE_2 LATAbits.LATA3
#define OUTPUT_DECODE_3 LATAbits.LATA4
#define OUTPUT_DECODE_4 LATAbits.LATA5
// output display port define
#define PIC_DATA_OUTPUT_PORT TRISBbits.TRISB3 
#define SHCP TRISCbits.TRISC4
#define STCP TRISCbits.TRISC5
#define OE TRISCbits.TRISC6



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

/**
 * test value
 */
#define TEST
#ifdef TEST
int g_all_time_count;
int test_buf_index;
int test_buf[20];
#endif
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


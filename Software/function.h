// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef XC_HEADER_TEMPLATE_H
#define	XC_HEADER_TEMPLATE_H

#include <xc.h> // include processor files - each processor file is guarded.  
#define TRUE 1
#define FALSE 0
#define RECV_BUF_MAX 20

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


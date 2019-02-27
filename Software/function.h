// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef XC_HEADER_TEMPLATE_H
#define	XC_HEADER_TEMPLATE_H

#include <xc.h> // include processor files - each processor file is guarded.  

/**
 * public data here
 */
// time data
int g_time_hour;
int g_time_minute;
int g_time_second;
int g_time_unit;


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


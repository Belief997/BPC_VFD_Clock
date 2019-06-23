/* 
 * File:   debug.h
 * Author: belief
 *
 * Created on 2019?6?16?, ??4:37
 */

#ifndef _DEBUG_H_
#define _DEBUG_H_
#include <stdio.h>
#include <stdarg.h>

#include "data.h"
#include "uart.h"
#include "string.h"

//#define DEBUG

#define DISBUF_LEN (64)
#define CR         "\n\r"


#define SEND_STR(str) {													\
	char i = 0;															\
	char send[DISBUF_LEN] = "\0";										\
	strcpy(send, str);													\
	while(i != (strlen(send)+1)){										\
        TXEN = 1;                                                       \
        SYNC = 0;                                                       \
        SPEN = 1;                                                       \
        TXIE = 1;                                                       \
        while(0 == TXSTAbits.TRMT);                                     \
        TXREG = send[i++];                                              \
        TXIE = 0;                                                       \
	}						            								\
}                                                                       \



#ifdef DEBUG
#define debug_log(fmt, ...)                                             \
{                                                                       \
    char buf[DISBUF_LEN] = {0};                                         \
    sprintf(buf, "[%s:%d %s] "fmt CR, __FILE__, __LINE__, __FUNCTION__, ##__VA_ARGS__);\
    SEND_STR(buf);                                                      \
}                                                                       \

#else
    #define debug_log(fmt,...) {}
#endif

#define LOG debug_log


#endif /* USER_INC_DEBUG_H_ */

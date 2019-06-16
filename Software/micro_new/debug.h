#ifndef _DEBUG_H_
#define _DEBUG_H_

#include "data.h"
#include "data.h"
#include "uart.h"
#include "string.h"
#include <stdarg.h>
#include <stdio.h>



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



#define debug_log(fmt, ...)                                             \
{                                                                       \
    char buf[DISBUF_LEN] = {0};                                         \
    sprintf(buf, "[%s:%d %s] "fmt CR, __FILE__, __LINE__, __FUNCTION__, ##__VA_ARGS__);\
    SEND_STR(buf);                                                      \
}                                                                       \

#define LOG debug_log






typedef int (*CMD_ACTION)(const unsigned char* cmdString, unsigned short length);
int debug_proc(const unsigned char* cmdString, unsigned short length);



//void debug_log(char *format, ...);
//void debug_log(char *str);
//void debug_log(char *fmt, ...);


#endif /* USER_INC_DEBUG_H_ */

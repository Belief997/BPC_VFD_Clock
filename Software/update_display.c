/*
 * File:   update_display.c
 * Author: GeniusRabbit
 *
 * Created on 2019?2?27?, ??5:29
 */


#include <xc.h>
#include "function.h"

unsigned char code segmcode[]={0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,

                           0x77,0x7C,0x39,0x5E,0x79,0x71};//0-f

static void control595_delay(void){
   u32 times = 10; // [1: 0.2346us]
   while(times--){
	   __nop();
   }
}

void write_char(unsigned char dat){
    unsigned char i;
    for(i = 0; i < 8; i++){
		PIC_DATA_OUTPUT_PORT = dat & 0x80;
		SHCP = 1;    //上升沿送数据
		control595_delay();
		SHCP = 0;
		control595_delay();
		
        dat << 1;   //左移取下一位
    }
}

void update_display(void) {
	write_char(segmcode[g_time_m % 10]);
	write_char(segmcode[g_time_m / 10]);
	write_char(segmcode[g_time_h % 10]);
	write_char(segmcode[g_time_h / 10]);
	
	STCP = 0;
	control595_delay();
    STCP = 1;
	control595_delay();
    return;
}

/*
 * File:   update_display.c
 * Author: GeniusRabbit, Belief
 *
 * Created on 2019/2/27, 5:26
 */


#include <xc.h>
#include "function.h"

// TODO: check here
const u8 segmcode[]={
    0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,\
    0x77,0x7C,0x39,0x5E,0x79,0x71
};//0-f

// TODO: redefine time here 
static void control595_delay(void){
   u8 times = 10;  // [1: 0.2346us]
   while(times > 0){
	   __nop();
       times--;
   }
}

/*
 
 SERIAL: 
 SHCP:
 STCP:
 
 
 
 */

static void write_byte(u8 data){
    u8 i;
    for(i = 0; i < 8; i++){
		PIC_DATA = (data & 0x80) >> 7;
        PIC_SHCP = PIN_LOW; // SRCLK
		control595_delay();
        PIC_SHCP = PIN_HIGH; // SRCLK
		control595_delay();
		
        data <<= 1;    
    }
}

static void write_once(){
    
    write_byte(0xff); //4
    write_byte(0x00); //3
    write_byte(0xf0); //2
    write_byte(0x0f); //1
    
    PIC_STCP = PIN_HIGH; // RCLK
	control595_delay();
    PIC_STCP = PIN_LOW;  // RCLK
}

void update_display(void) {
    
    /**
     * 4----3----2----1----<<<input signal
     */
    //write_char(segmcode[g_time_s % 10]);
	//write_char(segmcode[g_time_s / 10]);
	//write_char(segmcode[g_time_m % 10]);
	//write_char(segmcode[g_time_m / 10]);
	//write_char(segmcode[g_time_h % 10]);
	//write_char(segmcode[g_time_h / 10]);
	
    write_once();
    return;
}
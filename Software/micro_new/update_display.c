/*
 * File:   update_display.c
 * Author: GeniusRabbit, Belief
 *
 * Created on 2019/2/27, 5:26
 */


#include <xc.h>
#include "function.h"
#include "hardware.h"


 /* ULN2001 是反相输出 */
const u8 segmcode[]={
//    0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,\
//    0x77,0x7C,0x39,0x5E,0x79,0x71

      0x08, 0x7c, 0x11, 0x30, 0x64, 0x22, 0x02, 0x78, 0x00, 0x20, 0xff

};//0-f

// TODO: redefine times here 
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

static void write_once(u8 HL, u8 HR, u8 ML, u8 MR){
    
    write_byte(HL); //4  Hr_Left
    write_byte(HR); //3
    write_byte(ML); //2  Min_Left
    write_byte(MR); //1

    /* 多 shift 一次， 使 Q6 向 Q7 移位 */
    PIC_SHCP = PIN_LOW; // SRCLK
    control595_delay();
    PIC_SHCP = PIN_HIGH; // SRCLK
    control595_delay();
    
    PIC_STCP = PIN_HIGH; // RCLK
	control595_delay();
    PIC_STCP = PIN_LOW;  // RCLK
}

void update_display(void) {
    
    /**
     * 4----3----2----1----<<<input signal
    */
   
//    write_once(segmcode[g_data.g_time_h / 10], \
//               segmcode[g_data.g_time_h % 10], \
//               segmcode[g_data.g_time_m / 10], \
//               segmcode[g_data.g_time_m % 10]); 
    
//    write_once(0x03, 0x0c, 0x30, 0xc0); // 4 3 2 1
    static u8 i=0;
    

    
    write_once(segmcode[i%10], segmcode[i%10], segmcode[i%10], segmcode[i%10]); // 4 3 2 1

    i++;
    return;
}

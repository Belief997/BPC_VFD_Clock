/*
 * File:   update_display.c
 * Author: GeniusRabbit, Belief
 *
 * Created on 2019/2/27, 5:26
 */


#include <xc.h>
#include "function.h"
#include "hardware.h"
#include "display.h"

void display_set(BOOL ison)
{
    Light_on = ison;
}


 /* ULN2001 是反相输出 */
const u8 segmcode[]={
      0x08, 0x7c, 0x11, 0x30, 0x64, 0x22, 0x02, 0x78, 0x00, 0x20, 0xff
};//0-9, 熄灯

// TODO: redefine times here 
static void display_control595_delay(void){
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

static void display_write_byte(u8 data){
    u8 i;
    for(i = 0; i < 8; i++){
		PIC_DATA = (data & 0x80) >> 7;
        PIC_SHCP = PIN_LOW; // SRCLK
		display_control595_delay();
        PIC_SHCP = PIN_HIGH; // SRCLK
		display_control595_delay();
        data <<= 1;    
    }
}

static void display_write_once(u8 HL, u8 HR, u8 ML, u8 MR){
    
    display_write_byte(HL); //4  Hr_Left
    display_write_byte(HR); //3
    display_write_byte(ML); //2  Min_Left
    display_write_byte(MR); //1

    /* 多 shift 一次， 使 Q6 向 Q7 移位 */
    PIC_SHCP = PIN_LOW; // SRCLK
    display_control595_delay();
    PIC_SHCP = PIN_HIGH; // SRCLK
    display_control595_delay();
    
    PIC_STCP = PIN_HIGH; // RCLK
	display_control595_delay();
    PIC_STCP = PIN_LOW;  // RCLK
}

void display_update(void) 
{
    
    /**
     * 4----3----2----1----<<<input signal
    */
   
//    write_once(segmcode[g_data.g_time_h / 10], \
//               segmcode[g_data.g_time_h % 10], \
//               segmcode[g_data.g_time_m / 10], \
//               segmcode[g_data.g_time_m % 10]); 
    
//    write_once(0x03, 0x0c, 0x30, 0xc0); // 4 3 2 1
    static u8 i=0;
    

    
    display_write_once(segmcode[i%10], segmcode[i%10], segmcode[i%10], segmcode[i%10]); // 4 3 2 1

    i++;
    return;
}

void update_time(void) 
{
    G_DATA *pdata = data_getdata();
    pdata->g_time_10ms++;
#ifdef TEST
    if( 50 == pdata->g_time_10ms ){
        SECOND_LIGHT = 1;
    }else if( 100 == pdata->g_time_10ms ){
        SECOND_LIGHT = 0;
    }
#endif
    if(pdata->g_time_10ms == 100)
    { // 1s
        pdata->g_time_10ms = 0;
        pdata->g_time_s++;
//        display_update();
        if(pdata->g_time_s == 60)
        { // 1min
            pdata->g_time_m++;
            pdata->g_time_s = 0;
            pdata->cnt_update++;
            if(pdata->g_time_m == 60)
            { // 1hr
                pdata->g_time_h++;
                pdata->g_time_m = 0;
                
                if(pdata->g_time_h == 24)
                { // 1day
                    pdata->g_time_h = 0;
                }
            }
            /* update once display every minute */
            display_update();
        }      
    }
    return;
}


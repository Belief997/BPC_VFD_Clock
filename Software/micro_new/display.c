/*
 * File:   update_display.c
 * Author: GeniusRabbit, Belief
 *
 * Created on 2019/2/27, 5:26
 */


#include <xc.h>

#include "myiic.h"
#include "display.h"
#include "hardware.h"

void display_set(BOOL ison)
{
    Light_on = ison;
}


 /* ULN2001 是反相输出 */
const u8 segmcode[]={
      0x08, 0x7c, 0x11, 0x30, 0x64, 0x22, 0x02, 0x78, 0x00, 0x20, 0xff
};//0-9, 熄灯


static void display_control595_delay(void){
   u8 times = 10;  // [1: 0.2346us]
   while(times > 0){
	   __nop();
       times--;
   }
}

static void display_write_byte(u8 data){
    u8 i;
    for(i = 0; i < 8; i++){
		PIC_DATA = (data & 0x80) >> 7;
        PIC_SHCP = PIN_LOW;         // SRCLK
		display_control595_delay();
        PIC_SHCP = PIN_HIGH;        // SRCLK
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
    G_DATA *pdata = data_getdata();
    display_write_once(segmcode[(pdata->g_time_h/10 == 0? 10:pdata->g_time_h/10)], \
                          segmcode[pdata->g_time_h%10], \
                          segmcode[pdata->g_time_m/10], \
                          segmcode[pdata->g_time_m%10]); // 4 3 2 1
    return;
}

void update_time(void) 
{
    G_DATA *pdata = data_getdata();
    pdata->g_time_100ms++;
    // 秒指示灯
    if(pdata->g_time_100ms % 5 == 0 && (!capture_IsEnable())){
        led_Blink();
    }
    
    if(pdata->g_time_100ms == 10)
    { // 1s
        pdata->g_time_100ms = 0;
        pdata->g_time_s++;
        if(pdata->g_time_s == 60)
        { // 1min
            pdata->g_time_m++;
            pdata->g_time_s = 0;
            pdata->cnt_update++;
            if(pdata->g_time_m % 30 == 0){
                capture_Set(TRUE);
            }
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


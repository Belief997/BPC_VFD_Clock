/*
 * File:   update_time.c
 * Author: GeniusRabbit, Belief
 *
 * Created on 2019/2/27, 5:26
 */


#include <xc.h>
#include "function.h"
#include "display.h"


void update_time(void) {
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
//        update_display();
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

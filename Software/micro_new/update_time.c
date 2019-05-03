/*
 * File:   update_time.c
 * Author: GeniusRabbit, Belief
 *
 * Created on 2019/2/27, 5:26
 */


#include <xc.h>
#include "function.h"

extern G_DATA g_data;

void update_time(void) {
    g_data.g_time_10ms++;
#ifdef TEST
    if( 50 == g_data.g_time_10ms ){
        SECOND_LIGHT = 1;
    }else if( 100 == g_data.g_time_10ms ){
        SECOND_LIGHT = 0;
    }
#endif
    if(g_data.g_time_10ms == 100)
    { // 1s
        g_data.g_time_10ms = 0;
        g_data.g_time_s++;
//        update_display();
        if(g_data.g_time_s == 60)
        { // 1min
            g_data.g_time_m++;
            g_data.g_time_s = 0;
            g_data.cnt_update++;
            if(g_data.g_time_m == 60)
            { // 1hr
                g_data.g_time_h++;
                g_data.g_time_m = 0;
                
                if(g_data.g_time_h == 24)
                { // 1day
                    g_data.g_time_h = 0;
                }
            }
            /* update once display every minute */
            update_display();
        }      
    }
    return;
}

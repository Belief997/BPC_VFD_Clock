/*
 * File:   update_time.c
 * Author: GeniusRabbit
 *
 * Created on 2019?2?27?, ??5:28
 */


#include <xc.h>
#include "function.h"

void update_time(void) {
    g_time_u++;
    if(g_time_u == 100){
        g_time_u = 0;
        g_time_s++;
        if(g_time_s == 60){
            g_time_m++;
            g_time_s = 0;
            if(g_time_m == 60){
                g_time_h++;
                g_time_m = 0;
                if(g_time_h == 24){
                    g_time_h = 0;
                }
            }
            update_display();
        }
    }
    return;
}

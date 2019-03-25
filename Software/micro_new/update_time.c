/*
 * File:   update_time.c
 * Author: GeniusRabbit
 *
 * Created on 2019?2?27?, ??5:28
 */


#include <xc.h>
#include "function.h"

extern G_DATA g_data;

void update_time(void) {
    g_data.g_time_10ms++;
    if(g_data.g_time_10ms == 100){
        g_data.g_time_10ms = 0;
        g_data.g_time_s++;
        if(g_data.g_time_s == 60){
            g_data.g_time_m++;
            g_data.g_time_s = 0;
            if(g_data.g_time_m == 60){
                g_data.g_time_h++;
                g_data.g_time_m = 0;
                if(g_data.g_time_h == 24){
                    g_data.g_time_h = 0;
                }
            }
            update_display();
        }
    }
    return;
}

/*
 * File:   receive_decode.c
 * Author: GeniusRabbit, Belief
 *
 * Created on 2019/2/27, 5:26
 */


#include <xc.h>
#include "function.h"

extern G_DATA g_data;

static u8 times2number(u16 high_level_times){
    if(high_level_times >=  TIME_0_1 - BIAS  && high_level_times < TIME_0_1 + BIAS){          
        //0.1s
        return 0;
    }else if(high_level_times >= TIME_0_2 - BIAS && high_level_times < TIME_0_2 + BIAS){   
        //0.2s
        return 1;
    }else if(high_level_times >= TIME_0_3 - BIAS && high_level_times < TIME_0_3 + BIAS){   
        //0.3s
        return 2;
    }else if(high_level_times >= TIME_0_4 - BIAS && high_level_times < TIME_0_4 + BIAS){   
        //0.4s
        return 3;
    }else if(high_level_times >= TIME_0_4 + BIAS){               
        // long high level
        return 4;
    }else{
        // long low level       
        return 5;                                               
    }
}

void receive_decode(void) {
    // read port get high level times
    if(CME_DATA_PORT == PIN_HIGH){
        g_data.g_high_level_times++;
    }
    // get times of read
    g_data.g_all_level_times++;
    
    // find time start
    /* when we recive a long low level voltage, we get P0 */
    if(g_data.g_all_level_times < MAX_HIGH_LEVEL_TIMES){
        return;
    }
    // init for read another high level
    u8 read_value = times2number(g_data.g_high_level_times);
    g_data.g_all_level_times = 0;
    g_data.g_high_level_times = 0;
    
    if(read_value == 5){
        // start to read data flag
        g_data.g_find_recv_start = TRUE;
        g_data.g_recv_buf[CODE_P0] = 0;
        g_data.g_recv_count = CODE_P1;  
        return;
    }
    
    if(g_data.g_find_recv_start == FALSE || (read_value == 4)){
        // FALSE: NOT get P0 yet
        // 4: long high level -> err
        return;
    }
    
    g_data.g_recv_buf[g_data.g_recv_count++] = read_value;
    if(g_data.g_recv_count <= CODE_P3){
        return;
    }

    if(g_data.g_recv_buf[CODE_P1] != 0 && g_data.g_recv_buf[CODE_P2] != 0){
        g_data.g_find_recv_start = FALSE;
        g_data.g_start_read_data = 0;
        g_data.g_recv_count = 0;
        return;
    }
    
    u16 last_time_h = g_data.g_time_h;
    u16 last_time_m = g_data.g_time_m;
    g_data.g_time_h = g_data.g_recv_buf[CODE_H_1] * 4 + g_data.g_recv_buf[CODE_H_2];
    g_data.g_time_m = g_data.g_recv_buf[CODE_M_1] * 16 + g_data.g_recv_buf[CODE_M_2] * 4 + g_data.g_recv_buf[CODE_M_3];
    u8 check = 0;
    for(u8 i = CODE_P1; i < CODE_P3; i++)
    {
        check ^= g_data.g_recv_buf[i];
    }
    if( (((0 == check) || (3 == check))) && (g_data.g_recv_buf[CODE_P3] % 2 == 0) )
    {
        g_data.g_time_h += (2 ==g_data.g_recv_buf[CODE_P3])? 12 : 0; 
    }else if( (((1 == check) || (2 == check))) && \
            ((g_data.g_recv_buf[CODE_P3]  == 1) || (g_data.g_recv_buf[CODE_P3]  == 3)) )
    {
        g_data.g_time_h += (3 ==g_data.g_recv_buf[CODE_P3])? 12 : 0;   
    }else{
        g_data.g_find_recv_start = FALSE;
        g_data.g_start_read_data = 0;
        g_data.g_recv_count = 0;
        return;
    }
    
    if(last_time_h != g_data.g_time_h || last_time_m != g_data.g_time_m){
        update_display();
    }
    
    // recv over ,then set flag to false
    g_data.g_find_recv_start = FALSE;
    BPC_ON = BPC_PWR_OFF;
    g_data.g_start_read_data = 0;
    g_data.g_recv_count = 0;
    for(int i = 0;i < RECV_BUF_MAX; i++){
        g_data.g_recv_buf[i] = 5;
    }
    return;
}

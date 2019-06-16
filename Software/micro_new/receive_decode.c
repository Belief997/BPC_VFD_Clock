/*
 * File:   receive_decode.c
 * Author: GeniusRabbit, Belief
 *
 * Created on 2019/2/27, 5:26
 */


#include <xc.h>
#include "function.h"
#include "hardware.h"
#include "data.h"
#include "timer.h"
#include "display.h"


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

#ifdef TEST
void test_get_number(u8 get_num){
    if(get_num == 0){
        GET_NUMBER_0 = 1;
        GET_NUMBER_1 = 0;
        GET_NUMBER_2 = 0;
        GET_NUMBER_3 = 0;
    }else if(get_num == 1){
        GET_NUMBER_0 = 0;
        GET_NUMBER_1 = 1;
        GET_NUMBER_2 = 0;
        GET_NUMBER_3 = 0;
    }else if(get_num == 2){
        GET_NUMBER_0 = 0;
        GET_NUMBER_1 = 0;
        GET_NUMBER_2 = 1;
        GET_NUMBER_3 = 0;
    }else if(get_num == 3){
        GET_NUMBER_0 = 0;
        GET_NUMBER_1 = 0;
        GET_NUMBER_2 = 0;
        GET_NUMBER_3 = 1;
    }else if(get_num == 4){
        GET_NUMBER_0 = 1;
        GET_NUMBER_1 = 1;
        GET_NUMBER_2 = 1;
        GET_NUMBER_3 = 1;
    }else if(get_num == 5){
        GET_NUMBER_0 = 0;
        GET_NUMBER_1 = 0;
        GET_NUMBER_2 = 0;
        GET_NUMBER_3 = 0;
    }
}
#endif

static int check_err(void)
{
    G_DATA *pdata = data_getdata();
    pdata->g_time_h = pdata->g_recv_buf[CODE_H_1] * 4 + pdata->g_recv_buf[CODE_H_2];
    pdata->g_time_m = pdata->g_recv_buf[CODE_M_1] * 16 + pdata->g_recv_buf[CODE_M_2] * 4 + pdata->g_recv_buf[CODE_M_3];
    pdata->g_time_s = 10 + ((pdata->g_recv_buf[CODE_P1] == 1)? 20:  \
                            (pdata->g_recv_buf[CODE_P1] == 2)? 40: 0);
    u8 check = 0;
    for(u8 i = CODE_P1; i < CODE_P3; i++)
    {
        check ^= pdata->g_recv_buf[i];
    }
    if( (((0 == check) || (3 == check))) && (pdata->g_recv_buf[CODE_P3] % 2 == 0) )
    {
        pdata->g_time_h += (2 ==pdata->g_recv_buf[CODE_P3])? 12 : 0; 
    }else if( (((1 == check) || (2 == check))) && \
            ((pdata->g_recv_buf[CODE_P3]  == 1) || (pdata->g_recv_buf[CODE_P3]  == 3)) )
    {
        pdata->g_time_h += (3 ==pdata->g_recv_buf[CODE_P3])? 12 : 0;   
    }
    else
    {
        pdata->g_find_recv_start = FALSE;
        pdata->g_isDecoding = 0;
        pdata->g_recv_count = 0;
        return -1;
    }
    return 0;
}

void receive_decode(void) {
    G_DATA *pdata = data_getdata();
    // To advoid low level shake during high level time, and judge puls end
    static u8 cnt_low = 0;
    
    // haven't find start P0, do not cnt 
    if(pdata->g_find_recv_start == FALSE && CME_DATA_PORT == PIN_HIGH)
    {
        pdata->g_high_level_times = 0;
        pdata->g_all_level_times = 0;
        return;
    }
    
    
    // read port get high level times, high puls count
    if(CME_DATA_PORT == PIN_HIGH)
    {
        pdata->g_high_level_times++;
//        pdata->g_high_level_times += cnt_low;
        cnt_low = 0;
    }
    else
    {
        cnt_low++;
    }
    // get times of read
    pdata->g_all_level_times++;
    
    // find time start
    
    if((pdata->g_all_level_times < MAX_HIGH_LEVEL_TIMES) && (FALSE == pdata->g_find_recv_start))
    {
        return;
    }
    else if( (cnt_low < 5) && (TRUE == pdata->g_find_recv_start) )
    {
        return ;
    }
    // init for read another high level
    u8 read_value = times2number(pdata->g_high_level_times);
#ifdef TEST
    test_get_number(read_value);
#endif
    cnt_low = 0;
    pdata->g_all_level_times = 0;
    pdata->g_high_level_times = 0;
    
    if(FALSE == pdata->g_find_recv_start)
    {
        /* when we recive a long low level voltage, we get P0 */
        if(read_value == 5)
        {
            // start to read data to buff
            pdata->g_find_recv_start = TRUE;
            pdata->g_recv_buf[CODE_P0] = 0;
//            pdata->g_recv_count = CODE_P0;  
//            timer_stop();
            return;
        } 
        else
        {
            // wait P0
            return;
        }
    }

    
    if(pdata->g_find_recv_start == FALSE || (read_value == 4))
    {
        // FALSE: NOT get P0 yet
        // 4: long high level -> err
        return;
    }
    
    /* Recive P3 and before */
    pdata->g_recv_buf[pdata->g_recv_count++] = read_value;
    if(pdata->g_recv_count <= CODE_P3)
    {
        return;
    }

    // check P1, P1: 0->1, 1->21, 2->41
    if(pdata->g_recv_buf[CODE_P1] > 2)
    {
        pdata->g_find_recv_start = FALSE;
        pdata->g_isDecoding = 0;
        pdata->g_recv_count = 0;
        return;
    }
    
    u16 last_time_h = pdata->g_time_h;
    u16 last_time_m = pdata->g_time_m;
    u16 last_time_s = pdata->g_time_s;
    
    do{
        if(check_err())
        {
            // wrong data recived
            pdata->g_time_h = last_time_h;
            pdata->g_time_m = last_time_m;
            pdata->g_time_s = last_time_s;
            break;
        }

        // we get no err then update display
        if(last_time_h != pdata->g_time_h || last_time_m != pdata->g_time_m)
        {
            display_update();
        }
    }while(0);
    
    
    // recv over ,then set flag to false
    pdata->g_find_recv_start = FALSE;
//    BPC_ON = BPC_PWR_OFF;
    pdata->g_isDecoding = FALSE;
    pdata->g_recv_count = CODE_P0;
    for(int i = 0;i < RECV_BUF_MAX; i++)
    {
        pdata->g_recv_buf[i] = 5;
    }
    return;
}

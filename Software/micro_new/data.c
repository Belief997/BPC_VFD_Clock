/* 
 * File:   data.c
 * Author: belief
 *
 * Created on 2019?6?16?, ??4:37
 */

#include <xc.h>
#include "stdio.h"

#include "data.h"

// global data struct
static G_DATA g_data;

G_DATA* data_getdata(void)
{
    return &g_data;
}



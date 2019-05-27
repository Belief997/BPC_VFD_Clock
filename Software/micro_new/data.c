#include "data.h"

// global data struct
static G_DATA g_data;

G_DATA* data_getdata(void)
{
    return &g_data;
}
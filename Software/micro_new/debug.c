#include <string.h>
#include <stdio.h>
//#include "log.h"
#include "debug.h"
//#include "protocol.h"

//#include "led.h"
#include "data.h"
#if 0
#define MAX_CMD_LENGTH (16)
#define MAX_CMD_NUMBER  (32)

typedef struct
{
    unsigned char cmd[MAX_CMD_LENGTH];
    CMD_ACTION  action;
}CMD_MAP;

/*
 * 去掉字符串开头的空格
 *
 */
unsigned char* string_trimLeft(const unsigned char* string)
{
    const unsigned char* p = string;

    while(*p == ' ') p++;

    return (unsigned char*)p;
}

static int cmd_echo(const unsigned char* cmdString, unsigned short length)
{
    LOG_DEBUG("echo: \"%s\"",cmd_String);
    return 0;
}

static int cmd_log_setting(const unsigned char* cmdString, unsigned short length)
{
    print("hese is setting:\r\n");   
    print("maxWaitCnt:%d\r\n", setting.maxWaitCnt);
    print("maxDelayCnt:%d\r\n", setting.maxDelayCnt);
    print("maxDelayCntShake:%d\r\n", setting.maxDelayCntShake);
    print("minDeltaCnt:%d\r\n", setting.minDeltaCnt);
    print("maxDeltaCnt:%d\r\n", setting.maxDeltaCnt);

    return 0;
}

static int cmd_set_maxDelayCnt(const unsigned char* cmdString, unsigned short length)
{
    int rc = 0;
    rc = sscanf((const char *)cmdString, "set maxDelayCnt %d", &setting.maxDelayCnt);
    if(1 == rc)
    {
        LOG_DEBUG("SUCCESS:set maxDelayCnt to %d", setting.maxDelayCnt);
    }
    else
    {
        LOG_ERROR("FAIELD:maxDelayCnt is %d", setting.maxDelayCnt);
    }

    return 0;
}


static CMD_MAP cmd_map[MAX_CMD_NUMBER] =
{
        {"echo",                    cmd_echo},

        {"log setting",             cmd_log_setting},
        {"set maxDeltaCnt",         cmd_set_maxDeltaCnt},            
};

int debug_proc(const unsigned char* cmdString, unsigned short length)
{
    int i = 0;
    LOG_DEBUG("CMD > %s", cmdString);
    const unsigned char* cmd = string_trimLeft(cmdString);

    for (i = 0; i < MAX_CMD_NUMBER && cmd_map[i].action; i++)
    {
        if (strncmp((const char *)cmd, (const char *)cmd_map[i].cmd, strlen((const char *)cmd_map[i].cmd)) == 0)
        {
            return cmd_map[i].action(cmdString, length);
        }
    }

    LOG_INFO("CMD not processed");
    return -1;
}

#endif
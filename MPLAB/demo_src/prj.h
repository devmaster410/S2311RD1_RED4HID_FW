/**
 * @file prj.h
 * @author 
 * @brief all header file
 * @version 001
 * @date 2024-02-09
 * 
 * @copyright Copyright (c) 2024
 * 
 */

/* 
 * File:   prj.h
 * Author: hsawa
 *
 * Created on 2024/01/30, 15:09
 */

#ifndef PRJ_H
#define	PRJ_H

#ifdef	__cplusplus
extern "C" {
#endif


/*--------------------------------------------
*Include
*---------------------------------------------*/
/* Standard C includes */
#include <stdint.h>

/* Microchip library includes */
#include "system.h"

#include "usb.h"
#include "usb_device_hid.h"

/* Demo project includes */
#include "app_led_usb_status.h"
#include "app_device_keyboard.h"

/*header file created by me*/
#include "api_timer.h"
#include "api_buzzer.h"

/*debug header file created by me*/
#include "debug_led.h"

/*--------------------------------------------
*Definition
*---------------------------------------------*/
/**
 * @struct T_SYSTEM
 * @details system info
 * 
*/
typedef struct tagT_SYSTEM
{
    uint32_t system_time;   /**< 1msec. Initial value:0*/
}T_SYSTEM;

/*--------------------------------------------
*Variable
*---------------------------------------------*/
/**global variable*/
extern T_SYSTEM g_tsys;

#ifdef	__cplusplus
}
#endif

#endif	/* PRJ_H */


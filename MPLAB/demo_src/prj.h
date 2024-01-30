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


/*--------------------------------------------
*Definition
*---------------------------------------------*/
typedef struct tagT_SYSTEM
{
    uint32_t system_clock;
}T_SYSTEM;

/*--------------------------------------------
*Variable
*---------------------------------------------*/
extern T_SYSTEM g_tsys;

#ifdef	__cplusplus
}
#endif

#endif	/* PRJ_H */


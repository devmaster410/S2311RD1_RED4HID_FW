/**
 * @file api_timer.h
 * @author 
 * @brief API Timer interface
 * @version 001
 * @date 2024-02-09
 * 
 * @copyright Copyright (c) 2024
 * 
 */

/* 
 * File:   api_timer.h
 * Author: hsawa
 *
 * Created on 2024/02/06, 19:28
 */

#ifndef API_TIMER_H
#define	API_TIMER_H

#ifdef	__cplusplus
extern "C" {
#endif

/*--------------------------------------------
*Definition
*---------------------------------------------*/

/*--------------------------------------------
*Variable
*---------------------------------------------*/

/*--------------------------------------------
*Function
*---------------------------------------------*/
extern void API_Timer1_init(void);
extern void API_Timer1_start(void);
extern void API_Timer1_interrupt(void);



#ifdef	__cplusplus
}
#endif

#endif	/* API_TIMER_H */


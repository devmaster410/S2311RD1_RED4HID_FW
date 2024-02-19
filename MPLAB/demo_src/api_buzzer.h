/**
 * @file api_buzzer.h
 * @author 
 * @brief API Buzzer interface
 * @version 001
 * @date 2024-02-09
 * 
 * @copyright Copyright (c) 2024
 * 
 */



/* 
 * File:   api_buzzer.h
 * Author: hsawa
 *
 * Created on 2024/02/06, 19:27
 */

#ifndef API_BUZZER_H
#define	API_BUZZER_H

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
extern void API_Buzzer_init(void);
extern void API_Buzzer_on(void);
extern void API_Buzzer_off(void);


#ifdef	__cplusplus
}
#endif

#endif	/* API_BUZZER_H */


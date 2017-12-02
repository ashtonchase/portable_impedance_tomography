/* ========================================
 *
 * Copyright YOUR COMPANY, THE YEAR
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
 */

#if !defined(BLE_AD5933_H)
#define BLE_AD5933_H
#include "main.h"

    
 
#define Z_CTRL_START 0
#define Z_CTRL_CAL 1
#define Z_CTRL_STOP 2
#define Z_CTRL_UPDATE 3
#define Z_CTRL_PWRDN 4
    
#define Z_STS_INIT 0
#define Z_STS_CAL 1
#define Z_STS_BUSY 2
    
    
typedef __attribute__((__packed__)) struct ad5933_result{
  uint16_t real  ;
  uint16_t imag  ;
  uint32_t freq  ;
  uint8_t tx ;
  uint8_t rx ;
        
}ad5933_result;

typedef struct ad5933_ble_data{

  uint8_t ctrl[5];
  uint8_t sts[3];
  uint8_t mux[2];
  uint16 numIncr;
  uint8_t gain;
  uint8_t voutRange;
  uint8_t settleTime;  
  uint32_t startFreq, incFreq;
  struct ad5933_result result;
  
} ad5933_ble_data ;
   
    
    
    
#endif




/* [] END OF FILE */

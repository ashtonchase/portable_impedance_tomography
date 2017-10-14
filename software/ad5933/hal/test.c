#include "iic_hal.h"

void Iic_Init(const Iic_ConfigType *Config){
}


/** Receive a byte from the IIC device. 
 * 
 * @param 7-bit device address to receive byte from
 * @param 8-bit register address to receive byte from
 * @return 0 if receive was ACK'ed, 1 if NACK'ed
 */
uint8_t Iic_RxByte(const uint8_t addr,
		   const uint8_t reg,
		   uint8_t *rxValue ){
  return 0;
}



/** Receive a byte from the IIC device. 
 *
 * @param 7-bit device address to transmit byte to 
 * @param 8-bit register address to transmit byte to 
 * @return 0 if receive was ACK'ed, 1 if NACK'ed
 */
uint8_t Iic_TxByte(const uint8_t addr,
		   const uint8_t reg,
		   const uint8_t txValue){
  return 0;}


void Iic_RegisterWrite(Iic_RegisterType Register,
		       uint32_t RegisterData){
}

uint32_t Iic_RegisterRead(Iic_RegisterType Register){
  return 0;
}






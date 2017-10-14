/* Inter-Integrated Communication Hardware Abstraction
 * for the AD5933/AD5934 Impedance Convertor Devices
 *
 *
 *
 * MIT License
 * 
 * Copyright (c) 2017 Ashton Johnson
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

#ifndef IIC_HAL_H
#define IIC_HAL_H

#include "stdint.h"

#define IIC_OK 0
#define IIC_ACK 0
#define IIC_NACK 1

typedef void Iic_ConfigType;
typedef void Iic_ChannelType;
typedef uint8_t Iic_RegisterType;

/** Initialize the IIC Device
 *
 * @param Configuration data pointer which to initialize. 
 *
 */
void Iic_Init(const Iic_ConfigType *Config);


/** Receive a byte from the IIC device. 
 * 
 * @param 7-bit device address to receive byte from
 * @param 8-bit register address to receive byte from
 * @return 0 if receive was ACK'ed, 1 if NACK'ed
 */
uint8_t Iic_RxByte(const uint8_t addr,
		   const uint8_t reg,
		   uint8_t *rxValue );



/** Receive a byte from the IIC device. 
 *
 * @param 7-bit device address to transmit byte to 
 * @param 8-bit register address to transmit byte to 
 * @return 0 if receive was ACK'ed, 1 if NACK'ed
 */
uint8_t Iic_TxByte(const uint8_t addr,
		   const uint8_t reg,
		   const uint8_t txValue);


void Iic_RegisterWrite(Iic_RegisterType Register,
		       uint32_t RegisterData);

uint32_t Iic_RegisterRead(Iic_RegisterType Register);




#endif

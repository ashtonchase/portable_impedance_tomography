/* AD5933/AD5934 Impedance Converter Library
 * 
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

#ifndef AD5933_H
#define AD5933_H

#include "stdint.h"

/* Register Map */
#define REG_CONTROL 0x80
#define REG_CONTRO_NUM_BYTES 2
#define REG_CONTROL_MSB REG_CONTROL
#define REG_CONTROL_LSB 0x81

#define REG_START_FREQ 0x82
#define REG_START_FREQ_NUM_BYTES 3
#define FREQ_MAX_SIZE 0xFFFFFF

#define REG_FREQ_INCR 0x85
#define REG_FREQ_INCR_NUM_BYTES 3

#define REG_NUM_INCR 0x88
#define REG_NUM_INCR_NUM_BYTES 2
#define NUM_INCR_MAX 511

#define REG_NUM_SETTLE_CYCLES 0x8A
#define REG_NUM_SETTLE_CYCLES_NUM_BYTES 2
#define NUM_SETTLE_CYCLES_MAX 511

#define REG_STATUS 0x8F
#define REG_STATUS_NUM_BYTES 1

#define REG_TEMP 0x92
#define REG_TEMP_NUM_BYTES 2

#define REG_REAL 0x94
#define REG_REAL_NUM_BYTES 2
#define REG_REAL_MSB REG_REAL
#define REG_REAL_LSB 0x95

#define REG_IMAG 0x96
#define REG_IMAG_NUM_BYTES 2
#define REG_IMAG_MSB REG_IMAG
#define REG_IMAG_LSB 0x97




/* Control Register Map */
// Functions
#define CONTROL_REG_NOP               (0x00 << 4)
#define CONTROL_REG_INIT_W_START_FREQ (0x01 << 4)
#define CONTROL_REG_START_FREQ_SWEEP  (0x02 << 4)
#define CONTROL_REG_INCR_FREQ         (0x03 << 4)
#define CONTROL_REG_REPEAT_FREQ       (0x04 << 4)
#define CONTROL_REG_MEAS_TEMP         (0x09 << 4)
#define CONTROL_REG_PWR_DOWN          (0x0A << 4)
#define CONTROL_REG_STANDBY           (0x0B << 4)
// Output Voltage Range
#define CONTROL_OUT_VOLT_BITMASK 0x02
#define CONTROL_OUT_VOLT_2VPP    (0x00 << 1)
#define CONTROL_OUT_VOLT_200MVPP (0x01 << 1)
#define CONTROL_OUT_VOLT_400MVPP (0x02 << 1)
#define CONTROL_OUT_VOLT_1VPP    (0x03 << 1)
//PGA Gain
#define CONTROL_PGA_x5 (0x0000 << 8)
#define CONTROL_PGA_x1 (0x0001 << 8)
//Reset
#define CONTROL_RESET (0x0001 << 4)
// Clock Source
#define CONTROL_CLK_EXT (0x0001 << 3)
#define CONTROL_CLK_EXT (0x0001 << 3)



/* Status Register */
#define STATUS_VALID_TEMP 0x01
#define STATUS_VALID_IMPEDANCE 0x02
#define STATUS_SWEEP_COMPLETE 0x04

typedef struct ad5933_deviceConfig{

  uint32_t clockFreq;
  uint8_t address;
  
} ad5933_deviceConfig ;


uint8_t ad5933_Init( ad5933_deviceConfig *config);

uint8_t ad5933_PerformFrequencySweep( ad5933_deviceConfig *config,
				     uint32_t startFreq,
				     uint32_t incrementFreq,
				     uint16_t numOfIncrements,
				     uint16_t *realArray,
				     uint16_t *imagArray);
				     

uint8_t ad5933_ConvertFreq( ad5933_deviceConfig *config,
			uint32_t desiredFreq,
			uint8_t *freqMsb,
			uint8_t *freqMid,
			uint8_t *freqLsb);

uint8_t ad5933_SetStartFreq( ad5933_deviceConfig *config,
			    uint32_t desiredFreq);

uint8_t ad5933_SetIncrFreq( ad5933_deviceConfig *config,
			   uint32_t desiredFreq);

uint8_t ad5933_SetIncrCount( ad5933_deviceConfig *config,
			    uint16_t incrNum);

uint8_t ad5933_SetSettleTime( ad5933_deviceConfig *config,
			     uint16_t cycles,
			     uint8_t factor);

uint8_t ad5933_GetStatus( ad5933_deviceConfig *config,
			 uint8_t *result);


uint8_t ad9533_WaitForValidTemp(ad5933_deviceConfig *config);

uint8_t ad9533_WaitForValidImpedance(ad5933_deviceConfig *config);

uint8_t ad9533_WaitForSweepComplete(ad5933_deviceConfig *config);

uint8_t ad5933_ReadRealResult(ad5933_deviceConfig *config,
			      int16_t *real);

uint8_t ad5933_ReadImagResult(ad5933_deviceConfig *config,
			      int16_t *imag);

uint8_t ad5933_InitWithStartFreq(ad5933_deviceConfig *config);
uint8_t ad5933_StartSweep(ad5933_deviceConfig *config);
uint8_t ad5933_IncrementFreq(ad5933_deviceConfig *config);
uint8_t ad5933_RepeatFreq(ad5933_deviceConfig *config);
uint8_t ad5933_MeasureTemp(ad5933_deviceConfig *config);
uint8_t ad5933_PowerDown(ad5933_deviceConfig *config);
uint8_t ad5933_Standby(ad5933_deviceConfig *config);
uint8_t ad5933_Stop(ad5933_deviceConfig *config);
uint8_t ad5933_SetPGAx1(ad5933_deviceConfig *config);
uint8_t ad5933_SetPGAx5(ad5933_deviceConfig *config);
uint8_t ad5933_SetVoutRange(ad5933_deviceConfig *config,
			    uint8_t range );

#endif

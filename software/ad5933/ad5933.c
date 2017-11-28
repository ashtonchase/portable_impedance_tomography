/* AD5933/AD5934 Impedance Converter Devices Library
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

#include "ad5933.h"
#include "./hal/iic_hal.h"
#include "report.h"
#include "stdio.h"
#include "math.h"


uint8_t ad5933_PerformFrequencySweep( ad5933_deviceConfig *config,
				     uint32_t startFreq,
				     uint32_t incrementFreq,
				     uint16_t numOfIncrements,
				     int16_t *realArray,
				     int16_t *imagArray){

  if(ad5933_SetStartFreq(config, startFreq)!=0) return 1;
  if(ad5933_SetIncrFreq(config, incrementFreq)!=0) return 1;
  if(ad5933_SetIncrCount(config,numOfIncrements)!=0) return 1;
  if(ad5933_SetSettleTime(config,500,1)!=0) return 1;
  if(ad5933_Standby(config)!=0) return 1;
  if(ad5933_Reset(config)!=0) return 1;
  if(ad5933_InitWithStartFreq(config)!=0) return 1;

  //TODO: Determine how to wait for sufficient amount of settling time.
  if(ad9533_WaitForValidImpedance(config)!=0) return 1;
  
  int arrayIndex;

  for (arrayIndex=0; arrayIndex<numOfIncrements ; arrayIndex++){
    if(ad5933_StartSweep(config)!=0) return 1;
    if(ad9533_WaitForValidImpedance(config)!=0) return 1;
    if(ad5933_ReadRealResult(config,realArray+arrayIndex)!=0) return 1;
    if(ad5933_ReadImagResult(config,imagArray+arrayIndex)!=0) return 1;
    if(ad5933_IncrementFreq(config)!=0) return 1;
  }

  if(ad5933_PowerDown(config)!=0) return 1;
  Report("#Sweep is complete");
  return 0;
}

uint8_t ad5933_ConvertFreq(ad5933_deviceConfig *config,
			   uint32_t desiredFreq,
			   uint8_t *freqMsb,
			   uint8_t *freqMid,
			   uint8_t *freqLsb){

  if(config->clockFreq==0) return 1;
if (desiredFreq==0) return 1; 
  Report("#Freq:%d",desiredFreq);
  uint64_t fixedResult=0;
  fixedResult = (uint64_t)desiredFreq << 27;
  fixedResult/=(uint64_t)config->clockFreq / 4;
  if (fixedResult > 0xFFFFFF) {
    return 1;   // overflow
  }
  (*freqMsb)=(uint8_t)((fixedResult >> 16) & 0xFF);
  (*freqMid)=(uint8_t)((fixedResult >>  8) & 0xFF);
  (*freqLsb)=(uint8_t)((fixedResult      ) & 0xFF);


return 0;
}

uint8_t ad5933_SetStartFreq(ad5933_deviceConfig *config,
			    uint32_t desiredFreq){

  uint8_t startFreq[3];

  ad5933_ConvertFreq(config, desiredFreq, &startFreq[0], &startFreq[1], &startFreq[2]);

  if(Iic_TxByte(config->address, REG_START_FREQ, startFreq[0])!=IIC_ACK)
    {
      Report("#Error sending Start Frequency");
      return 1;
    }
  if(Iic_TxByte(config->address, REG_START_FREQ + 1, startFreq[1])!=IIC_ACK)
    {
      Report("#Error sending Start Frequency");
      return 1;
    }  
  if(Iic_TxByte(config->address, REG_START_FREQ + 2, startFreq[2])!=IIC_ACK)
    {
      Report("#Error sending Start Frequency");
      return 1;
    }

  return 0;
}


uint8_t ad5933_SetIncrFreq(ad5933_deviceConfig *config,
			   uint32_t desiredFreq){

  uint8_t incrFreq[3];

  ad5933_ConvertFreq(config, desiredFreq, &incrFreq[0], &incrFreq[1], &incrFreq[2]);

  if(Iic_TxByte(config->address, REG_FREQ_INCR, incrFreq[0])!=IIC_ACK)
    {
      Report("#Error sending Incr Frequency");
      return 1;
    }
  if(Iic_TxByte(config->address, REG_FREQ_INCR + 1, incrFreq[1])!=IIC_ACK)
    {
      Report("#Error sending Incr Frequency");
      return 1;
    }  
  if(Iic_TxByte(config->address, REG_FREQ_INCR + 2, incrFreq[2])!=IIC_ACK)
    {
      Report("#Error sending Incr Frequency");
      return 1;
    }

  return 0;
}
 
uint8_t ad5933_SetIncrCount(ad5933_deviceConfig *config, uint16_t incrNum){

  if(incrNum > NUM_INCR_MAX){
    Report("#Increment number out of bounds.");
    return 1;
  }
  
  if(Iic_TxByte(config->address, REG_NUM_INCR, (incrNum>>8) & 0x01)!=IIC_ACK)
    {
      Report("#Error sending Incr Frequency");
      return 1;
    }
  if(Iic_TxByte(config->address, REG_NUM_INCR + 1, incrNum )!=IIC_ACK)
    {
      Report("#Error sending Incr Frequency");
      return 1;
    }

  return 0;
}

uint8_t ad5933_SetSettleTime(ad5933_deviceConfig *config, uint16_t cycles, uint8_t factor){

  /* Validate the factor */
  switch(factor){
  case 1 :
  case 2 :
  case 4 :
    break;
  default:
    Report("#Invalid factor chosen");
    return 1;
  }

  /* Validate the cycles */
  if(cycles > NUM_SETTLE_CYCLES_MAX){
    Report("#Increment number out of bounds.");
    return 1;
  }

return 0;
}


uint8_t ad5933_GetStatus(ad5933_deviceConfig *config,
			 uint8_t *result){

  if(Iic_RxByte(config->address, REG_STATUS, result)!=IIC_ACK)
    {
      Report("#Error receiving Status");
      return 1;
    }
    //Report("#\r\nStatus:%x",(*result));
  return 0;
}

uint8_t ad9533_WaitForValidTemp(ad5933_deviceConfig *config){

  uint8_t result;
  uint32_t timeout;
  timeout = 100000;
  
  do{
    if(ad5933_GetStatus(config, &result)!=IIC_ACK)
      {
	Report("#Error receiving Status");
	return 1;
      }
    //timeout--;
    if (0/*timeout==0*/){
      Report("#Timed out waiting for valid temp.");
      return 1;
    }
  }while ( result != STATUS_VALID_TEMP );

  return 0;
}

uint8_t ad9533_WaitForValidImpedance(ad5933_deviceConfig *config){

  uint8_t result;
  uint32_t timeout=100000;
  
  do{
    if(ad5933_GetStatus(config, &result)!=IIC_ACK)
      {
	Report("#Error receiving Status");
	return 1;
      }
    timeout--;
    if (timeout==0){
      Report("#Timed out waiting for valid impedance.");
      return 1;
    }
  }while ( !(result &= STATUS_VALID_IMPEDANCE) );

  return 0;
}

uint8_t ad9533_WaitForSweepComplete(ad5933_deviceConfig *config){

  uint8_t result;
  uint16_t timeout;
  timeout = 5000;
  
  do{
    if(ad5933_GetStatus(config, &result)!=IIC_ACK)
      {
	Report("#Error receiving Status");
	return 1;
      }
    timeout--;
    if (timeout==0){
      Report("#Timed out waiting for sweep to complete.");
      return 1;
    }
  }while ( result != STATUS_SWEEP_COMPLETE);

  return 0;
}

uint8_t ad9533_IsSweepComplete(ad5933_deviceConfig *config, uint8_t *yesNo){

  uint8_t result;
    
    if(ad5933_GetStatus(config, &result)!=IIC_ACK)
      {
    	Report("#Error receiving Status");
	    return 1;
      }
      
    if (result &= STATUS_SWEEP_COMPLETE)
        *yesNo=1;
    else
        *yesNo=0;

  return 0;
}


/*
 * The 16-bit temperature register is acutally a 13-bit
 * 2's compliment word this is right-justified in bits 13:0.
 */
uint8_t ad5933_ReadTempResult(ad5933_deviceConfig *config,
			      int16_t *temp){

  uint16_t unsignedTempResult;
  uint8_t readByte;
  
  if(Iic_RxByte(config->address, REG_TEMP, &readByte)!=IIC_ACK)
    {
      Report("#Error receiving Status");
      return 1;
    }
  
  unsignedTempResult=(readByte<<8);
  
  if(Iic_RxByte(config->address, REG_TEMP, &readByte)!=IIC_ACK)
    {
      Report("#Error receiving Status");
      return 1;
    }

  unsignedTempResult|=readByte & 0x00FF;

  unsignedTempResult=unsignedTempResult<<2;
 
  (*temp)=((int16_t)unsignedTempResult) / 4;
  
  return 0;
}

uint8_t ad5933_ReadRealResult(ad5933_deviceConfig *config,
			      int16_t *real){

  int16_t tempReal;
  uint8_t readByte;
  
  if(Iic_RxByte(config->address, REG_REAL, &readByte)!=IIC_ACK)
    {
      Report("#Error receiving real msb");
      return 1;
    }
  
  tempReal=(readByte<<8);
  
  if(Iic_RxByte(config->address, REG_REAL+1, &readByte)!=IIC_ACK)
    {
      Report("#Error receiving msb");
      return 1;
    }

  tempReal|=readByte & 0x00FF;

  (*real)=tempReal;

 Report(",%d",tempReal);

  return 0;
}


uint8_t ad5933_ReadImagResult(ad5933_deviceConfig *config,
			      int16_t *imag){

  int16_t tempImag;
  uint8_t readByte;
   
  if(Iic_RxByte(config->address, REG_IMAG, &readByte)!=IIC_ACK)
    {
      Report("#Error receiving image msb");
      return 1;
    }
  
  tempImag=(readByte<<8);
  
  if(Iic_RxByte(config->address, REG_IMAG+1, &readByte)!=IIC_ACK)
    {
      Report("#Error receiving imag lsb");
      return 1;
    }

  tempImag|=readByte & 0x00FF;

  (*imag)=tempImag;
  Report(",%d",tempImag);
  return 0;
}




uint8_t ad5933_InitWithStartFreq(ad5933_deviceConfig *config){

  uint8_t controlRegUpper;
  if(Iic_RxByte(config->address, REG_CONTROL, &controlRegUpper)!=IIC_ACK)
    {
      Report("#Error receiving control register");
      return 1;
    }

  controlRegUpper = (controlRegUpper& 0x0F) | (CONTROL_REG_INIT_W_START_FREQ);
    
  if(Iic_TxByte(config->address, REG_CONTROL, controlRegUpper)!=IIC_ACK)
    {
      Report("#Error transmitting control register");
      return 1;
    }
  
  return 0;

}





uint8_t ad5933_StartSweep(ad5933_deviceConfig *config){

  uint8_t controlRegUpper;
  if(Iic_RxByte(config->address, REG_CONTROL, &controlRegUpper)!=IIC_ACK)
    {
      Report("#Error receiving control register");
      return 1;
    }

  controlRegUpper = (controlRegUpper& 0x0F) | (CONTROL_REG_START_FREQ_SWEEP);
    
  if(Iic_TxByte(config->address, REG_CONTROL, controlRegUpper)!=IIC_ACK)
    {
      Report("#Error transmitting control register");
      return 1;
    }
  
  return 0;

}


uint8_t ad5933_IncrementFreq(ad5933_deviceConfig *config){
 

  uint8_t controlRegUpper;
  if(Iic_RxByte(config->address, REG_CONTROL, &controlRegUpper)!=IIC_ACK)
    {
      Report("#Error receiving control register");
      return 1;
    }

  controlRegUpper = (controlRegUpper& 0x0F) | (CONTROL_REG_INCR_FREQ);
    
  if(Iic_TxByte(config->address, REG_CONTROL, controlRegUpper)!=IIC_ACK)
    {
      Report("#Error transmitting control register");
      return 1;
    }
  
  return 0;

}


uint8_t ad5933_RepeatFreq(ad5933_deviceConfig *config){
 

  uint8_t controlRegUpper;
  if(Iic_RxByte(config->address, REG_CONTROL, &controlRegUpper)!=IIC_ACK)
    {
      Report("#Error receiving control register");
      return 1;
    }

  controlRegUpper = (controlRegUpper& 0x0F) | (CONTROL_REG_REPEAT_FREQ);
    
  if(Iic_TxByte(config->address, REG_CONTROL, controlRegUpper)!=IIC_ACK)
    {
      Report("#Error transmitting control register");
      return 1;
    }
  
  return 0;

}


uint8_t ad5933_MeasureTemp(ad5933_deviceConfig *config){
 

  uint8_t controlRegUpper;
  if(Iic_RxByte(config->address, REG_CONTROL, &controlRegUpper)!=IIC_ACK)
    {
      Report("#Error receiving control register");
      return 1;
    }

  controlRegUpper = (controlRegUpper& 0x0F) | (CONTROL_REG_MEAS_TEMP);
    
  if(Iic_TxByte(config->address, REG_CONTROL, controlRegUpper)!=IIC_ACK)
    {
      Report("#Error transmitting control register");
      return 1;
    }
  
  return 0;

}


uint8_t ad5933_PowerDown(ad5933_deviceConfig *config){
 

  uint8_t controlRegUpper;
  if(Iic_RxByte(config->address, REG_CONTROL, &controlRegUpper)!=IIC_ACK)
    {
      Report("#Error receiving control register");
      return 1;
    }

  controlRegUpper = (controlRegUpper& 0x0F) | (CONTROL_REG_PWR_DOWN);
    
  if(Iic_TxByte(config->address, REG_CONTROL, controlRegUpper)!=IIC_ACK)
    {
      Report("#Error transmitting control register");
      return 1;
    }
  
  return 0;

}

uint8_t ad5933_Standby(ad5933_deviceConfig *config){
 

  uint8_t controlRegUpper;
  if(Iic_RxByte(config->address, REG_CONTROL, &controlRegUpper)!=IIC_ACK)
    {
      Report("#Error receiving control register");
      return 1;
    }

  controlRegUpper = (controlRegUpper& 0x0F) | (CONTROL_REG_STANDBY);
    
  if(Iic_TxByte(config->address, REG_CONTROL, controlRegUpper)!=IIC_ACK)
    {
      Report("#Error transmitting control register");
      return 1;
    }
  
  return 0;

}

uint8_t ad5933_Stop(ad5933_deviceConfig *config){

  uint8_t controlRegLower;
  if(Iic_RxByte(config->address, REG_CONTROL+1, &controlRegLower)!=IIC_ACK)
    {
      Report("#Error receiving control register");
      return 1;
    }

  controlRegLower = (controlRegLower & 0x0F) | (CONTROL_RESET);
    
  if(Iic_TxByte(config->address, REG_CONTROL+1, controlRegLower)!=IIC_ACK)
    {
      Report("#Error transmitting control register");
      return 1;
    }
  
  return 0;

}

uint8_t ad5933_SetPGAx1(ad5933_deviceConfig *config){

  uint8_t controlRegUpper;
  if(Iic_RxByte(config->address, REG_CONTROL, &controlRegUpper)!=IIC_ACK)
    {
      Report("#Error receiving control register");
      return 1;
    }

  controlRegUpper = (controlRegUpper & 0x01) | (CONTROL_PGA_x1);
    
  if(Iic_TxByte(config->address, REG_CONTROL, controlRegUpper)!=IIC_ACK)
    {
      Report("#Error transmitting control register");
      return 1;
    }
  
  return 0;

}


uint8_t ad5933_SetPGAx5(ad5933_deviceConfig *config){

  uint8_t controlRegUpper;
  if(Iic_RxByte(config->address, REG_CONTROL, &controlRegUpper)!=IIC_ACK)
    {
      Report("#Error receiving control register");
      return 1;
    }

  controlRegUpper = (controlRegUpper & 0x01) | (CONTROL_PGA_x5);
    
  if(Iic_TxByte(config->address, REG_CONTROL, controlRegUpper)!=IIC_ACK)
    {
      Report("#Error transmitting control register");
      return 1;
    }
  
  return 0;

}


uint8_t ad5933_SetVoutRange(ad5933_deviceConfig *config, uint8_t range){

  switch (range){
  case CONTROL_OUT_VOLT_2VPP :
  case CONTROL_OUT_VOLT_200MVPP :
  case CONTROL_OUT_VOLT_400MVPP :
  case CONTROL_OUT_VOLT_1VPP :
    break;
    
  default:
    {
      Report("#Invalid Vout Range Chosen. Please use #define options in AD5933.h");
      return 1;
    }  

  }
  
  uint8_t controlRegUpper;
  if(Iic_RxByte(config->address, REG_CONTROL, &controlRegUpper)!=IIC_ACK)
    {
      Report("#Error receiving control register");
      return 1;
    }

  controlRegUpper = (controlRegUpper & ~CONTROL_OUT_VOLT_BITMASK ) | (range);
    
  if(Iic_TxByte(config->address, REG_CONTROL, controlRegUpper)!=IIC_ACK)
    {
      Report("#Error transmitting control register");
      return 1;
    }
  
  return 0;

}

uint8_t ad5933_Reset(ad5933_deviceConfig *config){

  uint8_t controlRegLower;
  if(Iic_RxByte(config->address, REG_CONTROL_LSB, &controlRegLower)!=IIC_ACK)
    {
      Report("#Error receiving control register");
      return 1;
    }
    

  controlRegLower = (controlRegLower) | (CONTROL_RESET);

  uint8_t txResult = Iic_TxByte(config->address, REG_CONTROL_LSB, controlRegLower);
  if(txResult!=IIC_ACK)
    {
      Report("#Error transmitting control register. txResult=%d\r\n",txResult);
      return 1;
    }
  
  return 0;

}


uint8_t ad5933_readRegister(ad5933_deviceConfig *config,uint8_t reg,  uint8_t *data){
   
  if(Iic_RxByte(config->address, reg, data)!=IIC_ACK)
    {
      Report("#Error receiving image msb");
      return 1;
    }
    
  return 0;
}

double ad5933_getMagnitude(int16_t real, int16_t imag){
    double p1 = real*1.0;
    p1=p1*p1;
    double p2 = imag*1.0;
    p2=p2*p2;
    double result = sqrt(p1+p2);
    
    
    //Report("#,m,%f",result);
    
    return result;
}


double ad5933_getPhase(int16_t real, int16_t imag){
    double val = 180.0 /PI;
    double freal = real*1.0;
    double fimag = imag*1.0;
    double result = atan2(fimag,freal) * val;
    
    //Report("#,p,%f",result);
    return result;
}
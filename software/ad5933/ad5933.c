

void ad5933_ConvertFreq(const ad5933_deviceConfig *config,
			uint32_t desiredFreq,
			uint8_t *freqMSB,
			uint8_t *freqMid,
			uint8_t *freqLsb){

  uint64_t fixedResult;
  fixedResult = desiredFreq << 27;
  fixedResult/=config->clockFreq / 4;
  if (freqHex > 0xFFFFFF) {
    return false;   // overflow
  }
  (*freqMSB)=(uint8_t)((fixedResult >> 16) & 0xFF);
  (*freqMid)=(uint8_t)((fixedResult >>  8) & 0xFF);
  (*freqLSB)=(uint8_t)((fixedResult      ) & 0xFF);

}

uint8_t ad5933_SetStartFreq(ad5933_deviceConfig *config,
			    uint32_t desiredFreq){

  uint8_t startFreq[3];

  ad5933_ConvertFreq(config, desiredFreq, &startFreq[0], &startFreq[1], &startFreq[2]);

  if(Iic_RegisterWrite(config->address, REG_START_FREQ, startFreq[0])!=IIC_ACK)
    {
      Report("Error sending Start Frequency");
      return 1;
    }
  if(Iic_TxByte(config->address, REG_START_FREQ + 1, startFreq[1])!=IIC_ACK)
    {
      Report("Error sending Start Frequency");
      return 1;
    }  
  if(Iic_TxByte(config->address, REG_START_FREQ + 2, startFreq[2])!=IIC_ACK)
    {
      Report("Error sending Start Frequency");
      return 1;
    }

  return 0;
}


uint8_t ad5933_SetIncrFreq(ad5933_deviceConfig *config,
			   uint32_t desiredFreq){

  uint8_t incrFreq[3];

  ad5933_ConvertFreq(config, desiredFreq, &incrFreq[0], &incrFreq[1], &incrFreq[2]);

  if(Iic_TxByte(config->address, REG_INCR_FREQ, incrFreq[0])!=IIC_ACK)
    {
      Report("Error sending Incr Frequency");
      return 1;
    }
  if(Iic_TxByte(config->address, REG_INCR_FREQ + 1, incrFreq[1])!=IIC_ACK)
    {
      Report("Error sending Incr Frequency");
      return 1;
    }  
  if(Iic_TxByte(config->address, REG_INCR_FREQ + 2, incrFreq[2])!=IIC_ACK)
    {
      Report("Error sending Incr Frequency");
      return 1;
    }

  return 0;
}
 
uint8_t ad5933_SetIncrCount(ad5933_deviceConfig *config, uint16_t incrNum){

  if(incrNum > NUM_INCR_MAX){
    Report("Increment number out of bounds.");
    return 1;
  }
  
  if(Iic_TxByte(config->address, REG_NUM_INCR, (incrNum>>8) & 0x01)!=IIC_ACK)
    {
      Report("Error sending Incr Frequency");
      return 1;
    }
  if(Iic_TxByte(config->address, REG_NUM_INCR + 1, incrNum )!=IIC_ACK)
    {
      Report("Error sending Incr Frequency");
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
    Report("Invalid factor chosen");
    return 1;
  }

  /* Validate the cycles */
  if(cycles > NUM_SETTLE_CYCLES_MAX){
    Report("Increment number out of bounds.");
    return 1;
  }
}


uint8_t ad5933_GetStatus(ad5933_deviceConfig *config,
			 uint8_t *result){

  if(Iic_RxByte(config->address, REG_STATUS, result)!=IIC_ACK)
    {
      Report("Error receiving Status");
      return 1;
    }
  return 0;
}

uint8_t ad9533_WaitForValidTemp(ad5933_deviceConfig *config){

  uint8_t result;
  uint16_t timeout;
  timeout = 1000;
  
  do{
    if(ad5933_GetStatus(config, result)!=IIC_ACK)
      {
	Report("Error receiving Status");
	return 1;
      }
    timeout--;
    if (timeout==0){
      Report("Timed out waiting for valid temp.");
      return 1;
    }
  }while ( result != STATUS_VALID_TEMP );

  return 0;
}

uint8_t ad9533_WaitForValidImpedance(ad5933_deviceConfig *config){

  uint8_t result;
  uint16_t timeout;
  timeout = 1000;
  
  do{
    if(ad5933_GetStatus(config, result)!=IIC_ACK)
      {
	Report("Error receiving Status");
	return 1;
      }
    timeout--;
    if (timeout==0){
      Report("Timed out waiting for valid impedance.");
      return 1;
    }
  }while ( result != STATUS_VALID_IMPEDANCE );

  return 0;
}

uint8_t ad9533_WaitForSweepComplete(ad5933_deviceConfig *config){

  uint8_t result;
  uint16_t timeout;
  timeout = 100000;
  
  do{
    if(ad5933_GetStatus(config, result)!=IIC_ACK)
      {
	Report("Error receiving Status");
	return 1;
      }
    timeout--;
    if (timeout==0){
      Report("Timed out waiting for sweep to complete.");
      return 1;
    }
  }while ( result != STATUS_SWEEP_COMPLETE);

  return 0;
}

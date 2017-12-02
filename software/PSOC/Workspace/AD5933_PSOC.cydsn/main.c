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
#include "main.h"

//#define NO_AD5933	
#define DEBUG_ON_STARTUP


struct ad5933_ble_data bledata;
struct ad5933_deviceConfig ad5933;
void sendTimeNotification(void);
void sendStatusNotification(void);
void IndicateResults(void);
uint8 sendNotifications; 	/* Flag to check notification enabled/disabled */
CYBLE_API_RESULT_T	apiResult;
uint8_t time;
uint8_t yesNo;
//Create the 
int16_t real;
int16_t imag;
uint8_t status;	
char debug_str[128];
int arrayIndex;      
int incr=0;




int main(void)
{
   
  CyGlobalIntEnable; /* Enable global interrupts. */
  ad5933_deviceConfig *config = &ad5933;                    
  Iic_Init(0);

    
#ifdef DEBUG_UART_ENABLED
  UART_DEB_Start();    
  Report("#Started...\r\n");

#endif
    
 
  /* Place your initialization/startup code here (e.g. MyInst_Start()) */
  config->address=0x0D;

  ad5933_Reset(config);

  if (ad5933_readRegister(config,REG_CONTROL, &status)==0){
    Report("#AD5933 Control Register:%x\r\n", status);
  }else{
    Report("#AD5933 Control Register Read Failed:%x\r\n", status);
  }
 
  // initialize the start conversion byte;
  bledata.ctrl[0]=0;
  CyBle_Start(GeneralEventHandler);
  time=0;

  //Load the initial values into the struct 
  ReadCharacteristic(&bledata.startFreq,sizeof(bledata.startFreq),CYBLE_IMPEDANCE_ANALYZER_STARTFREQUENCY_CHAR_HANDLE);
  ReadCharacteristic(&bledata.incFreq,sizeof(bledata.incFreq),CYBLE_IMPEDANCE_ANALYZER_INCREMENTFREQUENCY_CHAR_HANDLE);
  ReadCharacteristic(bledata.mux,sizeof(bledata.mux),CYBLE_IMPEDANCE_ANALYZER_MUX_CHAR_HANDLE);
  ReadCharacteristic(&bledata.gain,sizeof(bledata.gain),CYBLE_IMPEDANCE_ANALYZER_GAIN_CHAR_HANDLE);
  ReadCharacteristic(&bledata.numIncr,sizeof(bledata.numIncr),CYBLE_IMPEDANCE_ANALYZER_NUMOFINCREMENTS_CHAR_HANDLE);
  ReadCharacteristic(&bledata.voutRange,sizeof(bledata.voutRange),CYBLE_IMPEDANCE_ANALYZER_VOUTRANGE_CHAR_HANDLE);
  ReadCharacteristic(&bledata.settleTime,sizeof(bledata.settleTime),CYBLE_IMPEDANCE_ANALYZER_SETTLETIME_CHAR_HANDLE);

  config->clockFreq=CLK_RATE_HZ_INTERNAL;



#ifdef DEBUG_ON_STARTUP

  EN_Write(1);
  SEL0_Write(0);
  SEL1_Write(1);
 start:              
  incr=0;
  ad5933_SetStartFreq(config, bledata.startFreq);
  ad5933_SetIncrFreq(config,bledata.incFreq);
  ad5933_SetIncrCount(config,bledata.numIncr);
  ad5933_SetSettleTime(config,bledata.settleTime,1);
  ad5933_SetVoutRange(config, bledata.voutRange);
  ad5933_Standby(config);
  ad5933_InitWithStartFreq(config);
  for (int i=0; i<100 ; i++);
  // Wait for a little bit. 
 

  if(ad5933_StartSweep(config)!=0) return 1;
  while(1) {       
  next: 
    
    for (int i=0; i<100 ; i++);
    if(ad9533_WaitForValidImpedance(config)!=0) return 1;
    printf("\r\n%d",bledata.startFreq+bledata.incFreq*incr++);
    if(ad5933_ReadRealResult(config,&real)!=0) return 1;
    if(ad5933_ReadImagResult(config,&imag)!=0) return 1;
    double mag = ad5933_getMagnitude(real,imag);  
    double phase = ad5933_getPhase(real, imag);
  wait:    
    if (ad9533_IsSweepComplete(config, &yesNo) != 0) return 1;
    if (yesNo){
      // goto start;
      break;
    }else
      if(ad5933_IncrementFreq(config)!=0) return 1;
    goto next;
  }

#endif
  
  //EN_Write(0);
  for(;;)
    {
        
      /* Process BLE Events. This API pushes the BLE events from the stack
       * to the generic event callback function in the application. This  function
       * also pushes data from application to BLE stack for transmission */
      CyBle_ProcessEvents();
        
      //set up for calibration round
      if (bledata.ctrl[Z_CTRL_CAL]==1){
            
      }
        
      // Was Start Command Issueed
      if (bledata.ctrl[Z_CTRL_START]==1){
        
        EN_Write(1);
	//Report("Start Command Received\r\n");
	//Update the command data;
	UpdateCharacteristic(&bledata.ctrl,sizeof(bledata.ctrl),CYBLE_IMPEDANCE_ANALYZER_CONTROL_CHAR_HANDLE);      
	//Clear the start command
	bledata.ctrl[Z_CTRL_START]=0;
	
	//Set status to busy
	bledata.sts[2]=1;
	//Update Status 
	UpdateCharacteristic(&bledata.sts,sizeof(bledata.sts),CYBLE_IMPEDANCE_ANALYZER_STATUS_CHAR_HANDLE);   
	//Send Status Notification
	sendStatusNotification();
            
	CyBle_ProcessEvents();     
    

                        
	for( int sel=bledata.mux[0]; sel<=bledata.mux[1];sel++){
	  // ad5933_PerformFrequencySweep(&ad5933,bledata.startFreq,bledata.incFreq,bledata.numIncr,real, imag);
                                                   
	  SEL0_Write(sel);
	  SEL1_Write(sel>>1);
            
                        
#ifndef NO_AD5933	
	  ad5933_SetStartFreq(config, bledata.startFreq);
	  ad5933_SetIncrFreq(config, bledata.incFreq);
	  ad5933_SetIncrCount(config,bledata.numIncr);
	  ad5933_SetSettleTime(config,bledata.settleTime,1);
	  ad5933_Standby(config);
	  
	  ad5933_InitWithStartFreq(config);

	  //TODO: Determine how to wait for sufficient amount of settling time.
	  ad9533_WaitForValidImpedance(config);
#endif  
	  int arrayIndex;

	  for (arrayIndex=0; arrayIndex<bledata.numIncr ; arrayIndex++){
#ifndef NO_AD5933	        
	    if(ad5933_StartSweep(config)!=0) return 1;
	    if(ad9533_WaitForValidImpedance(config)!=0) return 1;
	    if(ad5933_ReadRealResult(config,&real)!=0) return 1;
	    if(ad5933_ReadImagResult(config,&imag)!=0) return 1;
#else
	    real=arrayIndex;
	    imag=1-arrayIndex;
#endif
	    bledata.result.freq= bledata.startFreq+bledata.incFreq*arrayIndex;
	    bledata.result.real=real;
	    bledata.result.imag=imag;
	    bledata.result.tx=sel;
	    bledata.result.rx=sel;
	 
	    IndicateResults();
        
#ifndef NO_AD5933    
	    if(ad5933_IncrementFreq(config)!=0) return 1;
	  
#endif


	  }  
	}

    
#ifndef NO_AD5933      
	if(ad5933_PowerDown(config)!=0) return 1;
#endif    
	
	bledata.sts[2]=0;
	
	//Update the command data;
	UpdateCharacteristic(&bledata.ctrl,sizeof(bledata.ctrl),CYBLE_IMPEDANCE_ANALYZER_CONTROL_CHAR_HANDLE);      
	//Update Status 
	UpdateCharacteristic(&bledata.sts,sizeof(bledata.sts),CYBLE_IMPEDANCE_ANALYZER_STATUS_CHAR_HANDLE);   
	CyBle_ProcessEvents();
	//Send Status Notification
	sendStatusNotification();
	EN_Write(0);          
      }         
        
      // time++;
      UpdateCharacteristic(&time, sizeof(uint8_t),CYBLE_IMPEDANCE_ANALYZER_TIME_CHAR_HANDLE);
      // sendTimeNotification();
        
    }
}

void IndicateResults(void){
 
  CYBLE_GATTS_HANDLE_VALUE_NTF_T		rHandle;	
	
  if(1/*sendIndications*/)
    {
      /* Package the notification data as part of Impedance Characteristic*/
      rHandle.attrHandle = CYBLE_IMPEDANCE_ANALYZER_STATUS_CHAR_HANDLE;				
      rHandle.value.val=&bledata.result;
        
      int size = sizeof(struct ad5933_result);
      rHandle.value.len = 10;

      /* Send the I2C_read Characteristic to the client only when indication is enabled */
      do
	{
	  apiResult = CyBle_GattsIndication(cyBle_connHandle,&rHandle);
	  CyBle_ProcessEvents();
		
	}while((CYBLE_ERROR_OK != apiResult)  && (CYBLE_STATE_CONNECTED == cyBle_state));
		
    }		
    
}
   
/*******************************************************************************
 * Function Name: sendStatusNotification
 ********************************************************************************
 * Summary:
 *    This function notifies the status to the Client
 *
 * Parameters:
 *  void
 *
 * Return:
 *  void
 *
 *******************************************************************************/
void sendStatusNotification(void)
{
  /* stores  notification data parameters */
  CYBLE_GATTS_HANDLE_VALUE_NTF_T		StsHandle;	
	
  if(1/*sendNotifications*/)
    {
      /* Package the notification data as part of Impedance Characteristic*/
      StsHandle.attrHandle = CYBLE_IMPEDANCE_ANALYZER_STATUS_CHAR_HANDLE;				
		
      StsHandle.value.val = bledata.sts;
		
      StsHandle.value.len = sizeof(bledata.sts);

      /* Send the I2C_read Characteristic to the client only when notification is enabled */
      do
	{
	  apiResult = CyBle_GattsNotification(cyBle_connHandle,&StsHandle);
    
			
	  CyBle_ProcessEvents();
		
	}while((CYBLE_ERROR_OK != apiResult)  && (CYBLE_STATE_CONNECTED == cyBle_state));
		
    }		
}


/*******************************************************************************
 * Function Name: sendTimeNotification
 ********************************************************************************
 * Summary:
 *    This function notifies the Time to the Client
 *
 * Parameters:
 *  void
 *
 * Return:
 *  void
 *
 *******************************************************************************/
void sendTimeNotification(void)
{
  /* stores  notification data parameters */
  CYBLE_GATTS_HANDLE_VALUE_NTF_T		TimeHandle;	
	
  if(sendNotifications)
    {
      /* Package the notification data as part of Impedance Characteristic*/
      TimeHandle.attrHandle = CYBLE_IMPEDANCE_ANALYZER_TIME_CHAR_HANDLE;				
		
      TimeHandle.value.val = &time;
		
      TimeHandle.value.len = sizeof(time);

      /* Send the I2C_read Characteristic to the client only when notification is enabled */
      do
	{
	  apiResult = CyBle_GattsNotification(cyBle_connHandle,&TimeHandle);
			
	  CyBle_ProcessEvents();
		
	}while((CYBLE_ERROR_OK != apiResult)  && (CYBLE_STATE_CONNECTED == cyBle_state));
		
    }		
}

/* [] END OF FILE */

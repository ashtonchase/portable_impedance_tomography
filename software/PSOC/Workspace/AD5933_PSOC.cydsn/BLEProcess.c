#include <main.h>
extern struct ad5933_ble_data bledata;
struct ad5933_deviceConfig ad5933;
/*******************************************************************************
 * Function Name: GeneralEventHandler
 ********************************************************************************
 * Summary:
 *        General callback event handler function for BLE component through which
 * application recieves various BLE events.
 *
 * Parameters:
 *  event:		event type. See "CYBLE_EVENT_T" structure in BLE_Stack.h
 *  eventParam: 	parameter associated with the event
 *
 * Return:
 *  void
 *
 *******************************************************************************/
void GeneralEventHandler(uint32 event, void * eventParam)
{
  /* Structure to store data written by Client */	
  CYBLE_GATTS_WRITE_REQ_PARAM_T *wrReqParam;
	
	
  switch(event)
    {
    case CYBLE_EVT_STACK_ON:
      /* BLE stack is on. Start BLE advertisement */
      CyBle_GappStartAdvertisement(CYBLE_ADVERTISING_FAST);
      Report("\r\n#BLE On.\r\n");
      break;
				
    case CYBLE_EVT_GAP_DEVICE_CONNECTED:
      Report("\r\n#--------BLE Device Connected!\r\n");
            
      break;
            
    case CYBLE_EVT_GAP_DEVICE_DISCONNECTED:
      /* This event is generated at GAP disconnection. */
      Report("\r\n#--------BLE Device Disconnected!\r\n");
      /* Register the new color in GATT DB*/			
		
      /* Restart advertisement */
      CyBle_GappStartAdvertisement(CYBLE_ADVERTISING_FAST);
      break;

            
    case CYBLE_EVT_GATTS_WRITE_REQ:
    case CYBLE_EVT_GATTS_WRITE_CMD_REQ:
      /* This event is generated when the connected Central device sends a
       * Write request. The parameter contains the data written */
      Report("\r\n#BLE Write Command Received.\t");
      /* Extract the Write data sent by Client */
      wrReqParam = (CYBLE_GATTS_WRITE_REQ_PARAM_T *) eventParam;
			
  
      /* Handling Notification Enable */
      if(wrReqParam->handleValPair.attrHandle == CYBLE_IMPEDANCE_ANALYZER_TIME_CLIENT_CHARACTERISTIC_CONFIGURATION_DESC_HANDLE)
	{
	  CYBLE_GATT_HANDLE_VALUE_PAIR_T    ImpTimeNotificationCCDHandle;
	  uint8 TimeCCDValue[2];
				
	  /* Extract CCCD Notification enable flag */
	  sendNotifications = wrReqParam->handleValPair.value.val[0];
				
	  /* Write the present SPI notification status to the local variable */
	  TimeCCDValue[0] = sendNotifications;
				
	  TimeCCDValue[1] = 0x00;
				
	  /* Update CCCD handle with notification status data*/
	  ImpTimeNotificationCCDHandle.attrHandle = CYBLE_IMPEDANCE_ANALYZER_TIME_CLIENT_CHARACTERISTIC_CONFIGURATION_DESC_HANDLE;
				
	  ImpTimeNotificationCCDHandle.value.val = TimeCCDValue;
				
	  ImpTimeNotificationCCDHandle.value.len = 2;
				
	  /* Report data to BLE component for sending data when read by Central device */
	  CyBle_GattsWriteAttributeValue(&ImpTimeNotificationCCDHandle, 0, &cyBle_connHandle, CYBLE_GATT_DB_LOCALLY_INITIATED);			
	}
            
      if(wrReqParam->handleValPair.attrHandle == CYBLE_IMPEDANCE_ANALYZER_STATUS_CLIENT_CHARACTERISTIC_CONFIGURATION_DESC_HANDLE)
	{
	  CYBLE_GATT_HANDLE_VALUE_PAIR_T    ImpStsNotificationCCDHandle;
	  uint8 StsCCDValue[2];
				
	  /* Extract CCCD Notification enable flag */
	  sendNotifications = wrReqParam->handleValPair.value.val[0];
				
	  /* Write the present SPI notification status to the local variable */
	  StsCCDValue[0] = sendNotifications;
				
	  StsCCDValue[1] = 0x00;
				
	  /* Update CCCD handle with notification status data*/
	  ImpStsNotificationCCDHandle.attrHandle = CYBLE_IMPEDANCE_ANALYZER_STATUS_CHARACTERISTIC_USER_DESCRIPTION_DESC_HANDLE;
				
	  ImpStsNotificationCCDHandle.value.val = StsCCDValue;
				
	  ImpStsNotificationCCDHandle.value.len = 2;
				
	  /* Report data to BLE component for sending data when read by Central device */
	  CyBle_GattsWriteAttributeValue(&ImpStsNotificationCCDHandle, 0, &cyBle_connHandle, CYBLE_GATT_DB_LOCALLY_INITIATED);			
	}
            
      if(wrReqParam->handleValPair.attrHandle == CYBLE_IMPEDANCE_ANALYZER_RESULT_CLIENT_CHARACTERISTIC_CONFIGURATION_DESC_HANDLE)
	{
	  CYBLE_GATT_HANDLE_VALUE_PAIR_T    ImpStsNotificationCCDHandle;
	  uint8 StsCCDValue[2];
				
	  /* Extract CCCD Notification enable flag */
	  sendNotifications = wrReqParam->handleValPair.value.val[0];
				
	  /* Write the present SPI notification status to the local variable */
	  StsCCDValue[0] = sendNotifications;
				
	  StsCCDValue[1] = 0x00;
				
	  /* Update CCCD handle with notification status data*/
	  ImpStsNotificationCCDHandle.attrHandle = CYBLE_IMPEDANCE_ANALYZER_RESULT_CHARACTERISTIC_USER_DESCRIPTION_DESC_HANDLE;
				
	  ImpStsNotificationCCDHandle.value.val = StsCCDValue;
				
	  ImpStsNotificationCCDHandle.value.len = 2;
				
	  /* Report data to BLE component for sending data when read by Central device */
	  CyBle_GattsWriteAttributeValue(&ImpStsNotificationCCDHandle, 0, &cyBle_connHandle, CYBLE_GATT_DB_LOCALLY_INITIATED);			
	}
            
            
      /* If the attribute handle of the characteristic written to 
       * is equal to that of RGB_LED characteristic, then extract 
       * the RGB LED data */
            
            
      switch(wrReqParam->handleValPair.attrHandle){
            
            
                
      case CYBLE_IMPEDANCE_ANALYZER_CONTROL_CHAR_HANDLE:
	Report("\r\n#BLE-Control.\r\n");
	for(int i=Z_CTRL_START;i<=Z_CTRL_PWRDN; i++){
	  bledata.ctrl[i]=(uint8_t)wrReqParam->handleValPair.value.val[i];
                        
	}
                    
                    
	UpdateCharacteristic(&bledata.ctrl,sizeof(bledata.ctrl),CYBLE_IMPEDANCE_ANALYZER_CONTROL_CHAR_HANDLE);
	break;
                
      case CYBLE_IMPEDANCE_ANALYZER_GAIN_CHAR_HANDLE:
	Report("\r\n#BLE-Gain.\r\n");
	// Range Check
	if(*(wrReqParam->handleValPair.value.val)==1 || *(wrReqParam->handleValPair.value.val)==5){
	  bledata.gain=*(wrReqParam->handleValPair.value.val);
	  /* Update the GATT DB for read characteristics*/
	  UpdateCharacteristic(&bledata.gain,sizeof(bledata.gain),CYBLE_IMPEDANCE_ANALYZER_GAIN_CHAR_HANDLE);
	}
                    
	break;
             
      case CYBLE_IMPEDANCE_ANALYZER_SETTLETIME_CHAR_HANDLE:
	Report("\r\n#BLE-Settle Time.\r\n");
	bledata.settleTime=*(wrReqParam->handleValPair.value.val);
                    
                   
	UpdateCharacteristic(&bledata.settleTime,sizeof(bledata.settleTime),CYBLE_IMPEDANCE_ANALYZER_SETTLETIME_CHAR_HANDLE);
	break;    
                    
      case CYBLE_IMPEDANCE_ANALYZER_VOUTRANGE_CHAR_HANDLE:
	Report("\r\n#BLE-Vout Range.\r\n");
	bledata.voutRange=*(wrReqParam->handleValPair.value.val);
                    
                   
	UpdateCharacteristic(&bledata.voutRange,sizeof(bledata.voutRange),CYBLE_IMPEDANCE_ANALYZER_VOUTRANGE_CHAR_HANDLE);
	break;    
                    
                    
      case CYBLE_IMPEDANCE_ANALYZER_INCREMENTFREQUENCY_CHAR_HANDLE:
	Report("\r\n#BLE-Increment Freq.\r\n");
	bledata.incFreq=*(wrReqParam->handleValPair.value.val);
                    
                   
	UpdateCharacteristic(&bledata.incFreq,sizeof(bledata.incFreq),CYBLE_IMPEDANCE_ANALYZER_INCREMENTFREQUENCY_CHAR_HANDLE);
	break;
                    
      case CYBLE_IMPEDANCE_ANALYZER_MUX_CHAR_HANDLE:
	Report("\r\n#BLE-Mux.\r\n");
	bledata.mux[0]=wrReqParam->handleValPair.value.val[0];
	bledata.mux[1]=wrReqParam->handleValPair.value.val[1];
                    
	UpdateCharacteristic(&bledata.mux,sizeof(bledata.mux),CYBLE_IMPEDANCE_ANALYZER_MUX_CHAR_HANDLE);
	break;
                    
      case CYBLE_IMPEDANCE_ANALYZER_NUMOFINCREMENTS_CHAR_HANDLE:
	Report("\r\n#BLE-Num of Incr.\r\n");
	bledata.numIncr=*(wrReqParam->handleValPair.value.val);
	UpdateCharacteristic(&bledata.numIncr,sizeof(bledata.numIncr),CYBLE_IMPEDANCE_ANALYZER_NUMOFINCREMENTS_CHAR_HANDLE);
	break;
            
      case CYBLE_IMPEDANCE_ANALYZER_STARTFREQUENCY_CHAR_HANDLE:
	Report("\r\n#BLE-Start Freq.\r\n");
	bledata.startFreq=*(wrReqParam->handleValPair.value.val);                
                    
	UpdateCharacteristic(&bledata.startFreq,sizeof(bledata.startFreq),CYBLE_IMPEDANCE_ANALYZER_STARTFREQUENCY_CHAR_HANDLE);
	break;
                             
      default:
	break;
      }
            
            
      if (event == CYBLE_EVT_GATTS_WRITE_REQ)
	{
	  CyBle_GattsWriteRsp(cyBle_connHandle);
	}
            
          
            
    default:    
      break;
    }   	
}

/*******************************************************************************
 * Function Name: UpdateRGBcharacteristic
 ********************************************************************************
 * Summary:
 *        Update the GATT DB with new  to allow Client to read 
 * back updated color values.
 *
 * Parameters:
 *  ledData:		array pointer where color value is stored
 *  len: 		length of the array
 *  attrHandle:	attribute handle of the characteristic
 *
 * Return:
 *  void
 *
 *******************************************************************************/
void UpdateCharacteristic(uint8_t* data, uint8_t len, uint16_t attrHandle)
{
  /* 'capHandle' stores RGB control data parameters */
  CYBLE_GATT_HANDLE_VALUE_PAIR_T		handle;

  /* Update RGB control handle with new values */
  handle.attrHandle = attrHandle;
  handle.value.val = data;
  handle.value.len = len;
	
  /* Update the  attribute value. */
  CyBle_GattsWriteAttributeValue(&handle, 
				 FALSE, 
				 &cyBle_connHandle, 
				 CYBLE_GATT_DB_LOCALLY_INITIATED);
}

void ReadCharacteristic(uint8_t* data, uint8_t len, uint16_t attrHandle)
{
  /* 'capHandle' stores RGB control data parameters */
  CYBLE_GATT_HANDLE_VALUE_PAIR_T		handle;

  /* Update RGB control handle with new values */
  handle.attrHandle = attrHandle;
  handle.value.val = data;
  handle.value.len = len;
	
  /* Update the  attribute value. */
  CyBle_GattsReadAttributeValue(&handle,&cyBle_connHandle,CYBLE_GATT_DB_LOCALLY_INITIATED);
}


/* [] END OF FILE */

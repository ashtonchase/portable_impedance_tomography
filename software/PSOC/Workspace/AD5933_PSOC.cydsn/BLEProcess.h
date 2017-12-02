/*******************************************************************************
File Name: BLEProcess.h

Description:
 This file contains the macros and declaration of BLE related functions.

 ********************************************************************************
Copyright 2014-15, Cypress Semiconductor Corporation.  All rights reserved.
You may use this file only in accordance with the license, terms, conditions,
disclaimers, and limitations in the end user license agreement accompanying
the software package with which this file was provided.
*******************************************************************************/
#if !defined (BLEPROCESS_H)
#define BLEPROCESS_H
#include <project.h>

/********************************** Macors ******************************************/

    
/******************************************************************************************/
extern uint8 sendNotifications;
/******************************* Function Declaration *************************************/
void GeneralEventHandler(uint32 event, void * eventParam);
extern void SendNotification(uint8 *, uint8);

/*******************************************************************************
 * Function Name: UpdateRGBcharacteristic
 ********************************************************************************
 * Summary:
 *        Update the GATT DB with new  to allow Client to read 
 * back updated color values.
 *
 * Parameters:
 *  Data:		array pointer where color value is stored
 *  len: 		length of the array
 *  attrHandle:	attribute handle of the characteristic
 *
 * Return:
 *  void
 *
 *******************************************************************************/
void UpdateCharacteristic(uint8_t* , uint8_t, uint16_t);
/********************************************************************************************/

void ReadCharacteristic(uint8_t* data, uint8_t len, uint16_t attrHandle);
#endif
/* [] END OF FILE */

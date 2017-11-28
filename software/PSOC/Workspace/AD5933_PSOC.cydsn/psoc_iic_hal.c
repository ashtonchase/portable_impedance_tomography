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
#include "iic_hal.h"
#include "main.h"

extern ad5933_deviceConfig ad5933;


/** Initialize the IIC Device
 *
 * @param Configuration data pointer which to initialize. 
 *
 */
void Iic_Init(const Iic_ConfigType *Config){
I2C_scl_SetDriveMode(I2C_scl_DM_RES_UP);
I2C_sda_SetDriveMode(I2C_sda_DM_RES_UP);
    I2C_Start();   
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
			
			//Start a write to get the address pointer set up
			if(I2C_I2CMasterSendStart(addr,I2C_I2C_WRITE_XFER_MODE)!=I2C_I2C_MSTR_NO_ERROR){
				I2C_I2CMasterSendStop();
				return 1;
			}
			            
            if(I2C_I2CMasterWriteByte(ADDRESS_POINTER_CMD)!=I2C_I2C_MSTR_NO_ERROR){
             return 1;   
            }
            
            // Send address
			if(I2C_I2CMasterWriteByte(reg)!=I2C_I2C_MSTR_NO_ERROR){
				I2C_I2CMasterSendStop();
				return 1;
			}
            
            
            
            if(I2C_I2CMasterSendStop()!=I2C_I2C_MSTR_NO_ERROR)
                return 1; 
                
            
			// Send a restart as we don't really want to write.
			if(I2C_I2CMasterSendStart(addr,I2C_I2C_READ_XFER_MODE)!=I2C_I2C_MSTR_NO_ERROR)
			    return 1; 
			
			//read the value
		   *rxValue=I2C_I2CMasterReadByte(I2C_I2C_NAK_DATA);
		
            if(I2C_I2CMasterSendStop()!=I2C_I2C_MSTR_NO_ERROR)
                return 1; 
            else 
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
    // Send the Start
    if(I2C_I2CMasterSendStart(addr,I2C_I2C_WRITE_XFER_MODE)!=I2C_I2C_MSTR_NO_ERROR){
				I2C_I2CMasterSendStop();
				return 1;
			}
    // Sned the register to write to
    if(I2C_I2CMasterWriteByte(reg)!=I2C_I2C_MSTR_NO_ERROR){
				I2C_I2CMasterSendStop();
				return 1;
			}
    // Send the value
    if(I2C_I2CMasterWriteByte(txValue)!=I2C_I2C_MSTR_NO_ERROR){
				I2C_I2CMasterSendStop();
				return 1;
			}
    // Send the stop
    if(I2C_I2CMasterSendStop()==I2C_I2C_MSTR_NO_ERROR)
	    return 0; 
    else 
	    return 1;

		}




/* [] END OF FILE */

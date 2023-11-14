#ifndef I2C_SLAVE_H
#define I2C_SLAVE_H

#include "driver/i2c.h"



#define I2C_SLAVE_RX_BUF_LEN 512 
#define I2C_SLAVE_TX_BUF_LEN 512 
#define DEVICE_ADDRESS 42


#define I2C_SLAVE_NUM I2C_NUM_1
#define I2C_SLAVE_SDA_IO 21
#define I2C_SLAVE_SCL_IO 22

void i2c_slave_init();



#endif // I2C_SLAVE_H
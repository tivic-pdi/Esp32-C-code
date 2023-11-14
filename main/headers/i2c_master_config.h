#ifndef I2C_MASTER_H
#define I2C_MASTER_H

#include "driver/i2c.h"



#define I2C_MASTER_NUM I2C_NUM_0
#define I2C_MASTER_SDA_IO 27
#define I2C_MASTER_SCL_IO 26
#define MASTER_FREQ_HZ 100000

void i2c_master_init();



#endif // I2C_MASTER_H
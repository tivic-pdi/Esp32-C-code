#include <stdio.h>
#include "driver/i2c.h"

#define I2C_MASTER_NUM      I2C_NUM_0

#define PCF8574_ADDR 0x38

void set_state(uint8_t b); 

void set_state_pin(uint8_t b, int i);
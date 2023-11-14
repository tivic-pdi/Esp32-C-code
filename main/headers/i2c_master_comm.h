#include <stdio.h>
#include "driver/i2c.h"


#define I2C_MASTER_NUM      I2C_NUM_0

#define PCF8574_ADDR 0x38


#ifndef EXPANDERS_H
#define EXPANDERS_H

typedef struct {
    uint8_t adress;
    uint8_t ports[16];


}io_expander;

#endif


void set_state(uint8_t b); 

void set_state_pin(uint8_t b, int i);

uint8_t read_imputs();

void all_on();

void all_of();


uint8_t invert_byte(uint8_t b);

uint8_t invert_bit(uint8_t b, int i);

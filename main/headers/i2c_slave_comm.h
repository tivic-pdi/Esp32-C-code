#include "driver/i2c.h"

#define BUF_SIZE 512

int get_bit(uint8_t b, int i);




uint8_t send_state();

/* uint8_t i2c_slave_receive(uint8_t* data, size_t data_size); */
void i2c_slave_receive(uint8_t data[BUF_SIZE]);


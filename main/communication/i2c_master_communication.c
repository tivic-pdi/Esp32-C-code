#include "driver/i2c.h"
#include "../headers/i2c_master_comm.h"



void set_state(uint8_t b) {
        i2c_cmd_handle_t cmd = i2c_cmd_link_create();
        i2c_master_start(cmd);
        i2c_master_write_byte(cmd, (PCF8574_ADDR << 1) | I2C_MASTER_WRITE, true);
        uint8_t ib = invert_byte(b);
        i2c_master_write_byte(cmd, b, true);
        i2c_master_stop(cmd);
        i2c_master_cmd_begin(I2C_MASTER_NUM, cmd, 1000 / portTICK_PERIOD_MS);
        i2c_cmd_link_delete(cmd);
        // vTaskDelay(1000 / portTICK_PERIOD_MS); 
}


void set_state_pin(uint8_t b, int i){
        uint8_t bit = 1 << (7 - i);
        i2c_cmd_handle_t cmd = i2c_cmd_link_create();
        i2c_master_start(cmd);
        i2c_master_write_byte(cmd, (PCF8574_ADDR << 1) | I2C_MASTER_WRITE, true);
        i2c_master_write_byte(cmd, bit, true);
        i2c_master_stop(cmd);
        i2c_master_cmd_begin(I2C_MASTER_NUM, cmd, 1000 / portTICK_PERIOD_MS);
        i2c_cmd_link_delete(cmd);
        // vTaskDelay(2000 / portTICK_PERIOD_MS); 
}


uint8_t read_inputs() {
    uint8_t inputs = 0;

    // Set the outputs while keeping P6 and P7 high to enable input reading
//     uint8_t data_to_write = (output_state & 0x3F) | 0xC0; // 0x3F (00111111), 0xC0 (11000000)

    // Start by writing to the device to set the output pins and prepare input pins
    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, (PCF8574_ADDR << 1) | I2C_MASTER_READ, true);
    i2c_master_write_byte(cmd, 0xC0, true); // P6 and P7 high
    i2c_master_read_byte(cmd, &inputs, I2C_MASTER_LAST_NACK);
    i2c_master_stop(cmd);
    i2c_master_cmd_begin(I2C_MASTER_NUM, cmd, 1000 / portTICK_PERIOD_MS);
    i2c_cmd_link_delete(cmd);

    // The inputs variable now contains the states of P6 and P7 in the two least significant bits
//     inputs >>= 6; // Shift to get P6 and P7 as the least significant bits

    return inputs;
}






void all_on(){
        set_state(0x00);
}


void all_off(){
        set_state(0xFF);
}

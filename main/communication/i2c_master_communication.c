#include "driver/i2c.h"
#include "../headers/i2c_master_comm.h"



void set_state(uint8_t b) {
        i2c_cmd_handle_t cmd = i2c_cmd_link_create();
        i2c_master_start(cmd);
        i2c_master_write_byte(cmd, (PCF8574_ADDR << 1) | I2C_MASTER_WRITE, true);
        i2c_master_write_byte(cmd, b, true);
        i2c_master_stop(cmd);
        i2c_master_cmd_begin(I2C_MASTER_NUM, cmd, 1000 / portTICK_PERIOD_MS);
        i2c_cmd_link_delete(cmd);
        vTaskDelay(1000 / portTICK_PERIOD_MS); 
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
        vTaskDelay(2000 / portTICK_PERIOD_MS); 
}



// void set_state(uint8_t b) {
//     for (int i = 7; i >= 0; i--) {
//         uint8_t mask = 1 << i;
//         uint8_t bit = (b & mask) >> i;

//         i2c_cmd_handle_t cmd = i2c_cmd_link_create();
//         i2c_master_start(cmd);
//         i2c_master_write_byte(cmd, (PCF8574_ADDR << 1) | I2C_MASTER_WRITE, true);
//         i2c_master_write_byte(cmd, b, true);
//         i2c_master_stop(cmd);
//         i2c_master_cmd_begin(I2C_MASTER_NUM, cmd, 1000 / portTICK_PERIOD_MS);
//         i2c_cmd_link_delete(cmd);
        
//     }

//     vTaskDelay(1000 / portTICK_PERIOD_MS); 
// }

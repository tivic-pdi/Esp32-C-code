#include "driver/i2c.h"
#include "../headers/i2c_master_comm.h"

#include "esp_log.h"



void set_state(uint8_t b) {
        i2c_cmd_handle_t cmd = i2c_cmd_link_create();
        i2c_master_start(cmd);
        i2c_master_write_byte(cmd, (PCF8574_ADDR << 1) | I2C_MASTER_WRITE, true);
        // uint8_t ib = invert_byte(b);
        // i2c_master_write_byte(cmd, ib, true);
        i2c_master_write_byte(cmd, ~b, true);
        i2c_master_stop(cmd);
        i2c_master_cmd_begin(I2C_MASTER_NUM, cmd, 800 / portTICK_PERIOD_MS);
        i2c_cmd_link_delete(cmd);
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
    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, (PCF8574_ADDR << 1) | I2C_MASTER_READ, true);
    i2c_master_write_byte(cmd, 0xC0, true); // P6 and P7 high
    i2c_master_read_byte(cmd, &inputs, I2C_MASTER_LAST_NACK);
    i2c_master_stop(cmd);
    i2c_master_cmd_begin(I2C_MASTER_NUM, cmd, 1000 / portTICK_PERIOD_MS);
    i2c_cmd_link_delete(cmd);
    return inputs;
}






void all_on(){
        set_state(0xFF);
}


void all_off(){
        set_state(0x00);
}



uint8_t invert_byte(uint8_t b){
        uint8_t inverted_byte = 0b00000000;
        ESP_LOGI("BYTE BEFORE", "byte value: %u", b);
                for(int i = 0; i < 7; i++){
                        inverted_byte =  inverted_byte + (invert_bit(b, i));
                }
        return inverted_byte;
}

uint8_t invert_bit(uint8_t b, int i){
        ESP_LOGI("i value", ": %d", i);

        uint8_t mask = 1 << (7 - i);
        uint8_t bit = (b & mask) >> (7 - i);
        if(bit == 1){
                return 0 << (7 - i);
        }else{
                return 1 << (7 - i);
        }
}
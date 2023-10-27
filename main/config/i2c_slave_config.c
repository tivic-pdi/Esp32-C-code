#include "driver/i2c.h"
#include "../headers/i2c_slave_config.h"
#include "sdkconfig.h"



void i2c_slave_init() {
    i2c_config_t conf = {
        .mode = 0,
        .sda_io_num = I2C_SLAVE_SDA_IO,
        .sda_pullup_en = GPIO_PULLUP_ENABLE,
        .scl_io_num = I2C_SLAVE_SCL_IO,
        .scl_pullup_en = GPIO_PULLUP_ENABLE,
        .slave.addr_10bit_en = 0,
        .slave.slave_addr = DEVICE_ADDRESS
    };
    i2c_param_config(I2C_SLAVE_NUM, &conf);
    i2c_driver_install(I2C_SLAVE_NUM, conf.mode, 0, 0, 0);
}
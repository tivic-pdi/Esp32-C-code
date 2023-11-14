#include "driver/i2c.h"
#include "../headers/i2c_slave_config.h"
#include "sdkconfig.h"
#include "esp_log.h"



void i2c_slave_init() {
    int i2c_slave_port = I2C_SLAVE_NUM;
    i2c_config_t conf = {
        .mode = I2C_MODE_SLAVE,
        .sda_io_num = I2C_SLAVE_SDA_IO,
        .sda_pullup_en = GPIO_PULLUP_ENABLE,
        .scl_io_num = I2C_SLAVE_SCL_IO,
        .scl_pullup_en = GPIO_PULLUP_ENABLE,
        .slave.addr_10bit_en = 0,
        .slave.slave_addr = DEVICE_ADDRESS
    };
    esp_err_t err = i2c_param_config(i2c_slave_port, &conf);
    i2c_driver_install(i2c_slave_port, conf.mode, I2C_SLAVE_RX_BUF_LEN, I2C_SLAVE_TX_BUF_LEN, 0);
}
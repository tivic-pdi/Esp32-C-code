#pragma once



// #define I2C_SLAVE_SCL_IO CONFIG_I2C_SLAVE_SCL               /*!< gpio number for i2c slave clock */
// #define I2C_SLAVE_SDA_IO CONFIG_I2C_SLAVE_SDA               /*!< gpio number for i2c slave data */
// #define I2C_SLAVE_NUM I2C_NUMBER(CONFIG_I2C_SLAVE_PORT_NUM) /*!< I2C port number for slave dev */
#define I2C_SLAVE_TX_BUF_LEN (2 * DATA_LENGTH)              /*!< I2C slave tx buffer size */
#define I2C_SLAVE_RX_BUF_LEN (2 * DATA_LENGTH)              /*!< I2C slave rx buffer size */
#define ESP_SLAVE_ADDR CONFIG_I2C_SLAVE_ADDRESS 



#define DEVICE_ADDRESS 0x42

#define I2C_SLAVE_NUM I2C_NUM_1
#define I2C_SLAVE_SDA_IO 21
#define I2C_SLAVE_SCL_IO 22

void i2c_slave_init();

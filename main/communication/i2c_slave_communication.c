#include "driver/i2c.h"
#include "../headers/i2c_slave_comm.h"
#include "../headers/i2c_slave_config.h"


#include "../headers/in_ports_config.h"
#include "driver/gpio.h"


typedef struct {
    uint8_t* data;
    int size;
} TaskParams;



int get_bit(uint8_t b, int i){
    uint8_t mask = 1 << i;
    return (b & mask) >> i;
}




uint8_t send_state();



// void i2c_slave_receive(uint8_t* data, size_t size) {
//     i2c_slave_read_buffer(I2C_SLAVE_NUM, data, size, portMAX_DELAY);
// }


// void i2c_slave_task(void* arg) {
//     uint8_t* data = (uint8_t*) malloc(1024);
//     int size;
//     while (1) {
//         size = i2c_slave_read_buffer(I2C_SLAVE_NUM, data, 1024, 1000 / portTICK_PERIOD_MS);
//         if (size > 0) {
            
//         }
//     }
// }

void i2c_slave_receive(void* param){
    uint8_t* data = (uint8_t*) param;
    // uint8_t* data = (uint8_t*) malloc(1024);
    // int size = 0;
    while(1){
    // gpio_set_level(LED_OUT, 1);
    int size = i2c_slave_read_buffer(I2C_SLAVE_NUM, data, 1024, 1000 / portTICK_PERIOD_MS);
    // i2c_slave_read_buffer(I2C_SLAVE_NUM, &data, 1, 1000 / portTICK_PERIOD_MS);

    
    

    if(size>0){
        gpio_set_level(LED_OUT, 1);
        
    }else{
        gpio_set_level(LED_OUT, 0);
        *data = 0;
    }

     vTaskDelay(1000 / portTICK_PERIOD_MS);

    //  gpio_set_level(LED_OUT, 0);
    }

    
}


// void teste(void* param){
//     uint8_t* data = (uint8_t*) param;

//     for(int i = 0; i<= 10; i++){
//         if(i%2 == 0){
//             gpio_set_level(LED_OUT, 1);
//         }else{
//             gpio_set_level(LED_OUT, 0);
//         }
//         vTaskDelay(1000 / portTICK_PERIOD_MS);
//     }
// }




// void respond_to_master(uint8_t* received_data, int size) {
//     uint8_t response_data[1024];

//     // Aqui, você pode adicionar o código para processar os dados recebidos e criar uma resposta
//     // Por exemplo, você pode querer responder com o mesmo dado recebido:
//     memcpy(response_data, received_data, size);

//     i2c_slave_write_buffer(I2C_SLAVE_NUM, response_data, size, 1000 / portTICK_PERIOD_MS);
// }
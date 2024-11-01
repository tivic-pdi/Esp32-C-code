#include "driver/i2c.h"
#include "../headers/i2c_slave_comm.h"
#include "../headers/i2c_slave_config.h"


#include "../headers/in_ports_config.h"
#include "../headers/in_ports_comm.h"

#include "../headers/i2c_master_comm.h"
#include "driver/gpio.h"
#include <string.h>

#include "esp_log.h"


typedef struct {
    uint8_t* data;
    int size;
} TaskParams;



int get_bit(uint8_t b, int i){
    uint8_t mask = 1 << (7 - i);
    // uint8_t mask = 1 << (7 - i);
    return (b & mask) >> (7 - i);
    
}



//TODO:
//Implementar a função de envio de estado para o raspberry.
//Esses estados ainda não estão definidos (regra de negócio).


uint8_t send_state();

// uint8_t i2c_slave_receive(uint8_t* data, size_t data_size){
//     int size;
    
//     gpio_set_level(LED_OUT, 1);
//     size = i2c_slave_read_buffer(I2C_SLAVE_NUM, data, data_size, 1000 / portTICK_PERIOD_MS);
            
//         for(int i = 0; i < size; i++){
//             gpio_set_level(LED_OUT,!gpio_get_level(LED_OUT));
//             vTaskDelay(1000 / portTICK_PERIOD_MS);   
//         }

//         if(size>0){
//             gpio_set_level(LED_OUT, 1);
//             set_state(1);
            
//         }else{
//             gpio_set_level(LED_OUT, 0);
//             set_state(0);
//         }

//         vTaskDelay(1000 / portTICK_PERIOD_MS);

//     return *data;
   
// }



//TODO:
//Verificar a relação do buffer com o estouro de memória do esp (teste de stress).

void i2c_slave_receive(uint8_t data[BUF_SIZE]){
    // uint8_t data[BUF_SIZE];
    // int size;
    // int i = 0;
    // while (1) {
        // Limpe o buffer
        // memset(data, 0, BUF_SIZE);
        int ret = i2c_slave_read_buffer(I2C_SLAVE_NUM, data, BUF_SIZE, 1000/portMAX_DELAY);
        // Leitura contínua do buffer até receber a condição de parada do mestre
        for (int i = 0; i < BUF_SIZE; i++) {
            // Espere até que o dado esteja disponível ou uma condição de parada seja recebida
            

            
            // i2c_slave_write_buffer(I2C_SLAVE_NUM, &data, 1, 1000/portMAX_DELAY );    
            // int ret = i2c_slave_read_buffer(I2C_SLAVE_NUM, &data[i], 1, 1000/portMAX_DELAY);
            // i2c_slave_write_buffer(I2C_SLAVE_NUM, &data[i], 1, 1000/portMAX_DELAY );    
            
            // if (ret == 4) {
            //     // ESP_LOGI("SLAVE", "Data received: %d", data);
            //     ESP_LOGI("SLAVE", "Data received [%d]: %d", i, data[i]);
                
            // } else if (ret == 0) {

            //     ESP_LOGI("SLAVE", "STOP condition received");
            //     break;  // Saia do loop quando a condição de parada for recebida
            // }
            
                // ESP_LOGI("SLAVE", "Data received: %d", data);
                ESP_LOGI("SLAVE", "Data received [%d]: %d", i, data[i]);
                
            
            if (data[i] == 0x00) {

                ESP_LOGI("SLAVE", "STOP condition received");
                break;  // Saia do loop quando a condição de parada for recebida
            }


            
        }

        

        // // Processamento de dados (se necessário)
        // if (size > 0) {
        //     // Seu código para processar os dados recebidos vai aqui
        // }
    // }
    
    // size = i2c_slave_read_buffer(I2C_SLAVE_NUM, data, data_size, 1000 / portTICK_PERIOD_MS);
            
        // for(int i = 0; i < size; i++){
        //     gpio_set_level(LED_OUT,!gpio_get_level(LED_OUT));
        //     vTaskDelay(5000 / portTICK_PERIOD_MS);   
        // }

        // if(size>0){
        //     // gpio_set_level(LED_OUT, 1);
        //     for(size = 0; size < BUF_SIZE; size++){
        //         set_state(data[size]);
        //     }
        //     set_state(1);
            
        // }else{
        //     gpio_set_level(LED_OUT, 0);
        //     set_state(1);
        // }

        // vTaskDelay(1000 / portTICK_PERIOD_MS);

    // return &data ;
   
}






#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>

#include "esp_log.h"

#include "sdkconfig.h"

#include <string.h>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include "headers/i2c_master_config.h"
#include "headers/i2c_slave_config.h"
#include "headers/i2c_master_comm.h"
#include "headers/i2c_slave_comm.h"

#include "headers/in_ports_config.h"
#include "headers/in_ports_comm.h"
 
#include "headers/semaphore/semaphore_control.h"
#include "headers/semaphore/ports_map.h"

#include "esp_timer.h"

#include "esp_task_wdt.h"



#include "driver/gpio.h"

SemaphoreHandle_t print_mux = NULL;

//Array de dados que serão recebidos do mestre pelo I2C. Esse array receberá valor 0x00 quando o mestre parar de enviar dados.
uint8_t data_array[BUF_SIZE];
//Array que irá armazenar os comandos recebidos do mestre (pelo data_array) para quer as informações recebidas pelo mestre sejam mantidas.
uint8_t command_array[BUF_SIZE];
//Variável que irá armazenar o valor do comando recebido do mestre.
uint8_t data;
uint8_t temp = 0x00;
//Variável que irá armazenar o valor do comando recebido do mestre.
uint8_t command;
bool has_master = false;

int i = 0;


void master_routine(){
    for(int i = 0; i < sizeof(command_array)/sizeof(command_array[0]); i++){
        if(command_array[i] == 0x00){
            break;
        }

        if(i%2 == 0){
            set_state(command_array[i], temp);
            vTaskDelay((1000*command_array[i + 1])/portTICK_PERIOD_MS);
        }
    }
}

void main_task(){  
    while(1) {
        

        //O ESP32 irá receber os dados do mestre e armazenar no array data_array.
        i2c_slave_receive(data_array);
        //A variável data irá receber o primeiro valor do array data_array.
        data = data_array[0];


        //Se o valor de data for diferente de 0x00, significa que o mestre está enviando dados.
        if(data != 0x00){
            has_master = true;
            //Considerando que data é volátil, a variável command irá armazenar o valor de data para o comportamento do sistema não ser alterado no caso de data ser alterado.
            command = data;
            ESP_LOGI("Command value:", "The value set for command is: %u", command);
            for(int i = 1; i < sizeof(data_array)/sizeof(data_array[0]); i++){
               if(data_array[i] == 0x00){
                    ESP_LOGI("Populating command_array (BREAKING):", "The value is: %u", data_array[i]);
                    break;

                }
                command_array[i-1] = data_array[i];    
            }
            
        }else{
            has_master = false;
        }

        // ESP_LOGI("Inputs:", "The value of inputs are: %u", get_input_state());

        if(has_master){
            // ESP_LOGI("Command after master:", "The value of command is: %u", data);
            // ESP_LOGI("GET BIT:", "The value of command first bit is: %d", get_bit(command, 7));
            if(get_bit(command, 0) == 1){
                // ESP_LOGI("Data if:", "The value of data is: %u", command);
                //bypass off -> repetidor on
                if(command == 0b10000000){

                    gpio_set_level(LED_OUT, 1);
                    
                    set_state(~get_input_state(), temp);
                    
                //bypass on -> repetidor off
                }else if (command ==  0b11000000){
                    gpio_set_level(LED_OUT, 0);
                    // transicao_routine();
                    master_routine();
                
                }
                //plan routine
                else if(command == 0b10000001){
                    ESP_LOGI("PLAN ROUTINE", "PLAN ROUTINE CALLED WITH MASTER");
                    set_new_plan(command_array);
                    if(end_plan()){
                        plan_setup();
                    }else{
                        plan_control(get_time());
                    }
                     
                    
                }
                //all off
                else if(command == 0b10000010){
                    all_off();

                
                }
                //all on
                else if(command == 0b10000011){
                    all_on();
                }


            }else{
                //  ESP_LOGI("Data else:", "The value of command is: %u", command);

                set_state(command, command);
                // vTaskDelay(5000 / portTICK_PERIOD_MS);
                vTaskDelay(100 / portTICK_PERIOD_MS);
            }
        }else{
            //Em caso do mestre parar de enviar dados, o sistema irá manter o último comando recebido.
            //O primeiro bit do comando é utilizado para definir se o comando é para alterar o estado dos semáforos ou para manter o estado atual.
            if(get_bit(command, 0) == 1){
                // ESP_LOGI("Data if:", "The value of command is: %u", command);
                //bypass off -> repetidor on
                if(command == 0b10000000){
                    gpio_set_level(LED_OUT, 1);
                    set_state(~get_input_state(), temp);
                }
                ///bypass on -> repetidor off
                else if (command ==  0b11000000){
                    // ESP_LOGI("Master routine:", "calling the master_routine method");
                    master_routine();
                }
                else if(command == 0b10000001){
                    // ESP_LOGI("PLAN ROUTINE", "PLAN ROUTINE CALLED");
                    if(end_plan()){
                        plan_setup();
                    }else{
                        plan_control(get_time());
                    }                    
                    
                }
                else{
                    set_state(command, command);

                }
            //Se o primeiro bit do comando for 0, o sistema irá manter o estado atual dos semáforos.
            }else{
                
                stand_routine();
                
            }

            
        }
        
        vTaskDelay(10 / portTICK_PERIOD_MS);
        // vTaskDelay(5000 / portTICK_PERIOD_MS);
        
        memset(data_array, 0, sizeof(data_array));
        
    }
}


// void i2c_task(void *pvParameters) {
//     while (1) {
//         i2c_slave_receive(data_array);
//         data = data_array[0];
//         // Coloque o código para processar os dados recebidos aqui

//         vTaskDelay(10 / portTICK_PERIOD_MS); // Ajuste conforme necessário
//     }
// }





void app_main(){
    
    i2c_master_init();
    i2c_slave_init();
    in_ports_init();
    init_semaphore_control();

    xTaskCreate(main_task, "main_task", 4096, &data, 10, NULL);
    // xTaskCreate(i2c_task, "i2c_task", 4096, data_array, 10, NULL);
        
}


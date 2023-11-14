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

#include "esp_task_wdt.h"



#include "driver/gpio.h"

SemaphoreHandle_t print_mux = NULL;


// uint8_t adresses[] = {0b00000111, 0b00111000, 0b00101101, 0b00000000};
uint8_t adresses[] = {0b11111110, 0b11111101, 0b11111011, 0b11110111,0b11101111,0b11011111,0b10111111,0b01111111};
uint8_t data_array[BUF_SIZE];
uint8_t command_array[BUF_SIZE];
uint8_t data;
uint8_t command;
bool has_master = false;
int i = 0;


void stand_routine(){
    for(int i = 0; i < sizeof(adresses)/sizeof(adresses[0]); i++){
        set_state(adresses[i]);
        vTaskDelay(50 / portTICK_PERIOD_MS);
    }

}


void master_routine(){
    for(int i = 0; i < sizeof(command_array)/sizeof(command_array[0]); i++){
        if(command_array[i] == 0x00){
            break;
        }

        if(i%2 == 0){
            set_state(command_array[i]);
            // vTaskDelay(3000/portTICK_PERIOD_MS);
            vTaskDelay((1000*command_array[i + 1])/portTICK_PERIOD_MS);
        }
        

        
    }
}


// void main_task(void *paramenter){  
void main_task(){  
    while(1) {
        

        i2c_slave_receive(data_array);
        data = data_array[0];


        if(data != 0x00){
            gpio_set_level(LED_OUT, 1);
            has_master = true;
            command = data;
            ESP_LOGI("Command value:", "The value set for command is: %u", command);
            for(int i = 1; i < sizeof(data_array)/sizeof(data_array[0]); i++){
               if(data_array[i] == 0x00){
                    // command_array[i] = data_array[i];
                    ESP_LOGI("Populating command_array (BREAKING):", "The value is: %u", data_array[i]);
                    break;

                }
                command_array[i-1] = data_array[i];    
            }
            
        }else{
            gpio_set_level(LED_OUT, 0);
            has_master = false;
        }

        if(has_master){
            ESP_LOGI("Command after master:", "The value of command is: %u", data);
            ESP_LOGI("GET BIT:", "The value of command first bit is: %d", get_bit(command, 7));
            if(get_bit(command, 0) == 1){
                ESP_LOGI("Data if:", "The value of data is: %u", command);
                //bypass off -> repetidor on
                if(command == 0b10000000){

                    set_state(get_input_state());
                    
                ///bypass on -> repetidor off
                }else if (command ==  0b11000000){
                    ESP_LOGI("Master routine:", "calling the master_routine method");
                   
                    master_routine();
                    //read in
                    //set out
                }else{

                }

            }else{
                 ESP_LOGI("Data else:", "The value of data is: %u", data);

                set_state(data);
                vTaskDelay(5000 / portTICK_PERIOD_MS);
            }
        }else{
            if(get_bit(command, 0) == 1){
                ESP_LOGI("Data if:", "The value of data is: %u", command);
                //bypass off -> repetidor on
                if(command == 0b10000000){

                    set_state(get_input_state());
                    
                ///bypass on -> repetidor off
                }else if (command ==  0b11000000){
                    ESP_LOGI("Master routine:", "calling the master_routine method");
                   
                    master_routine();
                    //read in
                    //set out
                }else{

                }

            }else{
                ESP_LOGI("Standard routine:", "");
                stand_routine();
            }

            
        }
        
        // esp_task_wdt_reset();

        vTaskDelay(10 / portTICK_PERIOD_MS);
        
        memset(data_array, 0, sizeof(data_array));
        // vTaskDelay(500 / portTICK_PERIOD_MS);
        
    }
}





void app_main(){
    


    // uint8_t adresses[] = {0b00110011, 0b00110101, 0b00011110, 0b00101110};
    
    //Inicia sem detecção de um master
    

    i2c_master_init();
    i2c_slave_init();
    in_ports_init();

    // xTaskCreate(i2c_slave_receive, "i2c_slave_receive", 4096, &data, 10, NULL);
    
    // xTaskCreate(teste, "i2c_slave_receive", 2048, &data, 2048, NULL);

    xTaskCreate(main_task, "main_task", 4096, &data, 10, NULL);
    // main_task();
//Delisgar by pass, repetir convencional 10000000
//Religar bypass, 11000000
//Rotina x 10000001
//Desligar todos os focos 1000010


        


    // #controle de foco
    // G1_VERMELHO = 0b00000001
    // G1_AMARELO = 0b00000010
    // G1_VERDE = 0b00000100

    // G2_VERMELHO = 0b00001000
    // G2_AMARELO = 0b00010000
    // G2_VERDE = 0b00100000

    // #comandos
    // BYPASS_OFF = 0b10000000
    // BYPASS_ON = 0b11000000

    // ALL_OFF = 0b10000010
    // ALL_ON = 0b10000011

    // ROTINA_X = 0b10000001



        
}

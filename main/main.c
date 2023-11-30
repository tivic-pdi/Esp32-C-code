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

uint8_t adresses[] = {
    0b00000001,
    0b00000010,
    0b00000100,
    0b00001000,
    0b00010000,
    0b00100000,
    0b01000000,
    0b10000000
};


uint8_t yellows[] = {
    0b00010010,
    0b00000000,
    0b00010010,
    0b00000000,
    0b00010010,
    0b00000000,
    0b00010010,
    0b00000000,
};

uint8_t data_array[BUF_SIZE];
uint8_t command_array[BUF_SIZE];
uint8_t data;
uint8_t command;
bool has_master = false;
int i = 0;


uint8_t state = 0b00000000;

void stand_routine(){
    for(int i = 0; i < sizeof(adresses)/sizeof(adresses[0]); i++){
        set_state(adresses[i]);
        vTaskDelay(100 / portTICK_PERIOD_MS);
    }

}

void transicao_routine(){
    for(int i = 0; i < sizeof(yellows)/sizeof(yellows[0]); i++){
        set_state(yellows[i]);
        vTaskDelay(100 / portTICK_PERIOD_MS);
    }

}



void master_routine(){
    for(int i = 0; i < sizeof(command_array)/sizeof(command_array[0]); i++){
        if(command_array[i] == 0x00){
            break;
        }

        if(i%2 == 0){
            set_state(command_array[i]);
            vTaskDelay((1000*command_array[i + 1])/portTICK_PERIOD_MS);
        }
    }
}

void main_task(){  
    while(1) {
        

        i2c_slave_receive(data_array);
        data = data_array[0];


        if(data != 0x00){
            // gpio_set_level(LED_OUT, 1);
            has_master = true;
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

        ESP_LOGI("Inputs:", "The value of inputs are: %u", get_input_state());

        if(has_master){
            ESP_LOGI("Command after master:", "The value of command is: %u", data);
            ESP_LOGI("GET BIT:", "The value of command first bit is: %d", get_bit(command, 7));
            if(get_bit(command, 0) == 1){
                ESP_LOGI("Data if:", "The value of data is: %u", command);
                //bypass off -> repetidor on
                if(command == 0b10000000){

                    gpio_set_level(LED_OUT, 1);
                    
                    set_state(~get_input_state());
                    
                //bypass on -> repetidor off
                }else if (command ==  0b11000000){
                    gpio_set_level(LED_OUT, 0);
                    // transicao_routine();
                    master_routine();
                //routine X
                }else if(command == 0b10000001){

                    //all off
                }else if(command == 0b10000010){
                    gpio_set_level(LED_OUT, 0);
                    all_off();

                //all on
                }else if(command == 0b10000011){
                    gpio_set_level(LED_OUT, 0);
                    all_on();
                }


            }else{
                 ESP_LOGI("Data else:", "The value of command is: %u", command);

                set_state(command);
                vTaskDelay(5000 / portTICK_PERIOD_MS);
            }
        }else{
            if(get_bit(command, 0) == 1){
                ESP_LOGI("Data if:", "The value of command is: %u", command);
                //bypass off -> repetidor on
                if(command == 0b10000000){

                    gpio_set_level(LED_OUT, 1);
                    set_state(~get_input_state());
                ///bypass on -> repetidor off
                }else if (command ==  0b11000000){
                    ESP_LOGI("Master routine:", "calling the master_routine method");
                    master_routine();
                }else{

                }

            }else{
                ESP_LOGI("Standard routine:", "");
                stand_routine();
            }

            
        }
        
        vTaskDelay(10 / portTICK_PERIOD_MS);
        
        memset(data_array, 0, sizeof(data_array));
        
    }
}





void app_main(){
    
    i2c_master_init();
    i2c_slave_init();
    in_ports_init();


    xTaskCreate(main_task, "main_task", 4096, &data, 10, NULL);


        
}

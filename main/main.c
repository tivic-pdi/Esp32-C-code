#include <stdint.h>
#include <stdbool.h>

#include <string.h>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

#include "headers/i2c_master_config.h"
#include "headers/i2c_slave_config.h"
#include "headers/i2c_master_comm.h"
#include "headers/i2c_slave_comm.h"

#include "headers/in_ports_config.h"
#include "headers/in_ports_comm.h"


#include "driver/gpio.h"


uint8_t adresses[] = {0b00000111, 0b00111000, 0b00101101, 0b00000000};
uint8_t data = 0;
bool has_master = false;


void app_main(){
    


    // uint8_t adresses[] = {0b00110011, 0b00110101, 0b00011110, 0b00101110};
    
    //Inicia sem detecção de um master
    

    i2c_master_init();
    i2c_slave_init();
    in_ports_init();

    xTaskCreate(i2c_slave_receive, "i2c_slave_receive", 2048, &data, 10, NULL);
    
    // xTaskCreate(teste, "i2c_slave_receive", 2048, &data, 2048, NULL);


//Delisgar by pass, repetir convencional 10000000
//Religar bypass, 11000000
//Rotina x 10000001
//Desligar todos os focos 1000010


        
    while(1) {



        // uint8_t master_data;
        // master_data = i2c_slave_receive();
        
        // uint8_t master_data = 1;
        // has_master=true;
        if(data != 0){
            has_master = true;
        }


        if(has_master){
            if(get_bit(data, 0) == 1){

                if(get_bit(data, 7)==1){
                    for(int i = 0; i < sizeof(adresses)/sizeof(adresses[0]); i++){
                        set_state(adresses[i]);
                    }
                }else{
                    //bypass off
                    //read in
                    //set out
                }
                vTaskDelay(2000 / portTICK_PERIOD_MS); 

            }else{
                set_state(data);
            }
        }else{
            set_state(data);



            // for(int i = 0; i < sizeof(adresses)/sizeof(adresses[0]); i++){
            //     set_state(adresses[i]);
            // }
        }
          

    }
        
}
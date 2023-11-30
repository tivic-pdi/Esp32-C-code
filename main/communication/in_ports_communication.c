#include "driver/gpio.h"
#include "../headers/in_ports_comm.h"
#include "../headers/in_ports_config.h"

#include "esp_log.h"



const int port_array[] = {VM_IN, AM_IN, VD_IN, VM_IN2, AM_IN2, VD_IN2};


uint8_t get_input_state(){
    
    uint8_t state = 0b00000000;

    for(int i = 0; i < sizeof(port_array)/sizeof(port_array[0]); i++){
        ESP_LOGI("IO value:", "The value set for IO %d is: %u", i, gpio_get_level(port_array[i]));
        state |= (gpio_get_level(port_array[i]) << (i));
    }


    return state;
}














#include "driver/gpio.h"
#include "../headers/in_ports_comm.h"
#include "../headers/in_ports_config.h"


uint8_t bit_array[BIT_ARRAY];

const int port_array[] = {VD_IN, AM_IN, VM_IN, VD_IN2, AM_IN2, VM_IN2};


uint8_t get_input_state(){
    
    uint8_t state = 0b00000000;

    for(int i = 0; i < sizeof(port_array); i++){
        // uint8_t mask = 1 << (7 - i);

        state = state + (gpio_get_level(port_array[i])<< (7 - i));
    }


    return state;
}













    
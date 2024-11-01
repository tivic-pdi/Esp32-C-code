#include "driver/gpio.h"
#include "../headers/in_ports_comm.h"
#include "../headers/in_ports_config.h"

#include "esp_log.h"

//Essas configurações foram utilizadas para setar saídas do ESP como acionamento dos grupos focais.
//Não existem necessidades de serem mantidas, pois o código foi alterado para utilizar entradas digitais do expansor de portas.
//Caso exista alguma nova funcionalidade com necessidade de saídas, essas configurações podem ser utilizadas como base.

// const int port_array[] = {VM_IN, AM_IN, VD_IN, VM_IN2, AM_IN2, VD_IN2};
const int port_array[] = {VM_IN, AM_IN, VD_IN, VM_IN2, VD_IN2, AM_IN2};
// const int port_array[] = {VM_IN, AM_IN, VD_IN, VM_IN2, VD_IN2, 0x00};


uint8_t get_input_state(){
    
    uint8_t state = 0b00000000;

    for(int i = 0; i < sizeof(port_array)/sizeof(port_array[0]); i++){
        // ESP_LOGI("IO value:", "The value set for IO %d is: %u", i, gpio_get_level(port_array[i]));
        state |= (gpio_get_level(port_array[i]) << (i));
    }


    return state;
}
















#include "driver/gpio.h"
#include "headers/in_ports_config.h"


//quantidade de bits a serem lidos -> 8 para demonstração com 2 semáforos (6 bits)
#define BIT_ARRAY 8



// #define PORT_ARRAY [VD_IN, AM_IN, VM_IN, VD_IN2, AM_IN2, VM_IN2]





void read_state();


uint8_t get_input_state();


uint8_t mount_state();
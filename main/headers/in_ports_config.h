#ifndef GPIO_CONFIG_H
#define GPIO_CONFIG_H


#include "driver/gpio.h"


//Portas utilizadas para demonstração. Sistema será migrado para receber por I2C

#define VM_IN 15
#define AM_IN 4
#define VD_IN 17

#define VM_IN2 33
#define AM_IN2 34
#define VD_IN2 35




//Portas utilizadas pelo I2C:




#define LED_OUT 32


void in_ports_init();






#endif 
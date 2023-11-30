#include "driver/gpio.h"
#include "../headers/in_ports_config.h"


const int set_port_array[] = {VM_IN, AM_IN, VD_IN, VM_IN2, AM_IN2, VD_IN2};


void in_ports_init(){

    for (int i = 0; i < sizeof(set_port_array)/sizeof(set_port_array[0]); i++) {
        esp_rom_gpio_pad_select_gpio(set_port_array[i]);
    }
   

    gpio_config_t input_conf;
    input_conf.intr_type = GPIO_INTR_DISABLE;
    input_conf.mode = GPIO_MODE_INPUT;
    input_conf.pin_bit_mask = (1ULL << VM_IN) |
                           (1ULL << AM_IN) |
                           (1ULL << VD_IN) |
                           (1ULL << VM_IN2) |
                           (1ULL << AM_IN2) |
                           (1ULL << VD_IN2);
    input_conf.pull_up_en = GPIO_PULLUP_DISABLE;
    input_conf.pull_down_en = GPIO_PULLDOWN_ENABLE;
    gpio_config(&input_conf);


    gpio_config_t output_conf;
    output_conf.pin_bit_mask = (1ULL << LED_OUT);
    output_conf.mode = GPIO_MODE_OUTPUT;
    output_conf.pull_up_en = GPIO_PULLUP_DISABLE;
    output_conf.pull_down_en = GPIO_PULLDOWN_DISABLE;
    output_conf.intr_type = GPIO_INTR_DISABLE;
    gpio_config(&output_conf);

}
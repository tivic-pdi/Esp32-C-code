#ifndef SEMAPHORE_CONTROL_H
#define SEMAPHORE_CONTROL_H

#include <stdint.h>
#include "../i2c_master_config.h"
#include "../i2c_master_comm.h"
#include "conflicts.h"
#include "ports_map.h"
#include <stdbool.h>
#include <sys/time.h>
#include <string.h>


//Referente aos métodos de controle dos semáforos.


#define PHASES_SIZE 6

static uint8_t current_hardware_phase[2] = {0b00000000};
static uint8_t new_hardware_phase[2] = {0b00000000};

static int current_phase = 0;

static SemaphorePorts semaphore_array[PHASES_SIZE];


static uint8_t new_plan[PHASES_SIZE] = {0b00000000};


static uint8_t current_plan[PHASES_SIZE] = {0b00000000};

static long begin_time = 0;
// static long current_time = 0;
static long end_time = 0;



void init_semaphore_control();
void set_new_plan(uint8_t* plan);
void plan_setup();
bool end_plan();

// Method to set the semaphore to the intermittent state
void set_intermittent(uint8_t* new_hardware_phase, SemaphorePorts ports[], int i);

// Method to set the semaphore to the green state
void set_green(uint8_t* new_hardware_phase, SemaphorePorts* ports, int i);

// Method to set the semaphore to the red state
void set_red(uint8_t* new_hardware_phase, SemaphorePorts* ports, int i);

// Method to set the semaphore to the yellow state
void set_yellow(uint8_t* new_hardware_phase, SemaphorePorts* ports, int i);



void stand_routine();
void transicao_routine();

void plan_control(long current_time);


void clean_hardware_phase(uint8_t* new_hardware_phase);




// Method to save the state of the semaphore
void save_phase(uint8_t byte1, uint8_t byte2);

void mount_phase(uint8_t* new_hardware_phase, SemaphorePorts* semaphore_array);

void send_phase(uint8_t* new_hardware_phase);


uint8_t set_bit_on_byte(uint8_t hardware_phase, uint8_t focus);



void set_end_time();

long get_time(); 

#endif
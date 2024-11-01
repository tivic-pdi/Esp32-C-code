#include "../headers/semaphore/semaphore_control.h"
#include "../headers/i2c_master_comm.h"
#include "../headers/i2c_master_config.h"
#include "../headers/semaphore/conflicts.h"

#include "esp_log.h"


#include "../headers/semaphore/ports_map.h"


#include <sys/time.h>


// uint8_t state[2] = {0b00000000,0b00000000};


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

void init_semaphore_control(){
    // SemaphorePorts s1, s2, p3, p4, p5, p6;
    
    // init_ports_map(&s1, &s2, &p3, &p4, &p5, &p6);
    init_ports_map(semaphore_array);
    clean_hardware_phase(new_hardware_phase);

}

//Um plano é recebido 
void set_new_plan(uint8_t* plan){
    for(int i = 0; i < PHASES_SIZE; i++){
        new_plan[i] = plan[i];
    }
}

void plan_setup(){
    // ESP_LOGI("PLAN ROUTINE", "PLAN SETUP CALLED");


    if(memcmp(new_plan, current_plan, sizeof(new_plan)) != 0){
        for(int i = 0; i < PHASES_SIZE; i++){
            current_plan[i] = new_plan[i];
        }
        clean_hardware_phase(new_hardware_phase);
        
    }


    // if(memcmp(new_hardware_phase, current_hardware_phase, sizeof(new_hardware_phase)) != 0){
    //     save_phase(new_hardware_phase[0], new_hardware_phase[1]);
        
    // }

    current_phase = 0;
    set_end_time();

}



bool end_plan(){
    if(end_time == 0){
        // ESP_LOGI("END PLAN", "END PLAN CALLED, END_TIME = 0 %d", current_phase);
        return true;
    }else{
        if(current_phase == PHASES_SIZE - 1){
            // ESP_LOGI("END PLAN", "END PLAN CALLED %d", current_phase);
            return true;
        }
    }

    return false;
}



// Method to set the semaphore to the intermittent state
void set_intermittent(uint8_t* new_hardware_phase, SemaphorePorts ports[], int i) {
   
    for(int j = 0; j < 8; j++){
        
        if((ports[i].ITR >> j) == 1){
            // ESP_LOGI("ITR:", "J =  %d", j);    
// 
            // ESP_LOGI("ITR:", "INTERMITENT CALLED  %d", ((new_hardware_phase[ports[i].port] >> j) & 0x00000001));
            ESP_LOGI("ITR:", "INTERMITENT CALLED  %d", ((new_hardware_phase[ports[i].port])));

            if(((new_hardware_phase[ports[i].port] >> j) & 0x00000001) == 1){
                // ESP_LOGI("ITR:", "INTERMITENT CALLED ON  %d", j);
                new_hardware_phase[ports[i].port] = new_hardware_phase[ports[i].port] & (~ports[i].ITR);

            }else{
                // ESP_LOGI("ITR:", "INTERMITENT CALLED OFF %d", j);
                new_hardware_phase[ports[i].port] = new_hardware_phase[ports[i].port] | ports[i].ITR;

            }
        }


    }
    
}

// Method to set the semaphore to the green state       
// void set_green(uint8_t* new_hardware_phase, SemaphorePorts ports[], int i) {
//     // SemaphorePorts semaphore = ports[i];

//     new_hardware_phase[ports[i].port] = new_hardware_phase[ports[i].port] | ports[i].VD;
    
//     ESP_LOGI("SET GREEN", "The value of new_hardware_fase is %d", ports[i].VD);
    

//     new_hardware_phase[ports[i].port] = new_hardware_phase[ports[i].port] & (~ports[i].AM);

    

//     new_hardware_phase[ports[i].port] = new_hardware_phase[ports[i].port] & (~ports[i].VM);

//     // vTaskDelay(5000 / portTICK_PERIOD_MS);
    
// }


void set_green(uint8_t* new_hardware_phase, SemaphorePorts* ports, int i) {
    // SemaphorePorts semaphore = ports[i];

    new_hardware_phase[ports->port] = new_hardware_phase[ports->port] | ports->VD;
    
    // ESP_LOGI("SET GREEN", "The value of new_hardware_fase is %d", ports->VD);
    

    new_hardware_phase[ports->port] = new_hardware_phase[ports->port] & (~ports->AM);

    

    new_hardware_phase[ports->port] = new_hardware_phase[ports->port] & (~ports->VM);

    // vTaskDelay(5000 / portTICK_PERIOD_MS);
    
}





//Método para setar o semáforo no estado vermelho
void set_red(uint8_t* new_hardware_phase, SemaphorePorts ports[], int i) {
    // SemaphorePorts semaphore = ports[i];                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
    // ESP_LOGI("SET RED", "The value of new_hardware_fase is %d", ports[i].VM);
    // ESP_LOGI("SET RED", "The value of new_hardware_fase is %d", semaphore.VM);

    new_hardware_phase[ports[i].port] = new_hardware_phase[ports[i].port] & (~ports[i].VD);
    new_hardware_phase[ports[i].port] = new_hardware_phase[ports[i].port] & (~ports[i].AM);
    new_hardware_phase[ports[i].port] = new_hardware_phase[ports[i].port] | (ports[i].VM);

    // vTaskDelay(5000 / portTICK_PERIOD_MS);
}

//Método para setar o semáforo no estado amarelo
void set_yellow(uint8_t* new_hardware_phase, SemaphorePorts ports[], int i) {
    // ESP_LOGI("SET YELLOW", "The value of new_hardware_fase is %d", ports[i].AM);
    new_hardware_phase[ports[i].port] = new_hardware_phase[ports[i].port] & (~ports[i].VD);
    if(ports[i].AM == ports[i].VM){
        new_hardware_phase[ports[i].port] = new_hardware_phase[ports[i].port] | (ports[i].AM);
        new_hardware_phase[ports[i].port] = new_hardware_phase[ports[i].port] | (ports[i].VM);
    }else{
        new_hardware_phase[ports[i].port] = new_hardware_phase[ports[i].port] | (ports[i].AM);
        new_hardware_phase[ports[i].port] = new_hardware_phase[ports[i].port] & (~ports[i].VM);
    }
    
}




//Rotina para manter os semáforos em um estado de suspensão.
void stand_routine(){
    for(int i = 0; i < sizeof(adresses)/sizeof(adresses[0]); i++){
        // ESP_LOGI("Standard routine:", "");
        set_state(adresses[i],adresses[i]);
        vTaskDelay(100/portTICK_PERIOD_MS);
    }

}



void transicao_routine(){
    for(int i = 0; i < sizeof(yellows)/sizeof(yellows[0]); i++){
        set_state(yellows[i], 0x00);
        vTaskDelay(100 / portTICK_PERIOD_MS);
    }
}


//Método para salvar a fase atual dos semáforos (substituindo a fase anterior)
//A necessidade de salvar a fase está relacionada ao momento em que o plano de fase é alterado.
void save_phase(uint8_t b1, uint8_t b2){
    current_hardware_phase[0] = b1;
    current_hardware_phase[1] = b2;
}




void plan_control(long current_time){
    // ESP_LOGI("PLAN ROUTINE", "PLAN CONTROL CALLED");
    //Situção em que o plano de fase está no primeiro estado e o tempo de execução do plano está zerado
    if(current_phase == 0){
        //Caso o tempo de início do plano seja zero, o tempo de início do plano é setado com o tempo atual.
        if(begin_time == 0){
            begin_time = get_time();
            //A fase atual é zerada para que um novo plano seja iniciado.
            clean_hardware_phase(new_hardware_phase);
            //O novo plano é montado de acordo com o plano atual.
            mount_phase(new_hardware_phase, semaphore_array);
            if(memcmp(new_hardware_phase, current_hardware_phase, sizeof(new_hardware_phase)) != 0){
                send_phase(new_hardware_phase);
                save_phase(new_hardware_phase[0], new_hardware_phase[1]);
            }

        }else{
            //Situação em que o plano de fase está em andamento
            if(current_time - begin_time >= current_plan[current_phase]){
                current_phase++;
                begin_time = get_time();


                //Method to set the semaphore to the next state
                clean_hardware_phase(new_hardware_phase);
                mount_phase(new_hardware_phase, semaphore_array);
                if(memcmp(new_hardware_phase, current_hardware_phase, sizeof(new_hardware_phase)) != 0){
                    send_phase(new_hardware_phase);
                    save_phase(new_hardware_phase[0], new_hardware_phase[1]);
                }

            }else{
                //Method to set the semaphore to the current state
                mount_phase(new_hardware_phase, semaphore_array);
                send_phase(new_hardware_phase);
            }    
        }
    }
    //Situação em que o plano de fase está no último estado e o tempo de execução do plano foi atingido
    else if(current_phase == PHASES_SIZE - 1){
        if(current_time - begin_time >= current_plan[current_phase]){
            current_phase = 0;
            // begin_time = get_time();
            begin_time = 0;
        }else{
            mount_phase(new_hardware_phase, semaphore_array);
            send_phase(new_hardware_phase);
        }
    }
    //Situação em que o plano de fase está em andamento
    else{
        if(current_time - begin_time >= current_plan[current_phase]){
            current_phase++;
            begin_time = get_time();


            //Method to set the semaphore to the next state
            clean_hardware_phase(new_hardware_phase);
            mount_phase(new_hardware_phase, semaphore_array);
            if(memcmp(new_hardware_phase, current_hardware_phase, sizeof(new_hardware_phase)) != 0){
                send_phase(new_hardware_phase);
                save_phase(new_hardware_phase[0], new_hardware_phase[1]);
            }


        }else{
            //Method to set the semaphore to the current state
            mount_phase(new_hardware_phase, semaphore_array);
            send_phase(new_hardware_phase);

        }    
    }
        



}



void mount_phase(uint8_t* new_hardware_phase, SemaphorePorts* semaphore_array){

    //new_hardware_phase
    SemaphorePorts *semaphore;
    // ESP_LOGI("PHASE MOUNT", "Semaphore VD1 %d", semaphore_array[0].VD);
    // ESP_LOGI("PHASE MOUNT", "Semaphore AM1 %d", semaphore_array[0].AM);
    // ESP_LOGI("PHASE MOUNT", "Semaphore VM1 %d", semaphore_array[0].VM); 
    // ESP_LOGI("PHASE MOUNT", "Semaphore VD2 %d", semaphore_array[1].VD); 
    // ESP_LOGI("PHASE MOUNT", "Semaphore AM2 %d", semaphore_array[1].AM); 
    // ESP_LOGI("PHASE MOUNT", "Semaphore VM2 %d", semaphore_array[1].VM); 

    for(int i = 0; i < FOCUS_GROUP; i++){

        // ESP_LOGI("PHASE MOUNT", "The value of new_hardware_fase is %u", i);
        
        semaphore = &semaphore_array[i];

        // ESP_LOGI("PHASE MOUNT", "The value of the intermttent is %d", semaphore->ITR);

        if(conflicts[i][current_phase] == 0){
            // set_green(new_hardware_phase, semaphore_array, i);
            set_green(new_hardware_phase, semaphore, i);

        }else if (conflicts[i][current_phase] == 1){
            // set_yellow(new_hardware_phase, semaphore_array, i);
            set_intermittent(new_hardware_phase, semaphore_array, i);
            vTaskDelay(100 / portTICK_PERIOD_MS);

        }else if (conflicts[i][current_phase] == 2){
            set_red(new_hardware_phase, semaphore_array, i);

        }
        
    }
    // ESP_LOGI("PHASE MOUNT", "The value of new_hardware_fase is %d", new_hardware_phase[0]);
    

}

void send_phase(uint8_t* new_hardware_phase){
    set_state(new_hardware_phase[0], new_hardware_phase[1]);
}


uint8_t set_bit_on_byte(uint8_t hardware_phase, uint8_t focus){
    return hardware_phase | focus;
}

long get_time(){
    struct timeval tv;
    gettimeofday(&tv, NULL);
    long time_in_seconds = tv.tv_sec;

    return time_in_seconds;
    
}



void set_end_time(){
    for(int i = 0; i < PHASES_SIZE; i++){
        end_time += current_plan[i];
    }
    
    // ESP_LOGI("SET END TIME", "The value of end_time is %ld", end_time);
    // ESP_LOGI("END PLAN", "END PLAN CALLED, END_TIME = 0 %d", current_phase);
}


//Limpa as saídas do hardware
void clean_hardware_phase(uint8_t* new_hardware_phase){
    new_hardware_phase[0] = 0b00000000;
    new_hardware_phase[1] = 0b00000000;
}

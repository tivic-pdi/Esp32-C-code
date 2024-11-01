#include "../headers/semaphore/ports_map.h"

#include "esp_log.h"


#include "freertos/FreeRTOS.h"
#include "freertos/task.h"

void init_ports_map(SemaphorePorts* semaphore_array){
    // s1->port = 0;
    // s1->VD = S1_VD;
    // s1->AM = S1_AM;
    // s1->VM = S1_VM;

    // s2->port = 0;
    // s2->VD = S2_VD;
    // s2->AM = S2_AM;
    // s2->VM = S2_VM;

    // p3->port = 0;
    // p3->VD = P3_VD;
    // p3->AM = PD_AM;
    // p3->VM = P3_VM;

    // p4->port = 1;
    // p4->VD = P4_VD;
    // p4->AM = P4_VM;
    // p4->VM = P4_VM;

    // p5->port = 1;
    // p5->VD = P5_VD;
    // p5->AM = P5_VM;
    // p5->VM = P5_VM;

    // p6->port = 1;
    // p6->VD = P6_VD;
    // p6->AM = P6_VM;
    // p6->VM = P6_VM;
    semaphore_array[0].port = 0;
    semaphore_array[0].VD = S1_VD;
    semaphore_array[0].AM = S1_AM;
    semaphore_array[0].VM = S1_VM;
    semaphore_array[0].ITR = S1_AM;


    semaphore_array[1].port = 0;
    semaphore_array[1].VD = S2_VD;
    semaphore_array[1].AM = S2_AM;
    semaphore_array[1].VM = S2_VM;
    semaphore_array[1].ITR = S2_AM;

    
    semaphore_array[2].port = 0;
    semaphore_array[2].VD = P3_VD;
    semaphore_array[2].AM = P3_VM;
    semaphore_array[2].VM = P3_VM;
    semaphore_array[2].ITR = P3_VM;

    
    semaphore_array[3].port = 1;
    semaphore_array[3].VD = P4_VD;
    semaphore_array[3].AM = P4_VM;
    semaphore_array[3].VM = P4_VM;
    semaphore_array[3].ITR = P4_VM;

    
    semaphore_array[4].port = 1;
    semaphore_array[4].VD = P5_VD;
    semaphore_array[4].AM = P5_VM;
    semaphore_array[4].VM = P5_VM;
    semaphore_array[4].ITR = P5_VM;
    
    semaphore_array[5].port = 1;
    semaphore_array[5].VD = P6_VD;
    semaphore_array[5].AM = P6_VM;
    semaphore_array[5].VM = P6_VM;
    semaphore_array[5].ITR = P6_VM;


     
        //   vTaskDelay(5000 / portTICK_PERIOD_MS);


}







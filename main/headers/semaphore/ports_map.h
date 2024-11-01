#include <stdint.h>


#ifndef PORTS_MAP_H
#define PORTS_MAP_H

//Mapa de portas que relaciona as saídas dos expansores de portas com os focos dos semáforos.
//O mapa é utilizado para definir o estado dos semáforos de acordo com o estado dos focos.
//TODO:
//Desenvolver um método de criação do mapa de portas pelo usuário (Operador e instalador do sistema).



//The order is Verde, Amarelo, Vermelho, Verde, Amarelo, Vermelho
//Dois semáforos veiculares e quatro semáforos de pedestres
//Semáforos veiculares -> S1 e S2
//Semáforos de pedestres -> P3, P4, P5 e P6

//Semáforo 1: P00, P01, P02
//Semáforo 2: P03, P04, P05
//Semáforo 3: P06, P07
//Semáforo 4: P10, P11
//Semáforo 5: P12, P13
//Semáforo 6: P14, P15


//Primeiro byte
#define S1_VD 0b00000001;
#define S1_AM 0b00000010;
#define S1_VM 0b00000100;

#define S2_VD 0b00001000;
#define S2_AM 0b00010000;
#define S2_VM 0b00100000;

#define P3_VD 0b01000000;
#define P3_VM 0b10000000;

// #define P3_VD 0b00001000;
// #define P3_VM 0b00010000;

// #define S2_VD 0b00100000;
// #define S2_VM 0b01000000;
// #define S2_AM 0b10000000;




//Segundo byte
#define P4_VD 0b00000001;
#define P4_VM 0b00000010;
#define P5_VD 0b00000100;
#define P5_VM 0b00001000;
#define P6_VD 0b00010000;
#define P6_VM 0b00100000;

#define PD_AM 0b00000000;

typedef struct {
    int port;
    uint8_t VD;
    uint8_t AM; 
    uint8_t VM;
    uint8_t ITR;
} SemaphorePorts;


#endif


void init_ports_map(SemaphorePorts* semaphore_array);


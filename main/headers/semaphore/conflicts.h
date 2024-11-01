#ifndef CONFLICTS_H
#define CONFLICTS_H





// Definindo a matriz como constante para que ela não possa ser modificada acidentalmente
//Essa matriz será eventualmente substituída por uma matriz de conflitos recebida pelo raspberry.
//Essa matriz será utilizada para definir os conflitos entre os grupos focais e os planos de ação.


//O tamalho do plano deve ser configurado de acordo com a quantidade de grupos focais.
#define PLAN_SIZE 6

//Quantidade de grupos focais. Depende da configuração da instalção dos semáforos (cruzamentos, avenidas, ruas simples, etc).
#define FOCUS_GROUP 6

static const int conflicts[PLAN_SIZE][FOCUS_GROUP] = {
    {0, 1, 2, 2, 2, 2},
    {2, 2, 0, 1, 2, 2},
    {0, 1, 2, 2, 0, 0},
    {2, 2, 0, 0, 0, 1},
    {2, 2, 2, 2, 0, 1},
    {2, 2, 2, 2, 0, 1}
};

#endif // CONFLICTS_H   
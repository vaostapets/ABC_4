//------------------------------------------------------------------------------
// inrnd.c - единица компиляции, вбирающая функции генерации случайных данных
//------------------------------------------------------------------------------

#include <stdlib.h>
#include <stdio.h>
#include "extdata.h"

// Случайный ввод параметров легкового автомобиля 
void InRndCar(void *car) {
    short speed_limit = rand()%180 + 1;
    *((short*)car) = speed_limit;
//     printf("    Rectangle %d %d\n", *((int*)r), *((int*)r+1));
}

// Случайный ввод параметров автобуса
void InRndBus(void *bus) {
    short passenger_capacity = rand()%20 + 1;
    *((short*)bus) = passenger_capacity;
//     printf("    Rectangle %d %d\n", *((int*)r), *((int*)r+1));
}

// Случайный ввод параметров грузовика
void InRndTruck(void *truck) {
    int carrying_capapcity = rand()%149 + 1;
    *((short*)truck) = carrying_capapcity;
//     printf("    Rectangle %d %d\n", *((int*)r), *((int*)r+1));
}

// Случайный ввод обобщенной машины
int Rnd_Vehicle(void *vehicle) {
    int fuel_tank_capacity = rand()%200 + 1;
    *((int*)(vehicle+sizeof(int))) = fuel_tank_capacity;
    float fuel_consumption = rand()%10 + (rand() % 10001) / 10000.0;
    *((float*)(vehicle+2*sizeof(int))) = fuel_consumption;

    int key = rand() % 3 ;
    switch(key) {
        case 0:
            *((int*)vehicle) = CAR;
            InRndCar(vehicle+2*sizeof(int)+sizeof(float));

            return 1;
        case 1:
            *((int*)vehicle) = BUS;
            InRndBus(vehicle+2*sizeof(int)+sizeof(float));

            return 1;
        case 2:
            *((int*)vehicle) = TRUCK;
            InRndTruck(vehicle+2*sizeof(int)+sizeof(float));

            return 1;
        default:
            return 0;
    }
}

// Случайный ввод содержимого контейнера
void Fill_Rnd_Container(void *c, int *len, int size) {
    void *tmp = c;
    while(*len < size) {
        if(Rnd_Vehicle(tmp)) {
            tmp = tmp + vehicleSize;
            (*len)++;
        }
    }
}


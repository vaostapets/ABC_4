
#include "extdata.h"
#include <stdio.h>

// Вывод параметров легкового автомобиля
void Out_Car(void *car, FILE *ofst) {
    fprintf(ofst, "CAR: fuel tank capacity = %d, fuel consumption = %f, speed limit=%d, range= %f\n",
            *((int*)car), *((float*)(car+sizeof(int))),*((int*)(car+sizeof(int)+sizeof(float))),(double)getRange(car-sizeof(int)));
}

// Вывод параметров автобуса


// Вывод параметров грузовика
void Out_Truck(void *truck, FILE *ofst) {
    fprintf(ofst, "TRUCK: fuel tank capacity = %d, fuel consumption = %f, carrying capacity=%d, range=%f\n",
            *((int*)truck), *((float*)(truck+sizeof(int))),*((int*)(truck+sizeof(int)+sizeof(float))),(double)getRange(truck-sizeof(int)));
}
void Out_Bus(void *bus, FILE *ofst) {
    fprintf(ofst, "BUS: fuel tank capacity = %d, fuel consumption = %f, passenger capacity = %d, range=%f\n",
            *((int*)bus), *((float*)(bus+sizeof(int))), *((int*)(bus+sizeof(int)+sizeof(float))),(double)getRange(bus-sizeof(int)));
}

// Вывод параметров текущей машины в поток
void OutVehicle(void *vehicle, FILE *ofst) {
    int key = *((int*)vehicle);
    if(key ==CAR){
        Out_Car(vehicle+sizeof(int), ofst);
    } else if(key == BUS){
        Out_Bus(vehicle+sizeof(int), ofst);
    } else if(key == TRUCK){
        Out_Truck(vehicle+sizeof(int), ofst);
    }else{
        fprintf(ofst, "Incorrect vehicle!\n");
    }
}

// Вывод содержимого контейнера в файл
void Out_Container(void *c, int len, FILE *ofst) {
    void *tmp = c;
    fprintf(ofst, "Container contains %d elements.\n", len);
    for(int i = 0; i < len; i++) {
        fprintf(ofst, "%d: ", i);
        OutVehicle(tmp, ofst);
        tmp = tmp + vehicleSize;
    }
}

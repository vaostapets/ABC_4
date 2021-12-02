
#include "extdata.h"
#include <stdio.h>
void Parse_Car(void *car, FILE *ifst) {
    fscanf(ifst, "%d %f %d", (int*)car, (float*)(car+sizeof(int)), (short*)(car+sizeof(int)+sizeof(float)));
}
void Parse_Bus(void *bus, FILE *ifst) {
    fscanf(ifst, "%d %f %d", (int*)bus, (float*)(bus+sizeof(int)), (short*)(bus+sizeof(int)+sizeof(float)));
}

void Parse_Truck(void *truck, FILE *ifst) {
    fscanf(ifst, "%d %f %d", (int*)truck, (float*)(truck+sizeof(int)), (int*)(truck+sizeof(float)+sizeof(int)));
}

int Parse_String(void *vehicle, FILE *ifst) {
    int key;
    if(fscanf(ifst, "%d", &key)<1) return 0;
    switch(key) {
        case 0:
            *((int*)vehicle) = CAR;
            Parse_Car(vehicle+sizeof(int), ifst);
            return 1;
        case 1:
            *((int*)vehicle) = BUS;
            Parse_Bus(vehicle+sizeof(int), ifst);
            return 1;
        case 2:
            *((int*)vehicle) = TRUCK;
            Parse_Truck(vehicle+sizeof(int), ifst);
            return 1;
        default:
            return 0;
    }
}

int Fill_Container(void *c, FILE *ifst) {
    void *tmp = c;
    int len=0;
    while(Parse_String(tmp, ifst)>0) {
        tmp+=vehicleSize;
        len++;
    }
    return len;
}

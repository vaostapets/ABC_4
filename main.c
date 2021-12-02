//------------------------------------------------------------------------------
// main.cpp - содержит главную функцию, 
// обеспечивающую простое тестирование
//------------------------------------------------------------------------------

#include <stdlib.h> // для функций rand() и srand()
#include <time.h>   // для функции time()
#include <string.h>

#include "data.h"

void StraightSort(void* pointer, int len){
    for(int i = 0; i < len; ++i){
        char helper[16];
        memcpy(helper,pointer+i*16,16);
        int j = i;
        while(j > 0 && getRange(pointer+(j-1)*16) > getRange(helper)){
            memmove(pointer+j*16,pointer+(j-1)*16,16);
            j--;
        }
        memmove(pointer+j*16,helper,16);
    }
}
void errMessage1() {
    printf("incorrect command line!\n"
           "  Waited:\n"
           "     command -f infile outfile01 outfile02\n"
           "  Or:\n"
           "     command -n number outfile01 outfile02\n");
}

void errMessage2() {
    printf("incorrect qualifier value!\n"
            "  Waited:\n"
            "     command -f infile outfile01 outfile02\n"
            "  Or:\n"
            "     command -n number outfile01 outfile02\n");
}

//------------------------------------------------------------------------------
int main(int argc, char* argv[]) {
    // Массив используемый для хранения данных
    //unsigned int cont[maxSize / sizeof(int)];
    //int cont[maxSize / sizeof(int)];
    unsigned char cont[maxSize];
    // Количество элементов в массиве
    int len = 0;
    printf("carSize = %d\n", carSize);
    printf("busSize = %d\n", busSize);
    printf("truckSize = %d\n", truckSize);
    printf("vehicleSize = %d\n", vehicleSize);
    printf("maxSize = %d\n", maxSize);
    printf("CAR = %d\n", CAR);
    printf("BUS = %d\n", BUS);
    printf("TRUCK = %d\n", TRUCK);
    printf("Size of container = %lu\n", sizeof(cont));


    if(argc != 5) {
        errMessage1();
        return 1;
    }

    printf("Start\n");
    //InitContainer(&cont);

    if(!strcmp(argv[1], "-f")) {
        FILE* ifst = fopen(argv[2], "r");
        len=Fill_Container(cont, ifst);
    }
    else if(!strcmp(argv[1], "-n")) {
        int size = atoi(argv[2]);
        if((size < 1) || (size > 10000)) { 
            printf("incorrect numer of vehicles = %d. Set 0 < number <= 10000\n",
                   size);
            return 3;
        }
        // системные часы в качестве инициализатора
        srand((unsigned int)(time(0)));
        // Заполнение контейнера генератором случайных чисел
        Fill_Rnd_Container(cont, &len, size);
    }
    else {
        errMessage2();
        return 2;
    }

    // Вывод содержимого контейнера в файл
    fprintf(stdout, "Filled container:\n");
    Out_Container(cont, len, stdout);
    FILE* ofst1 = fopen(argv[3], "w");
    fprintf(ofst1, "Filled container:\n");
    Out_Container(cont, len, ofst1);
    fclose(ofst1);

    // The 2nd part of the task
    FILE* ofst2 = fopen(argv[4], "w");
    clock_t start = clock();

   // unsigned char new_cont[maxSize];
   // int new_len = FilterContainer(cont, new_cont, len);
    // массивы объявлены статически => память чистить не надо

     Insertion_Sort(cont,len);
    clock_t end = clock();
    double calcTime = ((double)(end - start)) / (CLOCKS_PER_SEC + 1.0);
   
    Out_Container(cont,len, ofst2);    
    fclose(ofst2);

    printf( "Container sorted. Sorting time = %g\n", calcTime);
    //ClearContainer(&c);
    printf("Stop\n");
    return 0;
}

#ifndef __extdata__
#define __extdata__


// Константа, задающая размер для легкового автомобиля
extern int const carSize;
// Константа, задающая размер для автобуса
extern int const busSize;
// Константа, задающая размер для грузовика
extern int const truckSize;
// Константа, задающая размер для обощенной машины
extern int const vehicleSize;
// Константа, определяющая размерность массива фигур
extern int const maxSize;
// Константа, задающая признак легкового автомобиля
extern int const CAR;
// Константа, задающая признак автобуса
extern int const BUS;
// Константа, задающая признак грузовика
extern int const TRUCK;
// Поиск дальности хода машины
extern float getRange(void* vehicle);

extern void Insertion_Sort(void *pointer,int len);

#endif

#include <stdio.h>
int fibonacci(int n);
int main(){
    int x = 0;                  
    printf("fibonacci: %d\n", fibonacci(10000000)); // 10M
    return x;
}
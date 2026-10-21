#include <stdio.h>

int addition(int a, int b) {
    return a + b;
}

int mult(int a, int b) {
    return a * b;
}

int main() {
    int a = 5;
    int b = 17;
    int c = addition(a, b);
    int d = mult(a, b);
    printf("%d\n", d);
    return c;
}
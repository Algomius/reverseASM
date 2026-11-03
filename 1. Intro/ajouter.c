// Compile en assembleur : gcc -S -O0 -m64 -masm=intel ajouter.c

#include <stdio.h>

int ajouter(int a, int b) {
    return a + b;
}

int ajouter3(int a, int b, int c) {
    return a + ajouter(b, c);
}

int main() {
    int a = 5;
    int b = 7;
    int c = 11;
    int d = ajouter3(a, b, c);
    printf("Resultat = %d\n", d);
    return 0;
}
#include <stdio.h>

int fct1(int a) {
    int b = 0;
    b = a + 5;
    return b;
    b = a * 3;
}

int fct2(int a){
    int b = 0;
    b = a -3;
    return b;
    b = a * 3;
}

int main() {
    int a = 18;
    a = fct1(a);
    a = fct2(a);
    printf("Valeur finale de a : %d\n", a );

    int somme = 0;

    for (int i = 0; i <= 100; i++) {
        somme += i;
    }

    printf("La somme est de : %d\n", somme);
}
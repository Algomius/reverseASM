#include <stdio.h>

int ajouter(int a, int b) {
    return a + b;
}

int main() {
    int a = 5;
    int b = 7;
    int c = ajouter(a, b);
    printf("Resultat = %d\n", c);
    return 0;
}
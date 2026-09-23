#include <stdio.h>

int inconnu(int a, int b) {
    if (a < b) {
        return b - a;
    } else {
        return a - b;
    }
}

int main() {
    int a = 5;
    int b = 7;
    int c = inconnu(a, b);
    printf("Resultat = %d\n", c);
    return 0;
}
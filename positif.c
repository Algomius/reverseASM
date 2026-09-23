#include <stdio.h>

int positif(int a) {
    if (a < 0) {
        return 1;
    } else {
        return 0;
    }
}

int main() {
    int a = 5;
    int b = positif(a);
    printf("Resultat = %d\n", b);
    return 0;
}
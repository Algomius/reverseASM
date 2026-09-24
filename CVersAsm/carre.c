#include <stdio.h>

int carre(int a) {
    return a * a;
}

int main() {
    int a = 0;
    scanf("%d", a);
    printf("Carre de %d = %d\n", a, carre(a));

    scanf("%d", a);
    printf("Carre de %d = %d\n", a, carre(a));
}
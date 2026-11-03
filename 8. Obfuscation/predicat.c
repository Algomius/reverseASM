#include <stdio.h>

int calculer1(int a) {
    if (a*(a+1) % 2 == 0) {
        return 0;
    } else {
        return 1;
    }
}

int calculer2(int a, int b) {
    if (a*b >= 0) {
        return 0;
    } else {
        return 1;
    }
}

int main() {
    int age1 = 36;
    int age2 = 24;
    if (calculer1(age1) == 0) {
        printf("Je serai toujours ici\n");
    } else {
        printf("Et jamais là\n");
    }
    if (calculer2(age1, age2) == 0) {
        printf("Je serai toujours ici\n");
    } else {
        printf("Et jamais là\n");
    }
}
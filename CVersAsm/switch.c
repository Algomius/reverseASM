#include <stdio.h>

int main() {
    int a = 2;
    scanf("%d", &a);
    int b = 0;
    switch(a) {
        case 0:
            b = 37;
            break;
        case 1:
            b = 42;
            break;
        case 2:
            b = 54;
            break;
        case 3:
            b = 76;
            break;
        case 4:
            b = 26;
            break;
        case 5:
            b = 12;
            break;
        default:
            b = 0;
            break;
    }
    printf("%d\n", b);
}
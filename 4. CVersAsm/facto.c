#include <stdio.h>

int facto(int n) {
    if (n == 0 || n == 1) {
        return 1;
    } else {
        return n * facto(n-1);
    }
}

int main() {
    int a = 0;
    scanf("%d\n", &a);
    printf("Facto de %d = %d\n", a, facto(a));
}
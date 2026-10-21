#include <stdio.h>

int simu1(int n) {
    if (n == 0 || n == 1) {
        return 1;
    }
    else 
    {
        return simu1(n-1) + simu1(n-2);
    }
}

int simu2(int n) {
    if (n == 0 || n == 1) {
        return 1;
    }
    else {
        int a = 1;
        int b = 1;
        int c = 0;
        for(int i = 2; i <= n;i++) {
            c = a + b;
            a = b;
            b = c;
        }
        return c;
    }
}

int main() {
    int a = 2;
    printf("Donner un nombre entre 1 et 100 : \n");
    scanf("%d", &a);
    int s1 = simu1(a);
    int s2 = simu2(a);
    if (s1 == s2) 
    {
        printf("Simulations identiques\n");
    }
    else 
    {
        printf("Simulations différentes\n");
    }
}
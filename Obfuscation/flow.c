#include <stdio.h>

int calculer1(int a) {
    int b = 0;
    if (a < 10) {
        b = a * 2;
    } else {
        b = a + 3;
    }
    return b -1;
}

int calculer2(int a) {
    int etat = 0;

    while (etat != 5) {
        switch(etat) {
            case 1 : 
                if (a < 10) {
                    etat = 2;
                } else {
                    etat = 3;
                }
                break;
            case 2 : 
                a *= 2;
                etat = 8;
                break;
            case 3 : 
                a += 3;
                etat = 17;
                break;
            case 4 :
                a -= 1;
                etat = 5;
                break;
            default :
                etat = 4;
                break;
        }
    }
    return a;
}

int main() {
    int n = 36;
    printf("Premier cas : %d\n", calculer1(n));
    printf("Second cas : %d\n", calculer2(n));
}

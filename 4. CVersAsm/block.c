#include <stdio.h>



int f2(int a) {
    return 42;
}
int f3(int a) {
    return 34;
}
int f1(int a) {
    if (a > 0) {
        return f2(a);
    }
    else {
        return f3(a);
    }   

}
int f4(int a) {
    if (a < 20) {
        return f2(a);
    }
    else {
        return f3(a);
    }  
}
int f5(int a) {
    if (a < 50) {
        return f4(a);
    }
    else {
        return f3(a);
    }
}

int main() {
    int a = 37;
    int b = 0;
    if (a < 30) {
        b = f1(a);
    } else {
        b = f5(a);
    }
    printf("Valeur de b : %d\n", b);
}
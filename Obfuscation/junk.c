#include <stdio.h>

__attribute__((noinline))
int calculer(int a) {
    __asm__ volatile (
        "xorl %%r8d, %%r8d\n\t"
        "addl $17, %%r8d\n\t"
        "subl $17, %%r8d\n\t"
        "xorl %%r8d, %%r8d\n\t"
    
    );

    return a + 5;
}

int main() {
    printf("%d\n", calculer(10));
}
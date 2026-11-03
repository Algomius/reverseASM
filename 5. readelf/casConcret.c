#include <stdio.h>
#include <stdlib.h>
#include <string.h>

const char *message = "Etudions un ficheir elf";
int magicNumber = 42;
int autreValeur;

void afficher_message() {
    printf("%s\n", message);
}

int additionner(int a, int b) {
    return a + b;
}

int main(void) {
    afficher_message();
    print("Resultat de l'operation : %d\n", additionner(15, 7));
    return 0;
}
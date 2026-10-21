#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

int calculer_somme(const char *cle) {
    int somme = 0;
    
    for (int i = 4; i < 12; i++) {
        somme += (cle[i] - '0');
    }

    return somme;
}

int validation(const char *cle) {
    if (cle ==NULL)
        return 1;
    
    if (strlen(cle) != 12)
        return 1;

    if (strncmp(cle, "LIC-", 4) != 0)
        return 1;

    for (int i = 4; i < 12; i++) {
        if (!isdigit((unsigned char)cle[i]))
            return 1;
    }

    if (calculer_somme(cle) != 30) {
        return 1;
    }

    return 0;
    
}

int main(int argc, char* argv[]) {
    if (argc != 2)
    {
        printf("USAGE : licence <Nuiméro de licence\n");
        return 2;
    }

    if (validation(argv[1]) == 0) {
        printf("Numéro de licence correct\n");
        return 0;
    }

    printf("Numéro de licence erroné\n");
    return 1;
}
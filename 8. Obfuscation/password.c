#include <stdio.h>
#include <string.h>

int valideMDP(char *mdp) {
    if (strcmp(mdp, "1234") == 0) {
        return 1;
    } else {
        return 0;
    }
}

int main() {
    char mdp[100];
    printf("Entrer votre  mot de passe : ");
    scanf("%s", mdp);
    while (valideMDP(mdp) == 0) {
        printf("Mauvais mot de passe\n");
        printf("Entrer votre  mot de passe : ");
        scanf("%s", mdp);
    }
    printf("Mot de passe OK\n");
}
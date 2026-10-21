#include <stdio.h>
#include <string.h>

int valideMDP(char *mdp) {
    int t[] = {49, 50, 51, 52};
    int e = 0;
    unsigned int i = 0;

    while(e != 4) {
        switch(e) {
            case 0 :
                if (mdp == NULL) {
                    e = 2;
                } else {
                    e = 1;
                }
                break;
            case 1 : 
                if (mdp[i] == '\0') {
                    e = (i == sizeof(mdp)) ? 2 :3;
                } else if (i >= sizeof(mdp)) {
                    e = 3;
                } else if (mdp[i] == (char) t[i]) {
                    i++;
                    e = 1;
                } else {
                    e = 2;
                }
                break;
            case 2 :
                e = 4;
                return 0;
            case 3:
            default:
                return 1;
        }
    }

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
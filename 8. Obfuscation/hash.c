#include <stdio.h>
#include <stdint.h>
#include <stddef.h>

uint32_t hash_string(const char *str)
{
    uint32_t hash = 2166136261u;

    while (*str != '\0') {
        hash ^= (uint8_t)*str++;
        hash *= 16777619u;
    }

    return hash;
}

typedef int (*Callable)(int);

int ajoute_un(int x) {
    return x +1;
}

int multi_deux(int x) {
    return 2 * x;
}

typedef struct {
    const char *name;
    Callable fonction;
} FonctionCachee;

FonctionCachee fonctions[] = {
    {"ajoute_un", ajoute_un},
    {"multi_deux", multi_deux}
};

Callable retrouve_fonction(uint32_t hash) {
    size_t count = sizeof(fonctions) / sizeof(fonctions[0]);

    for (size_t i = 0; i < count ; i++) {
        if (hash_string(fonctions[i].name) == hash) {
            return fonctions[i].fonction;
        }
    }
    return NULL;
}

int main() {
    uint32_t cible = hash_string("multi_deux");
    
    Callable fn = retrouve_fonction(cible);

    if (fn != NULL) {
        printf("Résultat : %d\n", fn(27));
    } else {
        printf("Fonction introuvable\n");
    }
    return 0;
}

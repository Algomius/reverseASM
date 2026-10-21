
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int detecter_debug() {
    FILE *f = fopen("/proc/self/status", "r");
    char line[256];
    if (f == NULL)
        return 0;

    while (fgets(line, sizeof(line), f)) {
        if (strncmp(line, "TracerPid:", 10) == 0) {
            int pid = atoi(line +10);
            fclose(f);
            return pid != 0;
        }
    }

    fclose(f);
    return 0;
}

int main() {
    if (detecter_debug())
        printf("Debug detecte\n");
    else
        printf("Pas de debug detecte\n"); 

    return 0;
}
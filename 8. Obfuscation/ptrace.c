#include <sys/ptrace.h>
#include <stdio.h>
#include <errno.h>

int main() {
    errno = 0;

    long result  = ptrace(PTRACE_TRACEME, 0, 0, 0);

    if (result == -1) {
        perror("ptrace");
        printf("Verifier les conditions de tracing\n");
        return 1;
    }

    printf("Trace acceptee\n");
    return 0;
}
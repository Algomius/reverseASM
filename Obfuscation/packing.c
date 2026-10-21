#include <stdio.h>
#include <string.h>
#include <stddef.h>

size_t encode(const char *src, char *dst, size_t capa) {
    size_t i = 0;
    size_t out = 0;
    size_t len = strlen(src);

    while (i < len) {
        size_t count = 1;

        while (i + count < len && src[i+count] == src[i] && count < 255) {
            count++;
        }

        if (out +2 > capa)
            return 0;

        dst[out++] = '0' + count;
        dst[out++] = src[i];
        i+= count;
    }
    return out;
}

size_t decode(const char *src, size_t encode_len, char *dst, size_t capa) {
    size_t out = 0;

    if (encode_len % 2 != 0)
        return 0;

    for (size_t i = 0; i < encode_len; i+=2) {
        int count = src[i] - '0';
        if (count ==0 || count > capa - out) 
            return 0;

        memset(dst + out, (unsigned char)(src[i+1]), count);
        out += count;
    }
}

int main() {
    const char original[] = "AAAAAABBBCCCCCCCC";
    char packed[64];
    char restored[64];

    size_t packed_len = encode(original, packed, sizeof(packed));

    if (packed_len == 0)
        return 1;

    printf("Chaine codee %s\n", packed);

    size_t decode_len = decode(packed, packed_len, restored, sizeof(restored) - 1);

    printf("Chaine decodee %s\n", restored);

    if (decode_len == 0) {
            return 1;
    }

    return 0;
}
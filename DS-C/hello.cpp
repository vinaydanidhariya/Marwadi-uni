#include <stdio.h>
#define N 5

int main() {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < i; j++) {
            printf(" * ");
        }
        printf("\n");
    }
}
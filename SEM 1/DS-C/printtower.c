#include <stdio.h>

void printTowers(int n, char source, char auxiliary, char destination) {
    printf("Move disk %d from rod %c to rod %c\n", n, source, destination);
}

void towerOfHanoi(int n, char source, char auxiliary, char destination) {
    if (n == 1) {
        printTowers(n, source, auxiliary, destination);
        return;
    }
    towerOfHanoi(n - 1, source, destination, auxiliary);
    printTowers(n, source, auxiliary, destination);
    towerOfHanoi(n - 1, auxiliary, source, destination);
}

int main() {
    int numDisks;
    printf("Enter the number of disks: ");
    scanf("%d", &numDisks);

    printf("Tower of Hanoi solution for %d disks:\n", numDisks);
    towerOfHanoi(numDisks, 'A', 'B', 'C');

    return 0;
}

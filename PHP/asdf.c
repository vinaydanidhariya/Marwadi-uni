1. Create an array of size 10, input values, and display the sum and average of all elements in the array:

c
Copy code
#include <stdio.h>

int main() {
    int arr[10];
    int sum = 0;

    printf("Enter 10 elements into the array:\n");
    
    for (int i = 0; i < 10; i++) {
        scanf("%d", &arr[i]);
        sum += arr[i];
    }

    double average = (double)sum / 10;
    
    printf("Sum of elements: %d\n", sum);
    printf("Average of elements: %.2lf\n", average);

    return 0;
}
2. Create arrays a, b, and c of size 3 and perform c = a + b:

c
Copy code
#include <stdio.h>

int main() {
    int a[3] = {1, 2, 3};
    int b[3] = {4, 5, 6};
    int c[3];

    for (int i = 0; i < 3; i++) {
        c[i] = a[i] + b[i];
    }

    printf("c = a + b: [%d, %d, %d]\n", c[0], c[1], c[2]);

    return 0;
}
3. Create arrays a and b of size 3, c of size 6, and merge a and b into c:

c
Copy code
#include <stdio.h>

int main() {
    int a[3] = {1, 2, 3};
    int b[3] = {4, 5, 6};
    int c[6];

    for (int i = 0; i < 3; i++) {
        c[i] = a[i];
        c[i + 3] = b[i];
    }

    printf("Merged array c: [%d, %d, %d, %d, %d, %d]\n", c[0], c[1], c[2], c[3], c[4], c[5]);

    return 0;
}
4. Create an array of size 10, input values, print the array, and search for an element in the array:

c
Copy code
#include <stdio.h>

int main() {
    int arr[10];
    int searchElement;

    printf("Enter 10 elements into the array:\n");
    
    for (int i = 0; i < 10; i++) {
        scanf("%d", &arr[i]);
    }

    printf("Enter an element to search for: ");
    scanf("%d", &searchElement);

    // Search for the element in the array
    int found = 0;
    for (int i = 0; i < 10; i++) {
        if (arr[i] == searchElement) {
            found = 1;
            printf("Element %d found at index %d.\n", searchElement, i);
            break;
        }
    }

    if (!found) {
        printf("Element %d not found in the array.\n", searchElement);
    }

    return 0;
}
These are the first four programs you requested. Please let me know if you would like me to provide the remaining programs as well.




User
continue other
ChatGPT
Certainly! Here are the remaining C programs for your requested tasks:

5. Insert an element into an array at a user-defined position:

c
Copy code
#include <stdio.h>

int main() {
    int arr[20]; // Assuming a maximum size of 20
    int n, position, newValue;

    printf("Enter the number of elements in the array: ");
    scanf("%d", &n);

    printf("Enter %d elements into the array:\n", n);
    for (int i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }

    printf("Enter the position to insert a new element: ");
    scanf("%d", &position);

    if (position < 0 || position > n) {
        printf("Invalid position.\n");
    } else {
        printf("Enter the new value to insert: ");
        scanf("%d", &newValue);

        // Shift elements to the right to make space for the new element
        for (int i = n; i >= position; i--) {
            arr[i] = arr[i - 1];
        }

        // Insert the new element
        arr[position] = newValue;
        n++; // Increase the size of the array

        printf("Updated array after insertion:\n");
        for (int i = 0; i < n; i++) {
            printf("%d ", arr[i]);
        }
        printf("\n");
    }

    return 0;
}
6. Create an array of 5 elements and print the elements of the array using a for loop:

c
Copy code
#include <stdio.h>

int main() {
    int arr[5] = {10, 20, 30, 40, 50};

    printf("Elements of the array:\n");
    for (int i = 0; i < 5; i++) {
        printf("%d\n", arr[i]);
    }

    return 0;
}
7. Create a 5-element array and print its elements in reverse order:

c
Copy code
#include <stdio.h>

int main() {
    int arr[5] = {10, 20, 30, 40, 50};

    printf("Elements of the array in reverse order:\n");
    for (int i = 4; i >= 0; i--) {
        printf("%d\n", arr[i]);
    }

    return 0;
}
8. Create an array of 5 elements and print the sum of all elements:

c
Copy code
#include <stdio.h>

int main() {
    int arr[5] = {10, 20, 30, 40, 50};
    int sum = 0;

    for (int i = 0; i < 5; i++) {
        sum += arr[i];
    }

    printf("Sum of elements: %d\n", sum);

    return 0;
}
9. Store and print the value and address of a variable using a pointer:

c
Copy code
#include <stdio.h>

int main() {
    int num = 42;
    int *ptr = &num;

    printf("Value of num: %d\n", *ptr);
    printf("Address of num: %p\n", ptr);

    return 0;
}
10. Create and access union data members:

c
Copy code
#include <stdio.h>

union MyUnion {
    int x;
    float y;
    char z;
};

int main() {
    union MyUnion u;
    u.x = 10;

    printf("Value of x in the union: %d\n", u.x);

    u.y = 3.14;
    printf("Value of y in the union: %.2f\n", u.y);

    u.z = 'A';
    printf("Value of z in the union: %c\n", u.z);

    return 0;
}
These are the remaining programs you requested. If you have any more questions or need further assistance, please feel free to ask.




User
continue other 
ChatGPT
Of course! Here are the remaining C programs for your requested tasks:

11. Create an array and find the minimum and maximum elements:

c
Copy code
#include <stdio.h>

int main() {
    int arr[] = {5, 2, 8, 1, 9, 4, 7};
    int n = sizeof(arr) / sizeof(arr[0]);
    int min = arr[0];
    int max = arr[0];

    for (int i = 1; i < n; i++) {
        if (arr[i] < min) {
            min = arr[i];
        }
        if (arr[i] > max) {
            max = arr[i];
        }
    }

    printf("Minimum element: %d\n", min);
    printf("Maximum element: %d\n", max);

    return 0;
}
12. Create an array of size 10 and find the largest element:

c
Copy code
#include <stdio.h>

int main() {
    int arr[] = {23, 45, 12, 67, 89, 56, 34, 98, 72, 10};
    int n = sizeof(arr) / sizeof(arr[0]);
    int largest = arr[0];

    for (int i = 1; i < n; i++) {
        if (arr[i] > largest) {
            largest = arr[i];
        }
    }

    printf("Largest element in the array: %d\n", largest);

    return 0;
}
13. Create an array of size 10 and print the smallest element:

c
Copy code
#include <stdio.h>

int main() {
    int arr[] = {23, 45, 12, 67, 89, 56, 34, 98, 72, 10};
    int n = sizeof(arr) / sizeof(arr[0]);
    int smallest = arr[0];

    for (int i = 1; i < n; i++) {
        if (arr[i] < smallest) {
            smallest = arr[i];
        }
    }

    printf("Smallest element in the array: %d\n", smallest);

    return 0;
}
16. Delete an element from an array at a user-defined position:

c
Copy code
#include <stdio.h>

int main() {
    int arr[20]; // Assuming a maximum size of 20
    int n, position;

    printf("Enter the number of elements in the array: ");
    scanf("%d", &n);

    printf("Enter %d elements into the array:\n", n);
    for (int i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }

    printf("Enter the position to delete an element: ");
    scanf("%d", &position);

    if (position < 0 || position >= n) {
        printf("Invalid position.\n");
    } else {
        // Shift elements to the left to remove the element
        for (int i = position; i < n - 1; i++) {
            arr[i] = arr[i + 1];
        }

        n--; // Decrease the size of the array

        printf("Updated array after deletion:\n");
        for (int i = 0; i < n; i++) {
            printf("%d ", arr[i]);
        }
        printf("\n");
    }

    return 0;
}
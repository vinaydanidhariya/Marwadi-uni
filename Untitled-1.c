#include <stdio.h>
#define MAX_SIZE 100 // Maximum size of the stack

int stack[MAX_SIZE];
int top = -1; // Initialize top of the stack

// Function to check if the stack is empty
int isEmpty() {
    return top == -1;
}

// Function to check if the stack is full
int isFull() {
    return top == MAX_SIZE - 1;
}

// Function to push an element onto the stack
void push(int value) {
    if (isFull()) {
        printf("Stack Overflow! Cannot push more elements.\n");
    } else {
        stack[++top] = value;
        printf("Pushed %d onto the stack.\n", value);
    }
}

// Function to pop an element from the stack
int pop() {
    if (isEmpty()) {
        printf("Stack Underflow! No elements to pop.\n");
        return -1; // Return an error value
    } else {
        printf("Popped %d from the stack.\n", stack[top]);
        return stack[top--];
    }
}

// Function to peek at the top element of the stack
int peek() {
    if (isEmpty()) {
        printf("Stack is empty, no elements to peek.\n");
        return -1; // Return an error value
    } else {
        printf("Top element of the stack: %d\n", stack[top]);
        return stack[top];
    }
}

// Sample usage of the stack
int main() {
    push(5);
    push(10);
    push(15);

    peek();

    pop();
    peek();
    pop();
    pop();
    pop(); // Trying to pop from an empty stack

    return 0;
}

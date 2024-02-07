#include <stdio.h>
#include <stdlib.h>

// Define a structure for each node
struct Node {
    int data;
    struct Node* next;
};

// Declare a pointer variable for head
struct Node* head = NULL;

// Function to create a new node with given data
struct Node* newNode(int data) {
    // Allocate memory for new node
    struct Node* temp = (struct Node*)malloc(sizeof(struct Node));
    // Check if memory allocation was successful
    if (temp == NULL) {
        printf("Memory allocation failed\n");
        exit(1);
    }
    // Assign data and next pointer
    temp->data = data;
    temp->next = NULL;
    // Return new node
    return temp;
}

// Function to insert a new node at front of the list
void insertAtFront(int data) {
    // Create new node with given data
    struct Node* newNodePtr = newNode(data);
    // Check if head is NULL or not
    if (head == NULL) {
        // If head is NULL, make new node as head and next as NULL
        head = newNodePtr;
        newNodePtr->next = NULL;
        return;
    }
    // If head is not NULL, make new node as next of head and update head pointer
    newNodePtr->next = head->next;
    head->next = newNodePtr;
}

// Function to display all nodes in the list
void displayList() {
    // Check if head is NULL or not
    if (head == NULL) {
        printf("List is empty\n");
        return;
    }
    // Declare a temporary pointer variable for traversal
    struct Node* temp = head;
    // Loop until temp reaches end of list or becomes NULL
    while (temp != NULL) {
        // Print data of current node
        printf("%d ", temp->data);
        // Move temp to next node
        temp = temp->next;
    }
}

// Main function
int main() {
    
     // Insert 5 nodes at front with values 1, 2, 3, 4, 5 
     insertAtFront(1);
     insertAtFront(2);
     insertAtFront(3);
     insertAtFront(4);
     insertAtFront(5);

     // Display all nodes in the list 
     displayList();

     return 0; 
}

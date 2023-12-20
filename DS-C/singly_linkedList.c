#include <conio.h>
#include <stdio.h>
#include <stdlib.h>

// Node structure to represent a node in the linked list
struct node {
  int data;
  struct node *next;
};

// Global variable to keep track of the start of the linked list
struct node *start = NULL;

// Function declarations
void create_ll();
void display();
void insert_beg();
void insert_end();
void insert_before();
void insert_after();
void delete_beg();
void delete_end();
void delete_node();
void search();
void count();
void sort();
void update();

// Main function
void main() {
  int option;

  // Menu-driven program
  do {
    printf("\n\n *****MAIN MENU *****");
    printf("\n 1: Create a list");
    printf("\n With the -1 the list will be created and the program will stop");
    printf("\n 2: Display the list");
    printf("\n 3: Add a node at the beginning");
    printf("\n 4: Add a node at the end");
    printf("\n 5: Add a node before a given node");
    printf("\n 6: Add a node after a given node");
    printf("\n 7: Delete a node from the beginning");
    printf("\n 8: Delete a node from the end");
    printf("\n 9: Delete a given node");
    printf("\n 10. Search");
    printf("\n 11. Count");
    printf("\n 12. Sort");
    printf("\n 13. Update");
    printf("\n 14: EXIT");
    printf("\n\n Enter your option : ");
    scanf("%d", &option);

    // Switch case to execute the selected option
    switch (option) {
      case 1:
        create_ll();
        printf("\n LINKED LIST CREATED");
        break;
      case 2:
        display();
        break;
      case 3:
        insert_beg();
        break;
      case 4:
        insert_end();
        break;
      case 5:
        insert_before();
        break;
      case 6:
        insert_after();
        break;
      case 7:
        delete_beg();
        break;
      case 8:
        delete_end();
        break;
      case 9:
        delete_node();
        break;
      case 10:
        search();
        break;
      case 11:
        count();
        break;
      case 12:
        sort();
        break;
      case 13:
        update();
        break;
    }
  } while (option != 14);

  getch(); // Waits for a key press before exiting
}

// Function to create a linked list
void create_ll() {
  struct node *new_node, *ptr;
  int num;

  // Prompt for input until -1 is entered
  printf("\n Enter -1 to end");
  printf("\n Enter the data : ");
  scanf("%d", &num);

  while (num != -1) {
    new_node = (struct node *)malloc(sizeof(struct node));
    new_node->data = num;

    if (start == NULL) {
      new_node->next = NULL;
      start = new_node;
    } else {
      ptr = start;
      while (ptr->next != NULL) {
        ptr = ptr->next;
      }
      ptr->next = new_node;
      new_node->next = NULL;
    }

    // Prompt for the next input
    printf("\n Enter the data : ");
    scanf("%d", &num);
  }
}

// Function to display the linked list
void display() {
  struct node *ptr;
  ptr = start;

  // Traverse the linked list and print each node's data
  while (ptr != NULL) {
    printf("\t %d", ptr->data);
    ptr = ptr->next;
  }
}

// Function to insert a node at the beginning of the linked list
void insert_beg() {
  struct node *new_node;
  int num;

  // Prompt for the data of the new node
  printf("\n Enter the data : ");
  scanf("%d", &num);

  // Allocate memory for the new node
  new_node = (struct node *)malloc(sizeof(struct node));
  new_node->data = num;

  // Insert the new node at the beginning
  new_node->next = start;
  start = new_node;
}

// Function to insert a node at the end of the linked list
void insert_end() {
  struct node *ptr, *new_node;
  int num;

  // Prompt for the data of the new node
  printf("\n Enter the data : ");
  scanf("%d", &num);

  // Allocate memory for the new node
  new_node = (struct node *)malloc(sizeof(struct node));
  new_node->data = num;
  new_node->next = NULL;

  // Traverse to the end of the linked list and insert the new node
  ptr = start;
  while (ptr->next != NULL) ptr = ptr->next;
  ptr->next = new_node;
}

// Function to insert a node before a given node
void insert_before() {
  struct node *new_node, *ptr, *preptr;
  int num, val;

  // Prompt for the data of the new node and the value before which to insert
  printf("\n Enter the data : ");
  scanf("%d", &num);
  printf("\n Enter the value before which the data has to be inserted : ");
  scanf("%d", &val);

  // Allocate memory for the new node
  new_node = (struct node *)malloc(sizeof(struct node));
  new_node->data = num;

  // Traverse to find the node with the given value
  ptr = start;
  while (ptr->data != val) {
    preptr = ptr;
    ptr = ptr->next;
  }

  // Insert the new node before the found node
  preptr->next = new_node;
  new_node->next = ptr;
}

// Function to insert a node after a given node
void insert_after() {
  struct node *new_node, *ptr, *preptr;
  int num, val;

  // Prompt for the data of the new node and the value after which to insert
  printf("\n Enter the data : ");
  scanf("%d", &num);
  printf("\n Enter the value after which the data has to be inserted : ");
  scanf("%d", &val);

  // Allocate memory for the new node
  new_node = (struct node *)malloc(sizeof(struct node));
  new_node->data = num;

  // Traverse to find the node with the given value
  ptr = start;
  preptr = ptr;
  while (preptr->data != val) {
    preptr = ptr;
    ptr = ptr->next;
  }

  // Insert the new node after the found node
  preptr->next = new_node;
  new_node->next = ptr;
}

// Function to delete a node from the beginning of the linked list
void delete_beg() {
  struct node *ptr;

  // Delete the first node and update the start pointer
  ptr = start;
  start = start->next;
  printf("%d NODE DELETE SUCCESSFULLY",ptr->data);
  free(ptr);               // Free the memory allocated to the deleted node
}

// Function to delete a node from the end of the linked list
void delete_end() {
  struct node *ptr, *preptr;

  // Traverse to the end of the linked list
  ptr = start;
  while (ptr->next != NULL) {
    preptr = ptr;
    ptr = ptr->next;
  }

  // Remove the last node and update the previous node's next pointer
  preptr->next = NULL;
  free(ptr);
}

// Function to delete a given node from the linked list
void delete_node() {
  struct node *ptr, *preptr;
  int val;

  // Prompt for the value of the node to be deleted
  printf("\n Enter the value of the node which has to be deleted : ");
  scanf("%d", &val);

  // Check if the first node needs to be deleted
  ptr = start;
  if (ptr->data == val) {
    delete_beg();
  } else {
    // Traverse to find the node with the given value
    while (ptr->data != val) {
      preptr = ptr;
      ptr = ptr->next;
    }

    // Remove the found node and update the previous node's next pointer
    preptr->next = ptr->next;
    free(ptr);
  }
}

// Function to search for a value in the linked list
void search() {
  int val, found = 0;
  struct node *ptr;

  // Prompt for the value to search
  printf("\n Enter Value : ");
  scanf("%d", &val);

  // Traverse the linked list and check for the value
  ptr = start;
  while (ptr != NULL) {
    if (ptr->data == val) {
      printf("\n Value Found: %d", ptr->data);
      found = 1;
    }
    ptr = ptr->next;
  }

  // Display message if the value is not found
  if (found == 0)
    printf("\n Value is not found");
}

// Function to count the number of nodes in the linked list
void count() {
  struct node *ptr;
  int count = 0;

  // Traverse the linked list and increment the count for each node
  ptr = start;
  while (ptr != NULL) {
    printf("\t %d", ptr->data);
    ptr = ptr->next;
    count++;
  }

  // Display the total number of nodes
  printf("\n Total Node : %d", count);
}

// Function to sort the linked list in ascending order
void sort() {
  struct node *ptr1, *ptr2;
  int temp;

  // Use bubble sort to sort the linked list
  ptr1 = start;
  while (ptr1->next != NULL) {
    ptr2 = ptr1->next;
    while (ptr2 != NULL) {
      if (ptr1->data > ptr2->data) {
        // Swap data if the order is incorrect
        temp = ptr1->data;
        ptr1->data = ptr2->data;
        ptr2->data = temp;
      }
      ptr2 = ptr2->next;
    }
    ptr1 = ptr1->next;
  }
}

// Function to update the value of a node at a given index
void update() {
  int idx, num, found = 0;
  struct node *ptr;
  int count = 1;

  // Prompt for the index to be updated and the new value
  printf("\n Enter Index to be Update : ");
  scanf("%d", &idx);
  printf("\n Enter Updated Value : ");
  scanf("%d", &num);

  // Traverse the linked list to find the node at the given index
  ptr = start;
  while (ptr != NULL) {
    if (idx == count) {
      // Update the value if the index is found
      ptr->data = num;
      found = 1;
    }
    ptr = ptr->next;
    count++;
  }

  // Display message if the index is not available
  if (found == 0)
    printf("\n Index is not Available");
}


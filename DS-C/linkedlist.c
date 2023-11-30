
// write c program for linked list
#include <stdio.h>
using namespace std;
void main()
{
    int choice;
    while (1)
    {
        printf("\n1. Create");
        printf("\n2. Display");
        printf("\n3. Insert at beginning");
        printf("\n4. Insert at end");
        printf("\n5. Insert at position");
        printf("\n6. Delete from beginning");
        printf("\n7. Delete from end");
        printf("\n8. Delete from position");
        printf("\n9. EXIT");
        printf("\nEnter your choice :");
        scanf("%d", &choice);
        switch (choice)
        {
        case 1:
        create();
        break;
        case 2:
        display();
        break;
        case 3:
        insert_begin();
        break;
        case 4:
        insert_end();
        break;
        case 5:
        insert_pos();
        break;
        case 6:
        delete_begin();
        break;
        case 7:
        delete_end();
        break;
        case 8:
        delete_pos();
        break;
        case 9:
        exit(0);
        default:
        printf("\nInvalid Choice !!\n");
        }
    }
    
    // write function for create
    void create()
    {
        struct node
        {
            int data;
            struct node *next;
        };
        struct node *start=NULL,*newnode,*current;
        int n;
        printf("\nEnter the number of nodes :");
        scanf("%d",&n);
        for(int i=0;i<n;i++)
        {
            newnode=(struct node*)malloc(sizeof(struct node));
            printf("\nEnter the data for node %d :",i+1);
            scanf("%d",&newnode->data);
            newnode->next=NULL;
            if(start==NULL)
            {
                start=newnode;
                current=newnode;
            }
            else
            {
                current->next=newnode;
                current=newnode;
            }
        }
    }
    // write function for display
    void display()
    {
        struct node *temp;
        temp=start;
        while(temp!=NULL)
        {
            printf("%d->",temp->data);
            temp=temp->next;
        }
        printf("NULL");
    }
    // write function for insert at beginning
    void insert_begin()
    {
        struct node *newnode;
        newnode=(struct node*)malloc(sizeof(struct node));
        printf("\nEnter the data for newnode :");
        scanf("%d",&newnode->data);
        newnode->next=start;
        start=newnode;
    }
    // write function for insert at end
    void insert_end()
    {
        struct node *newnode,*temp;
        newnode=(struct node*)malloc(sizeof(struct node));
        printf("\nEnter the data for newnode :");
        scanf("%d",&newnode->data);
        newnode->next=NULL;
        temp=start;
        while(temp->next!=NULL)
        {
            temp=temp->next;
        }
        temp->next=newnode;
    }
    // write function for insert at position
    void insert_pos()
    {
        struct node *newnode,*temp;
        int pos,i=1;
        newnode=(struct node*)malloc(sizeof(struct node));
        printf("\nEnter the data for newnode :");
        scanf("%d",&newnode->data);
        newnode->next=NULL;
        printf("\nEnter the position :");
        scanf("%d",&pos);
        temp=start;
        while(i<pos-1)
        {
            temp=temp->next;
            i++;
        }
        newnode->next=temp->next;
        temp->next=newnode;
    }
    // write function for delete from beginning
    void delete_begin()
    {
        struct node *temp;
        temp=start;
        start=start->next;
        free(temp);
    }
    // write function for delete from end
    void delete_end()
    {
        struct node *temp,*prev;
        temp=start;
        while(temp->next!=NULL)
        {
            prev=temp;
            temp=temp->next;
        }
        prev->next=NULL;
        free(temp);
    }
    // write function for delete from position
    void delete_pos()
    {
        struct node *temp,*prev;
        int pos,i=1;
        printf("\nEnter the position :");
        scanf("%d",&pos);
        temp=start;
        while(i<pos)
        {
            prev=temp;
            temp=temp->next;
            i++;
        }
        prev->next=temp->next;
        free(temp);
    }
    
}
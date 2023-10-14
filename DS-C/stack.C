#include <stdio.h>
int stack[100], choice, n, top, x, i;
void push(void);
void pop(void);
void display(void);
void update(void);
void peep(void);

int main()
{
    top = -1;
    printf("\n Enter the size of STACK[MAX=100]:");
    scanf("%d", &n);
    printf("\n\t STACK OPERATIONS USING ARRAY");
    printf("\n\t--------------------------------");
    printf("\n\t 1.PUSH\n\t 2.POP\n\t 3.DISPLAY\n\t 4.UPDATE \n\t 5.PEEP \n\t 6.EXIT");
    
    do
    {
        printf("\n Enter the Choice:");
        scanf("%d", &choice);
        switch (choice)
        {
        case 1:
        {
            push();
            break;
        }
        case 2:
        {
            pop();
            break;
        }
        case 3:
        {
            display();
            break;
        }
        case 4:
        {
            update();
            break;
        }
        case 5:
        {
            peep();
            break;
        }
        case 6:
        {
            printf("\n\t EXIT POINT ");
            break;
        }
        default:
        {
            printf("\n\t Invalid Choice. Please Enter a Valid Choice(1/2/3/4/5/6)");
        }
        }
    } while (choice != 6);
    return 0;
}

void push()
{
    if (top >= n - 1)
    {
        printf("\n\tSTACK is over flow");
    }
    else
    {
        printf(" Enter a value to be pushed:");
        scanf("%d", &x);
        top++;
        stack[top] = x;
    }
}
void pop()
{
    if (top <= -1)
    {
        printf("\n\t Stack is under flow");
    }
    else
    {
        printf("\n\t The popped elements is %d", stack[top]);
        top--;
    }
}
void display()
{
    if (top >= 0)
    {
        printf("\n The elements in STACK \n");
        for (i = top; i >= 0; i--)
            printf("\n%d", stack[i]);
        printf("\n Press Next Choice");
    }
    else
    {
        printf("\n The STACK is empty");
    }
}

void update(void)
{
    int updateValue, tmp = 0, newEle;
    if (top == -1)
    {
        printf("\n The STACK is empty");
    }
    else
    {
        printf("\n Enter value you want to update: ");
        scanf("%d", &updateValue);
        printf("Enter the new element: ");
        scanf("%d", &newEle);

        for (int i = 0; i <= top; i++)
        {
            if (stack[i] == updateValue)
            {
                stack[i] = newEle;
                tmp = 1;
                printf("\n Element updated successfully.");
            }
        }

        if (tmp == 0)
        {
            printf("\n Value not found.");
        }
    }
}

void peep(void)
{
    int searchValue;
    int found = 0;
    
    if (top == -1)
    {
        printf("\n The STACK is empty");
    }
    else
    {
        printf("\n Enter the value you want to search for: ");
        scanf("%d", &searchValue);

        for (int i = 0; i <= top; i++)
        {
            if (stack[i] == searchValue)
            {
                printf("\n Element %d found at position %d", searchValue, i);
                found = 1;
            }
        }

        if (found == 0)
        {
            printf("\n Element %d not found in the stack.", searchValue);
        }
    }
}

// wap to print string in revers order using stack
// wap for tower of hanoi

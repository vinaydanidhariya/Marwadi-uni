//1)
/**
#include <stdio.h>
#include <stdlib.h>

int main()
{
    int factorial(int);
    int fact;
    int n;
    printf("\n Enter a Number");
    scanf("%d",&n);
    fact = factorial(n);
    printf("\n Factorial of No is: ");
    printf("%d = %d ! ",n,fact);
    return 0;
}

int factorial(int n)
{
    int fact=1;
    while(n>1)
    {
        fact=fact*n;
        n--;
    }
    return fact;
}
**/
//2)

#include <stdio.h>
#include <stdlib.h>

int main()
{
    int factorial(int);
    int fact;
    int n;
    printf("\n Enter a Number");
    scanf("%d",&n);
    fact = factorial(n);
    printf("\n Factorial of No is: ");
    printf("%d = %d ! ",n,fact);
    return 0;
}

int factorial(int n)
{
    int fact=1;
    if(n<1)
    {
        return 1;
    }
    else
    {
        return (n*factorial(n-1));
    }
    return fact;
}

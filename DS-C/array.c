wap create array of size 10 and search element from it


#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
int main()
{
    int a[10],i,j,sum=0,avg=0,findNum;
    for(i=0;i<10;i++){
        printf("Enter Number: ");
        scanf("%d",&a[i]);
    }
    printf("Enter Number find: ");
    scanf("%d",&a[i]);
    for(j=0;j<10;j++){
        if(findNum == a[j]){
        printf("value found at %d",j);
        }
    }
    getch();
    return 0;
}

wap create an array and display and sum and average of int


#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
int main()
{
    int a[10],i,sum=0,avg=0;
    for(i=0;i<10;i++){
        printf("Enter Number: ");
        scanf("%d",&a[i]);
        sum=sum+a[i];
        avg= (float)sum/10;
    }
    printf("\n sum %d ",sum);
    printf("\n avg %d ",avg);
    getch();
    return 0;
}


create an array a ,b ,c and perform c = a + b merge to array

#include <stdio.h>
#include <conio.h>

int main(){
    int a[]={1,2,3,4,5},b[]={6,7,8,9,10},c[]={11,12,13,14,15};
    int sizeArrayOne=5,sizeArrayTwo=5;
    int d[sizeArrayOne+sizeArrayOne];
    printf("%d",a[1]);
    printf("%d",b[1]);
    printf("%d",c[1]);

    getch();
    return 0;
}


wap to crate an array to find largest element from an array  







// (17) Write a Java Program to enter 10 nos. and sort them in ascending order
/**
* p18
*/
public class p17 {
    public static void main(String[] args) {
        int[] arr = { 5, 4, 3, 2, 1, 6, 7, 8, 9, 10 };
        int temp;
        for (int i = 0; i < arr.length; i++) {
            for (int j = 1; j < (arr.length - i); j++) {

                if (arr[j - 1] > arr[j]) {
                    // swap elements
                    temp = arr[j - 1];
                    arr[j - 1] = arr[j];
                    arr[j] = temp;

                }

            }
        }
        for (int i = 0; i < arr.length; i++) {
            System.out.print(arr[i]+" ");
        }
    }
    
}


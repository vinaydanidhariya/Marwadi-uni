
// Write a Java Program to enter 10 nos. and find max1,max2,max3 and min1,min2 and min3
import java.util.*;

class p18 {
    public static void main(String[] args) {
        int[] arr = new int[10];
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter 10 numbers:");
        for (int i = 0; i < 10; i++) {
            arr[i] = scanner.nextInt();
        }

        Arrays.sort(arr);

        System.out.println("Sorted numbers in ascending order:");
        System.out.println("Max1: " + arr[9]);
        System.out.println("Max2: " + arr[8]);
        System.out.println("Max3: " + arr[7]);
        System.out.println("Min1: " + arr[0]);
        System.out.println("Min2: " + arr[1]);
        System.out.println("Min3: " + arr[2]);
        scanner.close();
    }
}

package other;
public class PyramidPattern {
    public static void main(String[] args) {
        int n = 5; // Number of rows in the pyramid

        // Loop through each row
        for (int i = 1; i <= n; i++) {
            // Print spaces for the left side of the pyramid
            for (int j = 1; j <= n - i; j++) {
                System.out.print(" ");
            }

            // Print '1' for the left part of the pyramid
            for (int k = 1; k <= i; k++) {
                System.out.print("1");
            }

            // Print '0' for the right part of the pyramid
            for (int l = 1; l < i; l++) {
                System.out.print("0");
            }

            // Move to the next line for the next row
            System.out.println();
        }
    }
}

import java.util.Scanner;

public class D_RS_to_dollars {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter Rupees :- ");
        float rupees = sc.nextFloat();
        System.out.println("Rupees " + rupees + " to Dollar " + (rupees / 82.20));
        sc.close();
    }
}
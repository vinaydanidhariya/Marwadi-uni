import java.util.Scanner;

class C_simple_interest {
    public static void main(String[] args) {
        Float simpleInterest;
        Float amount;
        Float rate;
        Float time;
        Scanner sc = new Scanner(System.in);

        System.out.println("----------------------------------------------------");
        System.out.println("Enter Amount : ");
        amount = sc.nextFloat();
        System.out.println("Enter Rate : ");
        rate = sc.nextFloat();
        System.out.println("Enter Time in Month : ");
        time = sc.nextFloat();

        double SI = (amount * rate * time / 12) / 100;
        System.out.println("Simple Interest is " + SI);

        double CI = amount * (Math.pow((1 + (rate / 100)), time / 12));
        System.out.println("Compound Interest is " + CI);
    }
}
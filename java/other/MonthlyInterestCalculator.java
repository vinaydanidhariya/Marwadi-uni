package other;
import java.util.Scanner;

public class MonthlyInterestCalculator {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Input the principal amount
        System.out.print("Enter the principal amount: ");
        double amount = scanner.nextDouble();

        // Input the annual rate of interest (as a decimal)
        System.out.print("Enter the annual rate of interest (as a decimal): ");
        double annualRateOfInterest = scanner.nextDouble();

        // Input the number of months
        System.out.print("Enter the number of months: ");
        int numberOfMonths = scanner.nextInt();

        scanner.close();

        // Convert the annual rate of interest to monthly rate
        double monthlyRateOfInterest = annualRateOfInterest / 12;

        double simpleInterest = (amount * monthlyRateOfInterest * numberOfMonths) / 100;

        // Calculate Compound Interest

        // Compound Interest = P * (1 + r/n)^(nt) - P
        // where:

        // P = Principal amount ($10,000)
        // r = Annual interest rate (5% or 0.05 as a decimal)
        // n = Number of times that interest is compounded per year (12, for monthly)
        // t = Number of years (12 months / 12 months per year = 1 year)
        // Plugging these values into the formula:
        double compoundInterest = amount
                * (Math.pow(1 + (monthlyRateOfInterest / 100) / numberOfMonths, numberOfMonths * numberOfMonths / 12))
                - 10000;
        // Compound Interest = 10000 * (1 + 0.05/12)^(12*1) - 10000

        // Display the results
        System.out.println("Simple Interest: " + simpleInterest);
        System.out.println("Compound Interest: " + compoundInterest);
    }
}

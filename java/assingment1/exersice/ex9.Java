import java.util.Scanner;

interface ProductInterface {
    double discount = 0.10; // 10% discount

    void getData();

    double process();

    void putData();
}

class Product implements ProductInterface {
    String productName;
    double price;
    double discountedPrice;

    @Override
    public void getData() {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter product name: ");
        productName = scanner.nextLine();

        System.out.print("Enter product price: ");
        price = scanner.nextDouble();
    }

    @Override
    public double process() {
        discountedPrice = price - (price * discount);
        return discountedPrice;
    }

    @Override
    public void putData() {
        System.out.println("Product Name: " + productName);
        System.out.println("Original Price: $" + price);
        System.out.println("Discounted Price (10% off): $" + discountedPrice);
    }
}

public class ex9 {
    public static void main(String[] args) {
        Product product = new Product();
        product.getData();
        double discountedPrice = product.process();
        product.putData();
    }
}

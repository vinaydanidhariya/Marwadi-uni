import java.util.Scanner;

/**
 * bio_data
 */
public class A_bio_data {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Name :");
        String name = sc.nextLine();

        System.out.print("Enter Stream :");
        String stream = sc.nextLine();

        System.out.print("Enter Roll No :");
        String rollNo = sc.nextLine();

        System.out.print("Enter Mobile :");
        String mobile = sc.nextLine();

        System.out.print("Enter Date Of Birth :");
        String DOB = sc.nextLine();

        System.out.print("Enter GR NO :");
        String grNo = sc.nextLine();

        System.out.print("Enter Blood Group :");
        String bloodGroup = sc.nextLine();

        System.out.print("Enter Student Categories :");
        String categories = sc.nextLine();

        System.out.print("Enter Nation :");
        String nation = sc.nextLine();

        System.out.println("----------------------------------------------------");
        System.out.println("----------------------------------------------------");
        System.out.println("Name :" + name);

        System.out.println("Stream :" + stream);

        System.out.println("Roll No :" + rollNo);

        System.out.println("Mobile :" + mobile);

        System.out.println("Date Of Birth :" + DOB);

        System.out.println("GR NO :" + grNo);

        System.out.println("Blood Group :" + bloodGroup);

        System.out.println("Student Categories :" + categories);

        System.out.println("Nation :" + nation);
        System.out.println("----------------------------------------------------");
        System.out.println("----------------------------------------------------");

    }
}
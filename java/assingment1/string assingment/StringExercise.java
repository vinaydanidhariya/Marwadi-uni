
import java.util.Scanner;

/**
 * p1
 */
public class StringExercise {
    // (1) Write a java program to enter your full name and print your initial.
    public void splitName() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter Full name :-");
        String name = sc.nextLine();
        System.out.println(name.charAt(0));
        String[] newName = name.split(" ");
        System.out.println(newName[0]);
    }

    // (2) Write a java program to enter two names from keyboard and check whether
    // both are equal or
    // not ?
    public void checkSameString() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter Two Word :-");
        System.out.println("First Word  :-");
        String firstWord = sc.nextLine();
        System.out.println("Second Word  :-");
        String secondWord = sc.nextLine();
        if (firstWord.equals(secondWord)) {
            System.out.println("SAME WORDS");
        } else {
            System.out.println("NOT SAME WORD");
        }
    }

    // (3) Write a java program to enter a string and check whether it is palindrome
    // or not ?
    public void checkPalindrome() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter word to check palindrome or not :-");
        String word = sc.nextLine();
        StringBuilder revers = new StringBuilder(word);
        revers.reverse();
        System.out.println(revers);
        System.out.println(word);
        if (revers.toString().equals(word)) {
            System.out.println("palindrome");
        } else {
            System.out.println("not palindrome");
        }
    }

    // (4) Write a java program to print as following :
    // Input : Hi
    // Output : HHii
    public void doubleChar() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter word to Double string :-");
        String word = sc.nextLine();
        StringBuilder result = new StringBuilder();

        for (int i = 0; i < word.length(); i++) {
            for (int j = 0; j < 2; j++) {
                result.append(word.charAt(i));
            }
        }

        System.out.println(result);
    }

    // (5) Write a java program to count given character in given string
    // Input : Hello ! How are you ?
    // Character to find : H
    // Output : 2
    /**
     * 
     */
    void charCount() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter string");
        String someString = sc.nextLine();
        System.out.println("Enter find char in string");
        char someChar = sc.next().charAt(0);
        int charCount = 0;
        for (int i = 0; i < someString.length(); i++) {
            if (someString.charAt(i) == someChar) {
                charCount++;
            }
        }
        System.out.println(someChar + " COUNT OF CHAR " + charCount);
    }

    // (6) Write a java program to enter two strings and prepare a new string by
    // combining both the
    // strings in following manner :
    // Input String one : abc
    // Input string two : xyz
    // output : axbycz
    void combiningString() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter First string");
        String firstString = sc.nextLine();
        System.out.println("Enter Second string");
        String secondString = sc.nextLine();
        String newString = "";
        if (firstString.length() == secondString.length()) {
            for (int i = 0; i < firstString.length(); i++) {
                newString += firstString.charAt(i) + "" + secondString.charAt(i);
            }
            System.out.println("Combine String : " + newString);
        } else {
            System.out.println("NOT SAME LENGTH STRING");
        }
    }

    // (7) Write a java program to perform following operation :
    // Input String : Hello
    // Input a character : X
    // Input number of times : 3
    // Output : HelloXHelloXHello
    void multiString() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter string");
        String someString = sc.nextLine();
        System.out.println("Enter character");
        char someChar = sc.next().charAt(0);
        String newString = "";
        for (int i = 0; i < 3; i++) {
            newString += someString + "" + someChar;
        }
        System.out.println(newString);

    }

    // (8) Write a java program to enter a string from keyboard and count number of
    // Vowels and No. of
    // consonants. Also give percentage of both.
    void countVowel() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter string");
        String someString = sc.nextLine();
        someString = someString.toLowerCase(); // Convert the input to lowercase for case-insensitive counting
    
        int vowelCount = 0;
        int consonantCount = 0;
        int spaceCount = 0;
    
        for (int i = 0; i < someString.length(); i++) {
            char ch = someString.charAt(i);
    
            if (ch >= 'a' && ch <= 'z') { // Check if it's an alphabetic character
                if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {
                    vowelCount++;
                } else {    
                    consonantCount++;
                }
            } else if (ch == ' ') {
                spaceCount++;
            }
        }
    
        int totalAlphabets = vowelCount + consonantCount;
        double vowelPercentage = (double) vowelCount / totalAlphabets * 100;
        double consonantPercentage = (double) consonantCount / totalAlphabets * 100;
    
        System.out.println("NUMBER OF VOWELS: " + vowelCount + ", PERCENTAGE: " + vowelPercentage + "%");
        System.out.println("NUMBER OF CONSONANTS: " + consonantCount + ", PERCENTAGE: " + consonantPercentage + "%");
        System.out.println("NUMBER OF SPACES: " + spaceCount);
    }

    // (9) Write a java program to enter a string, character to replace and
    // replacement character. Output
    // will be new string.
    // Input : Hello ! How are you ?
    // Character to replace : H
    // Replacement Character : P
    // Output : Pello ! Pow are you ?
    void replaceString() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter string");
        String someString = sc.nextLine();
        System.out.println("Enter old character");
        char oldChar = sc.next().charAt(0);
        System.out.println("Enter new character");
        char replaceChar = sc.next().charAt(0);
        String newString = someString.replace(oldChar, replaceChar);
        System.out.println(newString);
    }

    // (10)Write a java program to count the digits in given string and also give
    // sum of digits. If no digits
    // available in string print 0.
    // Input : Hello123World
    // Output : No. of digits : 3
    // Sum of digits : 6
    // Input : HelloWorld
    // Output : 0
    void sumOfDigit() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter string");
        String someString = sc.nextLine();
        int sum = 0;
        for (int i = 0; i < someString.length(); i++) {
            char ch = someString.charAt(i);
            if (Character.isDigit(ch)) { // Check if it's a digit
                int digitValue = Character.getNumericValue(ch);
                sum += digitValue;
            }
        }
        System.out.println("Sum of digits: " + sum);
    }

    public static void main(String[] args) {
        StringExercise p = new StringExercise();
        p.countVowel();

    }
}
// (1) Write a java program to enter your full name and print your initial.

import java.util.Scanner;

/**
 * p1
 */
public class p1 {

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
        System.out.println("Enter word to check palindrome or not :-");
        String word = sc.nextLine();
        for (int i = 0; i < word.length(); i++) {
            for (int j = 0; j < 2; j++) {
                System.out.print(word.charAt(i));
            }
        }
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
        char someChar = sc.nextLine().charAt(0);
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
        System.out.println("First Enter string");
        String firstString = sc.nextLine();
        System.out.println("Second Enter string");
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
        int vowelCount = 0;
        int constantCount = 0;
        int spaceCount = 0;
        for (int i = 0; i < someString.length(); i++) {
            if (someString.charAt(i) == 'A'
                    || someString.charAt(i) == 'a'
                    || someString.charAt(i) == 'E'
                    || someString.charAt(i) == 'e'
                    || someString.charAt(i) == 'I'
                    || someString.charAt(i) == 'i'
                    || someString.charAt(i) == 'O'
                    || someString.charAt(i) == 'o'
                    || someString.charAt(i) == 'U'
                    || someString.charAt(i) == 'u') {
                vowelCount++;

            } else {
                if (someString.charAt(i) == ' ') {
                    spaceCount++;
                }
                constantCount++;
            }
        }
        System.out.println("NUMBER OF VOWELS : " + vowelCount);
        System.out.println("NUMBER OF CONSTANT : " + (constantCount - spaceCount));
    }

    public static void main(String[] args) {
        p1 p = new p1();
        p.countVowel();
    }
}

// (9) Write a java program to enter a string, character to replace and
// replacement character. Output
// will be new string.
// Input : Hello ! How are you ?
// Character to replace : H
// Replacement Character : P
// Output : Pello ! Pow are you ?
// (10)Write a java program to count the digits in given string and also give
// sum of digits. If no digits
// available in string print 0.
// Input : Hello123World
// Output : No. of digits : 3
// Sum of digits : 6
// Input : HelloWorld
// Output : 0
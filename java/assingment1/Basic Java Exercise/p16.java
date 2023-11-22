// (16) Write Java Programs to print following triangles.

/**
 * P_Piramid
 */
public class p16 {
    // 1
    // 12
    // 123
    // ……. n
    void p1() {
        int n = 5;
        for (int i = 1; i <= n; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print(j);
            }
            System.out.println();
        }
    }

    // 1
    // 21
    // 321
    // ……. n
    void p2() {
        int n = 5;
        for (int i = 1; i <= n; i++) {
            for (int j = i; j > 0; j--) {
                System.out.print(j);
            }
            System.out.println();
        }
    }

    // 5
    // 45
    // 345
    // 2345
    // 12345
    void p3() {
        int n = 5;
        for (int i = 0; i < 5; i++) {
            for (int j = 5; j > i; j--) {
                System.out.print(i);
            }
            System.out.println();
        }
    }

    // 12345
    // 2345
    // 345
    // 45
    // 5
    void p4() {
        int n = 5;
        for (int i = 1; i <= n; i++) {
            for (int j = i; j <= n; j++) {
                System.out.print(j);
            }
            System.out.println();
        }

    }

    // 5
    // 54
    // 543
    // 5432
    // 54321
    void p5() {
        int n = 5;
        for (int i = n; i > 0; i--) {
            for (int j = n; j >= i; j--) {
                System.out.print(j);
            }
            System.out.println();
        }
    }

    // 12345
    // 1234
    // 123
    // 12
    // 1
    void p6() {
        int n = 5;
        for (int i = n; i >= 1; i--) {
            for (int j = 1; j <= i; j++) {
                System.out.print(j);
            }
            System.out.println();
        }

    }

    // 54321
    // 5432
    // 543
    // 54
    // 5
    void p7() {
        int n = 5;
        for (int i = 0; i < 5; i++) {
            for (int j = 5; j > i; j--) {
                System.out.print(j);
            }
            System.out.println();
        }
    }

    // 54321
    // 4321
    // 321
    // 21
    // 1
    void p8() {
        int n = 5;
        for (int i = n; i >= 1; i--) {
            for (int j = i; j >= 1; j--) {
                System.out.print(j);
            }
            System.out.println();
        }
    }

    // 1
    // 23
    // 456
    // 78910
    // …… n
    void p9() {
        int n = 5;
        int k = 1;
        for (int i = 1; i <= n; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print(k++);
            }
            System.out.println();
        }
    }

    // 1
    // 10
    // 101
    // 1010
    // 10101
    // 101010
    void p10() {
        int n = 5;
        for (int i = 1; i <= n; i++) {
            for (int j = 1; j <= i; j++) {
                if (j % 2 == 0) {
                    System.out.print(0);

                } else {
                    System.out.print(1);
                }
            }
            System.out.println();
        }
    }

    // 1
    // 10
    // 101
    // 1010
    // 10101
    // 101010
    void p11() {
        int n = 5;
        for (int i = 1; i <= n; i++) {
            for (int j = 1; j <= i; j++) {
                // System.out.print(j);
                if (j % 2 == 0) {
                    System.out.print(1);

                } else {
                    System.out.print(0);
                }
            }
            System.out.println();
        }
    }

    // 1
    // 2 1 2
    // 3 2 1 2 3
    // 4 3 2 1 2 3 4
    // 5 4 3 2 1 2 3 4 5
    void p12() {
        int n = 5;
        for (int i = 1; i <= n; i++) {
            for (int j = n; j >= i; j--) {
                System.out.print(' ');
            }
            for (int j = i; j >= 1; j--) {
                System.out.print(j);
            }
            for (int j = 2; j <= i; j++) {
                System.out.print(j);
            }
            System.out.println();
        }

    }

    // *
    // **
    // ***
    // ****
    // *****
    void p13() {
        int n = 5;
        for (int i = 1; i <= n; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print('*');
            }
            System.out.println();
        }

    }

    // *
    // **
    // ***
    // ****
    // *****
    void p14() {
        int n = 5;
        for (int i = 1; i <= n; i++) {
            for (int j = 5; j >= i; j--) {
                System.out.print(' ');
            }
            for (int j = 1; j <= i; j++) {
                System.out.print('*');
            }
            System.out.println();
        }
    }

    // *
    // **
    // ***
    // ****
    // *****
    void p15() {
        int rows = 5;
        for (int i = 1; i <= rows; i++) {

            // white spaces in the front of the numbers
            int numberOfWhiteSpaces = rows - i;

            for (int k = 0; k < numberOfWhiteSpaces; k++) {
                System.out.print(" ");
            }

            // print numbers
           for (int j = 0; j < i; j++) {
            System.out.print("* ");
           }

            // move to next line
            System.out.println("");
        }

    }

    public static void main(String[] args) {
        P_Piramid P = new P_Piramid();
        System.out.println("-----------------1-----------------");
        P.p1();
        System.out.println("-----------------2-----------------");
        P.p2();
        System.out.println("-----------------3-----------------");
        P.p3();
        System.out.println("-----------------4-----------------");
        P.p4();
        System.out.println("-----------------5-----------------");
        P.p5();
        System.out.println("-----------------6-----------------");
        P.p6();
        System.out.println("-----------------7-----------------");
        P.p7();
        System.out.println("-----------------8-----------------");
        P.p8();
        System.out.println("-----------------9-----------------");
        P.p9();
        System.out.println("-----------------10-----------------");
        P.p10();
        System.out.println("-----------------11-----------------");
        P.p11();
        System.out.println("-----------------12-----------------");
        P.p12();
        System.out.println("-----------------13-----------------");
        P.p13();
        System.out.println("-----------------14-----------------");
        P.p14();
        System.out.println("-----------------15-----------------");
        P.p15();
    }
}

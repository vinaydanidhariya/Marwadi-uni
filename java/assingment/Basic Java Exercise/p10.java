// public class J_10_loops {
//     public static void main(String[] args) {
//         int n = 10;
//         for (int i = 0; i <= n; i++) {
//             System.out.println(" " + i);
//         }
//     }
// }

// public class J_10_loops {
//     public static void main(String[] args) {
//         int n = 20;
//         for (int i = 0; i <= n; i+=2) {
//             System.out.println(" " + i);
//         }
//     }
// }

// public class J_10_loops {
//     public static void main(String[] args) {
//         int n = 20;
//         for (int i = 1; i <= n; i+=2) {
//             System.out.println(" " + i);
//         }
//     }
// }

// public class J_10_loops {
//     public static void main(String[] args) {
//         int n = 90;
//         for (int i = 100; i >= n;i--) {
//             System.out.println(" " + i);
//         }
//     }
// }

// public class J_10_loops {
//     public static void main(String[] args) {
//         int n = 180;
//         for (int i = 200; i >= n;i=i-2) {
//             System.out.println(" " + i);
//         }
//     }
// }

// public class J_10_loops {
//     public static void main(String[] args) {
//         int n = 10, fist = 0, second = 1, num;
//         System.out.println(fist);
//         System.out.println(second);
//         for (int i = 0; i <= n; i++) {
//             num = fist + second;
//             fist = second;
//             second = num;
//             System.out.println(" " + num);
//         }
//     }
// }

// public class J_10_loops {
//     public static void main(String[] args) {
//         int n = 20, sum = 0;
//         for (int i = 1; i <= n; i++) {
//             if (i != n) {
//                 System.out.print(i + " + ");
//             }
//             else{
//             System.out.print(i);
//             }
//             sum = sum + i;
//         }
//         System.out.print(" = " + sum);
//     }
// }

// public class J_10_loops {
//     public static void main(String[] args) {
//         int n = 10, sum = 0;
//         for (int i = 1; i <= n; i++) {
//             if (i != n) {
//                 System.out.print(i + " + ");
//             }
//             else{
//             System.out.print(i);
//             }
//             sum = sum + i;
//         }
//         System.out.print(" = " + sum);
//     }
// }
public class p10 {
    public static void main(String[] args) {
        loop1(10);
        loop2(20);
        loop3(20);
        loop4(90, 100);
        loop5(200,180);
        loop6(5);
        loop7(10);
    }

    public static void loop1(int n) {
        for (int i = 1; i <= n; i++) {
            System.out.print(i + " ");
        }
        System.out.println();
    }

    public static void loop2(int n) {
        for (int i = 2; i <= n; i += 2) {
            System.out.print(i + " ");
        }
        System.out.println();
    }

    public static void loop3(int n) {
        for (int i = 1; i <= n; i += 2) {
            System.out.print(i + " ");
        }
        System.out.println();
    }

    public static void loop4(int n, int m) {
        for (int i = m; i >= n; i--) {
            System.out.print(i + " ");
        }
        System.out.println();
    }

    public static void loop5(int m,int n) {
        for (int i = m; i >= n; i = i - 2) {
            System.out.print(i + " ");
        }
        System.out.println();
    }

    public static void loop6(int n) {
        int fist = 0, second = 1, num;
        System.out.print(fist);
        System.out.print(" " + second);
        for (int i = 0; i <= n; i++) {
            num = fist + second;
            fist = second;
            second = num;
            System.out.print(" " + num);
        }
        System.out.println();
    }

    public static void loop7(int n) {
        int sum = 0;
        for (int i = 1; i <= n; i++) {
            if (i != n) {
                System.out.print(i + " + ");
            } else {
                System.out.print(i);
            }
            sum = sum + i;
        }
        System.out.print(" = " + sum);
    }
}
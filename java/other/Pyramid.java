package other;
// class Pyramid {
//     public static void main(String[] args) {
//         for (int i = 1; i <= 10; i++) {
//             for (int j = 1; j < i; j++) {
//                 System.out.print(j);
//             }
//             System.out.println();
//         }
//     }
// }

// 1
// 12
// 123
// 1234
// 12345
// 123456
// 1234567
// 12345678
// 123456789

// class Pyramid {
//     public static void main(String[] args) {
//         for (int i = 10; i >= 1; i--) {
//             for (int j = 1; j < i; j++) {
//                 System.out.print(j);
//             }
//             System.out.println();
//         }
//     }
// }

// 123456789
// 12345678 
// 1234567  
// 123456                                                            ; if ($?) { java
// 12345    
// 1234                                                             ng
// 123      
// 12       
// 1 

// class Pyramid {
//     public static void main(String[] args) {
//         for (int i = 5; i >= 1; i--) {
//             for (int j = i; j <= i; j++) {
//                 for (int k = i; k > 0; k--) {
//                     System.out.print(k);
//                 }
//             }
//             System.out.println();
//         }
//     }
// }

// 54321
// 4321
// 321
// 21
// 1

// class Pyramid {
//     public static void main(String[] args) {
//         for (int i = 1; i <= 5; i++) {
//             for (int j = i; j <= i; j++) {
//                 for (int k = i; k > 0; k--) {
//                     System.out.print(k);
//                 }
//             }
//             System.out.println();
//         }
//     }
// }

// 1
// 21
// 321
// 4321
// 54321

class Pyramid {
    public static void main(String[] args) {
        for (int i = 5; i >= 1; i--) {
            for (int j = i; j > 0; j--) {
                System.out.print(j);
            }
            System.out.println();
        }
    }
}




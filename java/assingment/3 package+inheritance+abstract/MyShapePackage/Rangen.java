import java.util.Random;

class Rangen {
    public static void main(String[] args) {
        
        Random r1 = new Random();
        for(int i = 0; i<10; i++)
        {
            int ranint = r1.nextInt(10000,99999);
            System.out.println(ranint);
            }
        }
}
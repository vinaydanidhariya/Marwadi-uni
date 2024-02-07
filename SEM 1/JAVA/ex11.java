
// 11. Create a class Number that have x and y data member as int. create
// interface Arithmetic that have add and sub method with two integer
// arguments and int as return data type. Now create class UserInterface
// that extends Number class and implements Arithmetic interface
// override methods return addition in add and subtraction in sub
// method. in main method create obj of UserInterface and pass two
// integer arguments while calling methods.

class Number {
    int x;
    int y;

    Number(int x, int y) {
        this.x = x;
        this.y = y;
    }
}

interface Arithmetic {
    int add(int a, int b);

    int sub(int a, int b);
}

class UserInterface extends Number implements Arithmetic {
    UserInterface(int x, int y) {
        super(x, y);
    }

    @Override
    public int add(int a, int b) {
        return a + b;
    }

    @Override
    public int sub(int a, int b) {
        return a - b;
    }
}

public class ex11 {
    public static void main(String[] args) {
        UserInterface obj = new UserInterface(10, 5);
        int sum = obj.add(obj.x, obj.y);
        int difference = obj.sub(obj.x, obj.y);

        System.out.println("Sum: " + sum);
        System.out.println("Difference: " + difference);
    }
}

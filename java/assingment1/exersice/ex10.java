interface A {
    void meth1();

    void meth2();
}

interface B extends A {
    void meth3();
}

class MyClass implements B {
    @Override
    public void meth1() {
        System.out.println("Method 1 - Interface A");
    }

    @Override
    public void meth2() {
        System.out.println("Method 2 - Interface A");
    }

    @Override
    public void meth3() {
        System.out.println("Method 3 - Interface B");
    }
}

public class ex10 {
    public static void main(String[] args) {
        MyClass obj = new MyClass();
        obj.meth1();
        obj.meth2();
        obj.meth3();
    }
}

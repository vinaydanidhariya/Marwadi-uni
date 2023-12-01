// 4. Create a class Animal that have constructor and Give Message To
// Constructor that Animal is Created it also have sleep() method give
// animal is sleeping and have eat() method that display animal is eating.
// Create a class Bird that is sub class of Animal that have constructor give
// message bird is created and also call super class constructor override
// method sleep and print bird is sleeping also override method eat and
// print bird is eating .
// Create a class dog that is sub class of Animal that
// have constructor and give message dog is created override sleep and
// eat method appropriately like bird. Create a main class create object of
// bird and dog and call all methods of bird dog and animal.

class Animal {
    Animal() {
        System.out.println("ANIMAL CREATED");
    }

    void sleep() {
        System.out.println("ANIMAL IS SLEEPING");
    }

    void eat() {
        System.out.println("ANIMAL IS EATING");
    }

}

class Bird extends Animal {
    Bird() {
        System.out.println("BIRD IS CREATED");
    }

    void sleep() {
        super.sleep();
        System.out.println("BIRD IS SLEEPING");
    }

    void eat() {
        super.eat();
        System.out.println("BIRD IS EATING");
    }

}

class Dog extends Animal {
    Dog() {
        System.out.println("DOG IS CREATED");
    }

    void sleep() {
        super.sleep();
        System.out.println("DOG IS SLEEPING");
    }

    void eat() {
        super.eat();
        System.out.println("DOG IS EATING");
    }

}

class ex4 {
    public static void main(String[] args) {
        Bird B1 = new Bird();
        B1.sleep();
        B1.eat();
        System.out.println("---------------------------------------");
        Dog D1 = new Dog();
        D1.sleep();
        D1.eat();
    }

}

// ANIMAL CREATED
// BIRD IS CREATED
// ANIMAL IS SLEEPING
// BIRD IS SLEEPING
// ANIMAL IS EATING
// BIRD IS EATING
// ---------------------------------------
// ANIMAL CREATED
// DOG IS CREATED
// ANIMAL IS SLEEPING
// DOG IS SLEEPING
// ANIMAL IS EATING
// DOG IS EATING
// 5. create abstract class Vehicle that have abstract method engine().
// create car class that extends vehicle that override method of vehicle
// and give message as "car engine”. Create main class call car engine
// method. 

abstract class Vehicle {
    abstract void engine();
}

class Car extends Vehicle {
    void engine() {
        System.out.println("CAR ENGINE ..............................................................");
    }
}

public class ex5 {
    public static void main(String[] args) {
        Car m800 = new Car();
        m800.engine();
    }
}
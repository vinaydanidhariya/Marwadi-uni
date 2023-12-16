// 6. Create Instrument abstract class that have data member name as
// String and abstract method play(). 
// create abstract class
// String Instrument that extends Instrument that have data member
// numberofStrings as int. 
// create ElectricGuitar that extends
// StringInstrument in constructor assign name="Guitar" and
// NumberofStrings=6 manually override play method that print
// numberofString and name. Now create main class create object of
// ElectricGuitar, and take appropriate output by calling methods.

abstract class Instrument {
    String name;
    abstract void play();
}

abstract class StringInstrument extends Instrument {
    int numberOfStrings;

    StringInstrument(String name, int numberOfStrings) {
        this.name = name;
        this.numberOfStrings = numberOfStrings;
    }
}

class ElectricGuitar extends StringInstrument {
    ElectricGuitar() {
        super("Guitar", 6);
    }

    @Override
    void play() {
        System.out.println("Playing " + numberOfStrings + "-string " + name);
    }
}

public class ex6 {
    public static void main(String[] args) {
        ElectricGuitar electricGuitar = new ElectricGuitar();
        electricGuitar.play();
    }
}

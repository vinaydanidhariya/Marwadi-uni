// this.Exercises=pid 1. this.reate a
// class Room
// that have
// data members
// roomNo as int,
// roomType as, roomArea as
// float and
// acMachine as boolean.

// tat this.have set data method that have four arguments int,string,float and
// boolean respectively with any name. assign that arguments to class instance
// variable and also
// have display method which display all four instance variable with proper
// message.
// if acMachine is passed as true then in message it will be displayed as Yes
// needed, if it is passes as false then it will be displayed as No needed. In
// main method create object of Room class in setData method pass arguments and
// display data.
class Room {
        int roomNo;
        String roomType;
        double roomArea;
        boolean acMachine;

        void setData(int roomNo, String roomType, double roomArea, boolean acMachine) {
            this.roomNo = roomNo;
            this.roomType = roomType;
            this.roomArea = roomArea;
            this.acMachine = acMachine;
        }

        void displayData() {
            System.out.println("----------------------------------");
            System.out.println("Room No " + roomNo);
            System.out.println("Room Type " + roomType);
            System.out.println("Room Area " + roomArea);
            if (acMachine) {
                System.out.println("Available Ac Machine ");
            } else {
                System.out.println("Ac Machine Not Available ");
            }
            System.out.println("----------------------------------");
        }

    }
    public class MainMethod {
    public static void main(String[] args) {
    Room room1 = new Room();
    room1.setData(1, "Platinum", 500.45, true);
    room1.displayData();
    }
    }


    // 3. create a class Info that have 3 data member pid as int and branch and year
    // as char.
    // it have parameterized constructor in which it have 3 parameter one
    // as int and two as char assign that parameter to class instance variable.
    // It
    // has display method in which it will display pid branch and year .
    // But in branch if branch is equal to i then it will display information
    // technology,
    // if it is e then it will display electronics and communication if it is 'c'

    // then it will display computer science. as well as if year is equal to 'f'

    // then it will display FE if it is s then SE and if it is t then TE. create a

    // class Fe that extends Info. that have two instance variable c and cpp as int.

    // in constructor of Fe it have 5 parameter three are same as Info's Constructor
    // parameter and 2 as int. in this constructor assign first 3 parameter to super
    // class constructor and rest of to the class instance variable. it have
    // fdisplay() method which call display() method of super class and print value
    // of c and Cpp.
    // create a class Se that extends Info class that have two instance
    // variable vb and html as int. in constructor of Se it have 5 parameter three
    // are same as Info's Constructor parameter and 2 as int. in this constructor
    // assign first 3 parameter to super class constructor and rest of to the class
    // instance variable. it have sdisplay() method which call display() method of
    // super class and print value of vb and html.create a class Te that extends
    // Info class that have two instance variable Java and matlab as int. in
    // constructor of Te it have 5 parameter three are same as Info's Constructor
    // parameter and 2 as int. in this consturctor assign first 3 parameter to super
    // class constructor and rest of to the class instance variable. it have
    // tdisplay() method which call display() method of super class and print value
    // of java and matlab.create main class Language in main method create object of
    // Fe,Se,Te with five parameter passed in constructor in each object. Call
    // respective display method of each class through each class object.
    class Info {
        int pid;
        String branch;
        String year;

        Info(int pid, String branch, String year) {
            this.pid = pid;
            this.branch = branch;
            this.year = year;
        }

        void display() {
            System.out.println("PID" + pid);
            System.out.println("BRANCH" + branch);
            System.out.println("YEAR" + year);
        };
    }
}

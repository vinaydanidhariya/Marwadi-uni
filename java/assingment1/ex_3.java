
class info {
    int pid;
    char branch;
    char year;

    info(int pid, char branch, char year) {
        this.pid = pid;
        this.branch = branch;
        this.year = year;
    }

    void display() {
        System.out.println("ID id:-" + pid);
        if (branch == 'i') {
            System.out.println("information Technology");
        } else if (branch == 'e') {
            System.out.println("Electric and comunication");
        } else {
            System.out.println("Computer Science");

        }
        if (year == 'f') {
            System.out.println("FE");
        } else if (year == 's') {
            System.out.println("SE");
        } else {
            System.out.println("TE");
        }

    }
}

class FE extends info {
    int c;
    int cpp;

    FE(int pid, char branch, char year, int c, int cpp) {
        super(2, 'e', 'f');
        this.c = c;
        this.cpp = cpp;
    }

    void display() {
        // super.display();
        System.out.println("c is " + c);
        System.out.println("cpp is" + cpp);

    }
}

class ex_3 {
    public static void main(String a[]) {
        FE f = new FE(2, 'i', 's', 23, 23);
        f.display();
    }
}
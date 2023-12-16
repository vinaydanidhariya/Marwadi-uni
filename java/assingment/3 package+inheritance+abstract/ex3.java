class Info {
    int pid;
    char branch;
    char year;

    Info(int pid, char branch, char year) {
        this.pid = pid;
        this.branch = branch;
        this.year = year;
    }

    void display() {
        System.out.println("PID" + pid);

        if (branch == 'i') {
            System.out.println("BRANCH INFORMATION TECHNOLOGY");
        } else if (branch == 'e') {
            System.out.println("ELECTRONICS AND COMMUNICATION");
        } else if (branch == 'c') {
            System.out.println("COMPUTER SCIENCE");
        }
        if (year == 'f') {
            System.out.println("++++FE+++");
        } else if (year == 's') {
            System.out.println("+++SE+++");
        } else if (branch == 't') {
            System.out.println("+++TE+++");
        }

        System.out.println("PID" + pid);
        System.out.println("BRANCH" + branch);
        System.out.println("YEAR" + year);
    };
}

class Se extends Info {
    int vb, html;

    Se(int pid, char branch, char year, int vb, int html) {
        super(pid, branch, year);
        this.vb = vb;
        this.html = html;
    }

    void sdisplay() {
        super.display();
        System.out.println("C : " + vb);
        System.out.println("CPP : " + html);
    }
}

class Fe extends Info {
    int c, cpp;

    Fe(int pid, char branch, char year, int c, int cpp) {
        super(pid, branch, year);
        this.c = c;
        this.cpp = cpp;
    }

    void fdisplay() {
        super.display();
        System.out.println("C : " + c);
        System.out.println("CPP : " + cpp);
    }
}

class Te extends Info {
    int java, matlab;

    Te(int pid, char branch, char year, int java, int matlab) {
        super(pid, branch, year);
        this.java = java;
        this.matlab = matlab;
    }

    void tdisplay() {
        super.display();
        System.out.println("C : " + java);
        System.out.println("CPP : " + matlab);
    }
}

public class ex3 {
    public static void main(String[] args) {
        Fe feObj = new Fe(2, 'i', 'f', 60, 70);
        Se SeObj = new Se(2, 'e', 'f', 60, 70);
        Te TeObj = new Te(2, 'c', 'f', 60, 70);
        feObj.fdisplay();
        SeObj.sdisplay();
        TeObj.tdisplay();
    }
}
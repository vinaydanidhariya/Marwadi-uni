# Write a script to perform following employee operations using menu:
# 1. Add Employee Record"
# 2. View Employee Record"
# 3. Delete Employee Record"
# 4. Modify Employee Record"
# 5. Count Total no of Employee Record"
# 6. List Employees in Descending Order of Salary for Gender".
clear
while :
do
    echo "-------------------Menu-----------------"
    echo "1. Add Employee Record"
    echo "2. View Employee Record"
    echo "3. Delete Employee Record"
    echo "4. Modify Employee Record"
    echo "5. Count Total no of Employee Record"
    echo "6. List Employees in Descending Order of Salary for Gender"
    echo "7. Exit"
    echo "Enter your Choice"
    echo "------------------------------------------"
    read ch
    case $ch in
    1)
        echo "Enter Employee No :"
        read eno
        echo "Enter Employee Name :"
        read ename
        echo "Enter Employee Address :"
        read eadd
        echo "Enter Employee Age :"
        read eage
        echo "Enter Employee Gender :"
        read egender
        echo "Enter Employee Designation: "
        read edes
        echo "Enter Employee Basic Salary: "
        read bs
        echo "$eno:$ename:$eadd:$eage:$egender:$edes:$bs" >> emp
        echo "Record Inserted............."
        ;;
    2)
        cat emp
        ;;
    3)
        echo "Enter Employee No:"
        read no
        c=$(grep -w "$no" emp | wc -l)
        if [ $c -eq 0 ]; then
            echo "Employee not found"
        else
            grep -vw "$no" emp > temp2
            mv temp2 emp
        fi
        ;;
    4)
        echo "Enter Employee No: "
        read eno
        c=$(cut -d ':' -f1 emp | grep -wc "$eno")
        if [ $c -eq 0 ]; then
            echo "Employee Does Not Found"
            exit
        else
            if [ -f settemp ]; then
                rm settemp
            fi
            touch settemp
            for i in $(cat emp); do
                no=$(echo "$i" | cut -d ':' -f1)
                if [ $no -eq $eno ]; then
                    echo "Enter Employee Name :"
                    read ename
                    echo "Enter Employee Address :"
                    read eadd
                    echo "Enter Employee Age :"
                    read eage
                    echo "Enter Employee Gender :"
                    read egender
                    echo "Enter Employee Designation: "
                    read edes
                    echo "Enter Employee Basic Salary: "
                    read bs
                    echo "$eno:$ename:$eage:$egender:$edes:$bs" >> settemp
                    echo "Record Updated............."
                else
                    echo $i >> settemp
                fi
            done
            mv settemp emp
        fi
        ;;
    5)
        t=$(cat emp | wc -l)
        echo "Total no. of Records is: $t"
        ;;
    6)
        echo "Enter Gender (male/female): "
        read gen
        gen=$(echo $gen | tr [a-z] [A-Z])
        if [ "$gen" == "MALE" ]; then
            grep -w "male" emp | sort -n -r -t : -k 7
        fi
        ;;
    7)
        exit
        ;;
    *)
        echo "Invalid Option"
        ;;
    esac
done

# -------------------Menu-----------------
# 1. Add Employee Record
# 2. View Employee Record
# 3. Delete Employee Record
# 4. Modify Employee Record
# 5. Count Total no of Employee Record
# 6. List Employees in Descending Order of Salary for Gender
# 7. Exit
# Enter your Choice
# ------------------------------------------
# 1
# Enter Employee No :
# 2
# Enter Employee Name :
# vinay
# Enter Employee Address :
# near 150ft ring road
# Enter Employee Age :
# 21
# Enter Employee Gender :
# male
# Enter Employee Designation:
# coder
# Enter Employee Basic Salary:
# 50000
# Record Inserted.............
# -------------------Menu-----------------
# 1. Add Employee Record
# 2. View Employee Record
# 3. Delete Employee Record
# 4. Modify Employee Record
# 5. Count Total no of Employee Record
# 6. List Employees in Descending Order of Salary for Gender
# 7. Exit
# Enter your Choice
# ------------------------------------------
# 2
# 2:vinay:near 150ft ring road:21:male:coder:50000





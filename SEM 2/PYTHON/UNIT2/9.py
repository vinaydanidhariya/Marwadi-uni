# 9) Write a program to do student operations using menu as follows
# a) Add Student
# b) Search Student
# c) List All Students
# d) Update Student
# e) Delete Student
# f) Exit

import csv

# Function to add a student
def add_student():
    roll_number = input("Enter roll number: ")
    name = input("Enter student name: ")
    mark1 = input("Enter Mark 1: ")
    mark2 = input("Enter Mark 2: ")
    mark3 = input("Enter Mark 3: ")
    mark4 = input("Enter Mark 4: ")
    with open('students.csv', 'a', newline='') as file:
        writer = csv.writer(file)
        writer.writerow([roll_number, name, mark1, mark2, mark3, mark4])
    print("Student added successfully.")

# Function to search for a student
def search_student():
    roll_number = input("Enter roll number to search: ")
    with open('students.csv', 'r') as file:
        reader = csv.reader(file)
        for row in reader:
            if roll_number == row[0]:
                print("Student found:")
                print("Roll Number:", row[0])
                print("Name:", row[1])
                print("Mark 1:", row[2])
                print("Mark 2:", row[3])
                print("Mark 3:", row[4])
                print("Mark 4:", row[5])
                return
        print("Student not found.")

# Function to list all students
def list_all_students():
    with open('students.csv', 'r') as file:
        reader = csv.reader(file)
        print("List of all students:")
        for row in reader:
            print("Roll Number:", row[0])
            print("Name:", row[1])
            print("Mark 1:", row[2])
            print("Mark 2:", row[3])
            print("Mark 3:", row[4])
            print("Mark 4:", row[5])
            print()

# Function to update a student's information
def update_student():
    roll_number = input("Enter roll number to update: ")
    with open('students.csv', 'r') as file:
        reader = csv.reader(file)
        rows = list(reader)
    found = False
    for i, row in enumerate(rows):
        if roll_number == row[0]:
            name = input("Enter updated name: ")
            mark1 = input("Enter updated Mark 1: ")
            mark2 = input("Enter updated Mark 2: ")
            mark3 = input("Enter updated Mark 3: ")
            mark4 = input("Enter updated Mark 4: ")
            rows[i] = [roll_number, name, mark1, mark2, mark3, mark4]
            found = True
            break
    if found:
        with open('students.csv', 'w', newline='') as file:
            writer = csv.writer(file)
            writer.writerows(rows)
        print("Student updated successfully.")
    else:
        print("Student not found.")

# Function to delete a student
def delete_student():
    roll_number = input("Enter roll number to delete: ")
    with open('students.csv', 'r') as file:
        reader = csv.reader(file)
        rows = list(reader)
    found = False
    for i, row in enumerate(rows):
        if roll_number == row[0]:
            del rows[i]
            found = True
            break
    if found:
        with open('students.csv', 'w', newline='') as file:
            writer = csv.writer(file)
            writer.writerows(rows)
        print("Student deleted successfully.")
    else:
        print("Student not found.")

# Main function to display menu and handle user input
def main():
    while True:
        print("\nMenu:")
        print("1) Add Student")
        print("2) Search Student")
        print("3) List All Students")
        print("4) Update Student")
        print("5) Delete Student")
        print("6) Exit")
        choice = input("Enter your choice: ")

        if choice == '1':
            add_student()
        elif choice == '2':
            search_student()
        elif choice == '3':
            list_all_students()
        elif choice == '4':
            update_student()
        elif choice == '5':
            delete_student()
        elif choice == '6':
            print("Exiting program.")
            break
        else:
            print("Invalid choice. Please enter a valid option.")

if __name__ == "__main__":
    main()


import csv

# Function to add a student
def add_student():
    name = input("Enter student name: ")
    roll_number = input("Enter roll number: ")
    department = input("Enter department: ")
    with open('students.csv', 'a', newline='') as file:
        writer = csv.writer(file)
        writer.writerow([name, roll_number, department])
    print("Student added successfully.")

# Function to search for a student
def search_student():
    roll_number = input("Enter roll number to search: ")
    with open('students.csv', 'r') as file:
        reader = csv.reader(file)
        for row in reader:
            if roll_number in row:
                print("Student found:")
                print("Name:", row[0])
                print("Roll Number:", row[1])
                print("Department:", row[2])
                return
        print("Student not found.")

# Function to list all students
def list_all_students():
    with open('students.csv', 'r') as file:
        reader = csv.reader(file)
        print("List of all students:")
        for row in reader:
            print("Name:", row[0])
            print("Roll Number:", row[1])
            print("Department:", row[2])
            print()

# Function to update a student's information
def update_student():
    roll_number = input("Enter roll number to update: ")
    with open('students.csv', 'r') as file:
        reader = csv.reader(file)
        rows = list(reader)
    found = False
    for i, row in enumerate(rows):
        if roll_number in row:
            name = input("Enter updated name: ")
            department = input("Enter updated department: ")
            rows[i] = [name, roll_number, department]
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
        if roll_number in row:
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
        print("a) Add Student")
        print("b) Search Student")
        print("c) List All Students")
        print("d) Update Student")
        print("e) Delete Student")
        print("f) Exit")
        choice = input("Enter your choice: ").lower()

        if choice == 'a':
            add_student()
        elif choice == 'b':
            search_student()
        elif choice == 'c':
            list_all_students()
        elif choice == 'd':
            update_student()
        elif choice == 'e':
            delete_student()
        elif choice == 'f':
            print("Exiting program.")
            break
        else:
            print("Invalid choice. Please enter a valid option.")

if __name__ == "__main__":
    main()

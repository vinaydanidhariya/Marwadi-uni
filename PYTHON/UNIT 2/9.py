students = []

def add_student(roll_number, name, age, grade):
    students.append({"roll_number": roll_number, "name": name, "age": age, "grade": grade})
    print("Student added successfully.")

def search_student(roll_number):
    for student in students:
        if student["roll_number"] == roll_number:
            print("Student found:")
            print("Roll Number:", student["roll_number"])
            print("Name:", student["name"])
            print("Age:", student["age"])
            print("Grade:", student["grade"])
            return
    print("Student not found.")

def list_students():
    if not students:
        print("No students found.")
    else:
        print("List of students:")
        for student in students:
            print("Roll Number:", student["roll_number"])
            print("Name:", student["name"])
            print("Age:", student["age"])
            print("Grade:", student["grade"])

def update_student(roll_number, name, age, grade):
    for student in students:
        if student["roll_number"] == roll_number:
            student["name"] = name
            student["age"] = age
            student["grade"] = grade
            print("Student updated successfully.")
            return
    print("Student not found.")

def delete_student(roll_number):
    for student in students:
        if student["roll_number"] == roll_number:
            students.remove(student)
            print("Student deleted successfully.")
            return
    print("Student not found.")

def main():
    while True:
        print("\nStudent Operations Menu:")
        print("a) Add Student")
        print("b) Search Student")
        print("c) List All Students")
        print("d) Update Student")
        print("e) Delete Student")
        print("f) Exit")

        choice = input("Enter your choice: ").lower()

        if choice == 'a':
            roll_number = input("Enter roll number: ")
            name = input("Enter name: ")
            age = input("Enter age: ")
            grade = input("Enter grade: ")
            add_student(roll_number, name, age, grade)

        elif choice == 'b':
            roll_number = input("Enter roll number to search: ")
            search_student(roll_number)

        elif choice == 'c':
            list_students()

        elif choice == 'd':
            roll_number = input("Enter roll number to update: ")
            name = input("Enter new name: ")
            age = input("Enter new age: ")
            grade = input("Enter new grade: ")
            update_student(roll_number, name, age, grade)

        elif choice == 'e':
            roll_number = input("Enter roll number to delete: ")
            delete_student(roll_number)

        elif choice == 'f':
            print("Exiting program. Goodbye!")
            break

        else:
            print("Invalid choice. Please try again.")

if __name__ == "__main__":
    main()

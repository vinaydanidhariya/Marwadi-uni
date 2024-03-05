#PRG1.Write a program to create a list of names; then define a function to display all the elements in the recevied list.
#Call the fuction to execute its statement and display all name in the list. 

def display_names(name_list):
    for name in name_list:
        print(name)

# Create a list of names
names = ["Viny", "Rahul", "Dhruv", "Jay", "Vraj"]

# Call the function to display all names in the list
display_names(names)

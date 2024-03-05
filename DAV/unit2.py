#PRG1.Write a program to create a list of names; then define a function to display all the elements in the recevied list.
#Call the fuction to execute its statement and display all name in the list. 

def display_names(name_list):
    for name in name_list:
        print(name)
names = ["Viny", "Rahul", "Dhruv", "Jay", "Vraj"]
display_names(names)

#Output:
#Viny
#Rahul
#Dhruv
#Jay
#Vraj

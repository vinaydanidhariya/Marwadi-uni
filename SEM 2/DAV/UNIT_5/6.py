# 6. Python program of Barplot with all parameters of a sample data.

import numpy as np
import matplotlib.pyplot as plt


# creating the dataset
subject = ['C', 'C++', 'Java','Python']
value=[20,25,23,40]

#figsize(x-axis,yaxis)
plt.figure(figsize = (5, 5))

# creating the bar plot
barChart=plt.bar(subject, value)
barChart[0].set_color("Cyan")
barChart[1].set_color("greenyellow")
barChart[2].set_color("purple")
barChart[3].set_color("tomato")

plt.xlabel("subject offered")

plt.ylabel("No. of students enrolled")

plt.title("Students enrolled in different subjects")

plt.savefig("Barplot_student.png")
plt.show()
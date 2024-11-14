
# 8) Write a program to enter course and no. of students in each course.
# Display information using pie graph. The course with maximum students
# shall be displayed separately as a separate slice of pie graph.
import matplotlib.pyplot as plt

# Enter course names and number of students in each course
course_students = {'Python': 25, 'Data Science': 30, 'Web Development': 20, 'Machine Learning': 35, 'DevOps': 15}

# Calculate total number of students
total_students = sum(course_students.values())

# Calculate the size of the slice for the course with the maximum number of students
max_course_students = max(course_students.values())
max_course_size = (max_course_students / total_students) * 100

# Calculate the size of the remaining slices
remaining_sizes = [(value / total_students) * 100 for value in course_students.values() if value != max_course_students]

# Create a pie chart
plt.pie(remaining_sizes, labels=course_students.keys() - {'Python'}, autopct='%1.1f%%')

# Add the slice for the course with the maximum number of students
plt.pie([max_course_size], labels=['Python'], autopct='%1.1f%%')

# Set the title and labels
plt.title('Course Enrollment')
plt.xlabel('')
plt.ylabel('')

# Display the pie chart
plt.show()

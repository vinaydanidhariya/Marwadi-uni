import csv

with open('student.csv') as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    line_count = 0
    for row in csv_reader:
        if line_count == 0:
            print(f'Column names are {", ".join(row)}')
            line_count += 1
        else:
            print(f'RollNo is {row[0]}\nName {row[1]}\nPERCENTAGE :{(int(row[2])+int(row[3])+int(row[4])+int(row[5]))/400 *100}  \nMark1 {row[2]} \nMark2 {row[3]}\nMark3 {row[4]}\nMark4 {row[5]}.')
            line_count += 1 
    print(f'Processed {line_count} lines.')
    
# Column names are RollNo, studentName, MARK1, MARK2, MARK3, MARK4
# RollNo is 1
# Name Dhruv
# Mark1 90
# Mark2 50
# Mark3 80
# Mark4 90.
# Processed 2 lines.



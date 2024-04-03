import csv

with open('student.csv',newline='') as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    line_count = 0
    for row in csv_reader:
        if line_count == 0:
            print(f'Column names are {", ".join(row)}')
            line_count += 1
        else:
            MARK1=int(row[2])
            MARK2=int(row[3])
            MARK3=int(row[4])
            MARK4=int(row[5])
            SUM = MARK1+MARK2+MARK2+MARK2 
            PER = SUM/400*100
            if(PER<=40 and PER<=60):
                grade='B'
            elif (PER<=61 and PER<=80):
                grade='A'
            elif (PER<=81 and PER<=100):
                grade='A+'
            else:
                grade='GRADE'
            print("MARKS ARE ",MARK1,MARK2,MARK3,MARK4)    
            print("SUM : ",SUM)
            print("PERCENTAGE : ",PER)      
            print("GRADE : ",grade)      
            line_count += 1 
    print(f'Processed {line_count} lines.')
    
# Column names are RollNo, studentName, MARK1, MARK2, MARK3, MARK4
# MARKS ARE  90 50 80 90
# SUM :  240
# PERCENTAGE :  60.0
# GRADE :  A
# Processed 2 lines.



# 9 
while True:
    print("WHICH OPERATION YOU WANT TO PERFORM")
    print("1. ADD")
    print("2. Search")
    print("3. List of Students")
    print("4. Update")
    print("5. Delete")
    print("6. Exit")
    case = input('Enter your choice: ')
    if case == '1':    
        with open('student.csv','a') as csv_file:
            csv_file.write(input('Enter RollNo: '),input('Enter Name: '),input('Enter Mark1: '),input('Enter Mark2: '),input('Enter Mark3: '),input('Enter Mark4: '))
    if case == '2': 
        with open('student.csv') as csv_file:
            csv_reader = csv.reader(csv_file, delimiter=',')
            for row in csv_reader:
                if int(input('Enter RollNo: ')) == row[0]:
                    print(f'RollNo is {row[0]}\nName {row[1]}\nMark1 {row[2]}\nMark2 {row[3]}\nMark3 {row[4]}\nMark4 {row[5]}.')
                else:
                    print("NO SUCH RECORD FOUND")
    if case =='3':
        with open('student.csv') as csv_file:
            csv_reader = csv.reader(csv_file, delimiter=',')
            line_count = 0
            for row in csv_reader:
                if line_count == 0:
                    print(f'Column names are {", ".join(row)}')
                    line_count += 1
                else:
                    print(f'RollNo is {row[0]}\nName {row[1]}\nMark1 {row[2]}\nMark2 {row[3]}\nMark3 {row[4]}\nMark4 {row[5]}.')
                    line_count += 1 
            print(f'Processed {line_count} lines.')  
    if case=='4':
        with open('student.csv') as csv_file:
            csv_reader = csv.reader(csv_file, delimiter=',')
            for row in csv_reader:
                if input('Enter RollNo: ') == row[0]:
                    row[1] = input('Enter Name: ')
                    row[2] = input('Enter Mark1: ')
                    row[3] = input('Enter Mark2: ')
                    row[4] = input('Enter Mark3: ')
                    row[5] = input('Enter Mark4: ')
                    csv_file.write(row)
                    print(f'RollNo is {row[0]}\nName {row[1]}\nMark1 {row[2]}\nMark2 {row[3]}\nMark3 {row[4]}\nMark4 {row[5]}.')
                else:
                    print("NO SUCH RECORD FOUND")        
    if case=='5':
        with open('student.csv') as csv_file:
            csv_reader = csv.reader(csv_file, delimiter=',')
            for row in csv_reader:
                if input('Enter RollNo: ') == row[0]:
                    csv_file.remove(row)
                    print("RECORD DELETED")
                else:
                    print("NO SUCH RECORD FOUND")
    if case=='6':
        print("EXITING....")
        break
    
    





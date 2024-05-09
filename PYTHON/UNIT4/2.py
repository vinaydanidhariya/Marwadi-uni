import pandas as pd

# Load the Excel file
df = pd.read_excel('student_records.xlsx')

# List of students from Rajkot City
students_in_rajkot = df[df['City'] == 'Rajkot']

# List of Male students
male_students = df[df['Gender'] == 'M']

# List of Male students from Rajkot City
male_students_in_rajkot = df[(df['Gender'] == 'M') & (df['City'] == 'Rajkot')]

# Displaying the information
print("List of students from Rajkot City:")
print(students_in_rajkot)

print("\nList of Male students:")
print(male_students)

print("\nList of Male students from Rajkot City:")
print(male_students_in_rajkot)

# List of students whose age >= 20
students_age_20_or_above = df[df['Age'] >= 20]

# Displaying the information
print("List of students whose age >= 20:")
print(students_age_20_or_above)


#output
# List of students from Rajkot City:
#     RollNo       Name Gender                 E-Mail   MobileNo.  Age    City
# 3      104     Sophia      F     sophia@example.com  4567890123   22  Rajkot
# 18     119      Jacob      M      jacob@example.com  9990001112   25  Rajkot
# 19     120  Charlotte      F  charlotte@example.com     1112223   34  Rajkot



# List of Male students:
#     RollNo       Name Gender                 E-Mail   MobileNo.  Age               City
# 0      101       John      M       john@example.com  1234567890   25          Ahmedabad
# 2      103    Michael      M    michael@example.com  3456789012   30  Vadodara (Baroda)
# 4      105    William      M    william@example.com  5678901234   35          Bhavnagar
# 6      107      James      M      james@example.com  7890123456   26           Junagadh
# 8      109   Benjamin      M   benjamin@example.com  9012345678   31              Anand
# 10     111       Liam      M       liam@example.com  1112223334   33              Morbi
# 12     113      Mason      M      mason@example.com  3334445556   28            Bharuch
# 14     115      Ethan      M      ethan@example.com  5556667778   32             Godhra
# 16     117  Alexander      M  alexander@example.com  7778889990   29            Navsari
# 18     119      Jacob      M      jacob@example.com  9990001112   25             Rajkot



# List of Male students from Rajkot City:
#     RollNo   Name Gender             E-Mail   MobileNo.  Age    City
# 18     119  Jacob      M  jacob@example.com  9990001112   25  Rajkot



# List of students whose age >= 20:
#     RollNo       Name Gender                 E-Mail   MobileNo.  Age               City
# 0      101       John      M       john@example.com  1234567890   25          Ahmedabad
# 2      103    Michael      M    michael@example.com  3456789012   30  Vadodara (Baroda)
# 3      104     Sophia      F     sophia@example.com  4567890123   22             Rajkot
# 4      105    William      M    william@example.com  5678901234   35          Bhavnagar
# 5      106     Olivia      F     olivia@example.com  6789012345   29           Jamnagar
# 6      107      James      M      james@example.com  7890123456   26           Junagadh
# 7      108     Amelia      F     amelia@example.com  8901234567   27        Gandhinagar
# 8      109   Benjamin      M   benjamin@example.com  9012345678   31              Anand
# 9      110   Isabella      F   isabella@example.com   123456789   24             Nadiad
# 10     111       Liam      M       liam@example.com  1112223334   33              Morbi
# 11     112        Ava      F        ava@example.com  2223334445   26      Surendranagar
# 12     113      Mason      M      mason@example.com  3334445556   28            Bharuch
# 13     114        Mia      F        mia@example.com  4445556667   30          Porbandar
# 14     115      Ethan      M      ethan@example.com  5556667778   32             Godhra
# 15     116     Harper      F     harper@example.com  6667778889   23               Vapi
# 16     117  Alexander      M  alexander@example.com  7778889990   29            Navsari
# 17     118     Evelyn      F     evelyn@example.com  8889990001   27            Mehsana
# 18     119      Jacob      M      jacob@example.com  9990001112   25             Rajkot
# 19     120  Charlotte      F  charlotte@example.com     1112223   34             Rajkot
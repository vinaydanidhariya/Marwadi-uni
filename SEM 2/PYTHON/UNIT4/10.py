# 10) Write a program to read above file and use regular expression to
# display only those records who have mobile number with country code.
# For example, 91-9999933333 (2 digits of country code and 10 digits of
# mobile)

import csv
import re

def has_country_code(mobile):
    # Regular expression to check if mobile number has country code
    pattern = r'^\d{1,3}-\d{10}$'
    return re.match(pattern, mobile)

def display_records_with_country_code(csv_file):
    with open(csv_file, newline='') as file:
        reader = csv.DictReader(file)
        for row in reader:
            mobile = row.get('Mobile')
            if mobile and has_country_code(mobile):
                print("Name:", row.get('Name'))
                print("Email:", row.get('Email'))
                print("Mobile:", mobile)
                print()  # Print an empty line for better readability

csv_file = 'student.csv'
display_records_with_country_code(csv_file)

'''
Name: khushi paun
Email: None
Mobile: 91-8903456783

Name: zamir badi
Email: None
Mobile: 91-7896548969

Name: khushbu visaveliya
Email: None
Mobile: 91-7896541236

Name: kishan vaghasiya
Email: None
Mobile: 91-9568472315

Name: riddhi devda
Email: None
Mobile: 91-4569871236

Name: prem kannar
Email: None
Mobile: 91-9065402318

Name: sankit patel
Email: None
Mobile: 91-9898989656
'''

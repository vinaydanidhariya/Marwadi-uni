# 9) Write a program to read above file and use regular expression in order to
# display records who has valid emails.
import csv
import re

def is_valid_email(email):
    # Regular expression for email validation
    pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'
    return re.match(pattern, email)

def display_records_with_valid_emails(csv_file):
    with open(csv_file, newline='') as file:
        reader = csv.DictReader(file)
        for row in reader:
            email = row.get('E-mail')
            if email and is_valid_email(email):
                print("Name:", row.get('Name'))
                print("E-mail:", email)
                print("Phone:", row.get('Phone'))
                print()  # Print an empty line for better readability

csv_file = 'student.csv'
display_records_with_valid_emails(csv_file)

'''
Name: khushi paun
E-mail: k.p@gmail.com
Phone: None

Name: sumitra patel
E-mail: s.p@gmail.com
Phone: None

Name: zamir badi
E-mail: z.b@gmail.com
Phone: None

Name: janvi rajyguru
E-mail: j.r@gmail.com
Phone: None

Name: bansi vyas
E-mail: b.v@gmail.com
Phone: None

Name: khushbu visaveliya
E-mail: k.v@gmail.com
Phone: None

Name: isha parmar
E-mail: i.p@gmail.com
Phone: None

Name: akil khorajiya
E-mail: a.k@gmail.com
Phone: None

Name: kishan vaghasiya
E-mail: k.v@gmail.com
Phone: None

Name: vinesh matiya
E-mail: v.m@gmail.com
Phone: None

Name: riddhi devda
E-mail: r.d@gmail.com
Phone: None

Name: aakash makvana
E-mail: a.m@gmail.com
Phone: None

Name: khushi bhanderi
E-mail: k.b@gmail.com
Phone: None

Name: dharmi lokhail
E-mail: d.l@gmail.com
Phone: None

Name: bhavin rathod
E-mail: b.r@gmail.com
Phone: None

Name: mihir soni
E-mail: m.s@gmail.com
Phone: None

Name: prem kannar
E-mail: p.k@gmail.com
Phone: None

Name: jay makvana
E-mail: j.m@gmail.com
Phone: None

Name: jevin kotak
E-mail: j.k@gmail.com
Phone: None

Name: sankit patel
E-mail: s.p@gmail.com
Phone: None

'''

import pandas as pd

# Sample data
data = {
    'RollNo': [101, 102, 103, 104, 105, 106, 107, 108, 109, 110,
               111, 112, 113, 114, 115, 116, 117, 118, 119, 120],
    'Name': ['John', 'Emma', 'Michael', 'Sophia', 'William', 
             'Olivia', 'James', 'Amelia', 'Benjamin', 'Isabella',
             'Liam', 'Ava', 'Mason', 'Mia', 'Ethan', 'Harper',
             'Alexander', 'Evelyn', 'Jacob', 'Charlotte'],
    'Gender': ['M', 'F', 'M', 'F', 'M', 'F', 'M', 'F', 'M', 'F',
               'M', 'F', 'M', 'F', 'M', 'F', 'M', 'F', 'M', 'F'],
    'E-Mail': ['john@example.com', 'emma@example.com', 'michael@example.com',
               'sophia@example.com', 'william@example.com', 'olivia@example.com',
               'james@example.com', 'amelia@example.com', 'benjamin@example.com',
               'isabella@example.com', 'liam@example.com', 'ava@example.com',
               'mason@example.com', 'mia@example.com', 'ethan@example.com',
               'harper@example.com', 'alexander@example.com', 'evelyn@example.com',
               'jacob@example.com', 'charlotte@example.com'],
    'MobileNo.': ['1234567890', '2345678901', '3456789012', '4567890123',
                   '5678901234', '6789012345', '7890123456', '8901234567',
                   '9012345678', '0123456789', '1112223334', '2223334445',
                   '3334445556', '4445556667', '5556667778', '6667778889',
                   '7778889990', '8889990001', '9990001112', '0001112223'],
    'Age': [25, 28, 30, 22, 35, 29, 26, 27, 31, 24, 
            33, 26, 28, 30, 32, 23, 29, 27, 25, 34],
    'City': ['Ahmedabad','Surat','Vadodara (Baroda)','Rajkot','Bhavnagar','Jamnagar','Junagadh','Gandhinagar',
                 'Anand','Nadiad','Morbi','Surendranagar','Bharuch','Porbandar','Godhra','Vapi','Navsari','Mehsana',
                 'Rajkot','Rajkot'] }

# Create DataFrame
df = pd.DataFrame(data)

# Save to Excel
df.to_excel('student_records.xlsx', index=False)

print("Excel file created successfully.")

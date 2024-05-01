import pandas as pd

# Load the Excel file
df = pd.read_excel('student_records.xlsx')

# Display columns and their data types
print("Columns and  data types:")
print(df.dtypes)


#output:
# Columns and  data types:
# RollNo        int64
# Name         object
# Gender       object
# E-Mail       object
# MobileNo.     int64
# Age           int64
# City         object
# dtype: object

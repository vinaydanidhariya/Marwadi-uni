# write a prg to zip and unzip files using python
import os

# get the current working directory
current_working_directory = os.getcwd()

# print output to the console
print(current_working_directory)

# PYTHON\UNIT2
import zipfile
import os 
def zip_files(file_name):
    with zipfile.ZipFile(file_name, 'w') as zip:
        zip.write('students.csv')
        print('Files zipped successfully')
        
def unzip_files(file_name):
    with zipfile.ZipFile(file_name, 'r') as zip:
        zip.printdir()
        zip.extractall()
        print('Files unzipped successfully')
        
zip_files('files.zip')
unzip_files('files.zip')
# Files zipped successfully
# File Name                                             Modified             Size
# students.csv                                   2024-04-08 16:01:02           24
# Files unzipped successfully
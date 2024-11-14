# 10) Write a program to zip and unzip particular files.
import zipfile
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
# students.csv                                   2024-04-08 16:01:50           24
# Files unzipped successfully
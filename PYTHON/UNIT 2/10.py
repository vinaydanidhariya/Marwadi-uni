# write a prg to zip and unzip files using python

import zipfile
import os 
def zip_files(file_name):
    with zipfile.ZipFile(file_name, 'w') as zip:
        path = os.path.basename("PYTHON\UNIT 2\file1.txt")
        print(path)
        zip.write(r"text.txt")
        print('Files zipped successfully')
        
def unzip_files(file_name):
    with zipfile.ZipFile(file_name, 'r') as zip:
        zip.extractall()
        print('Files unzipped successfully')
        
zip_files('files.zip')
unzip_files('files.zip')

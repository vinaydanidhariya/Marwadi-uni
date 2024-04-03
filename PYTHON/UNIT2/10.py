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
        for folder, subfolders, files in os.walk(os.getcwd()):
            for file in files:
                zip.write(os.path.join(folder, file), os.path.relpath(os.path.join(folder, file), os.getcwd()), compress_type=zipfile.ZIP_DEFLATED)
        print('Files zipped successfully')
        
        
def unzip_files(file_name):
    with zipfile.ZipFile(file_name, 'r') as zip:
        zip.extractall()
        print('Files unzipped successfully')
        
zip_files('filessas.zip')
unzip_files('files.zip')

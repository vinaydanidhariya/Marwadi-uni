with open('words.txt','r') as file:
    text = file.read()
    with open('copy.txt','w') as file2:
        file2.write(text)
with open('a.txt','r+') as f1:
    word = len(f1.read().split())
    f1.seek(0)
    print(f"Number of words is {word}")
    print(f1.read())
    
# Number of words is 5
# My Name is Vinay Danidhariya   
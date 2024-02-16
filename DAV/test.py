import mu
import fees







print(" 1. BCA \n 2.MCA \n 3.FOCA \n 4 FEES")
userInput = int(input("ENTER YOUR CHOICE : \n"))
if(userInput==1):
    userInput = int(input("INPUT SEMESTER FOR BCA"))
    mu.bca(userInput)
elif(userInput==2):
    userInput = int(input("INPUT SEMESTER FOR MCA"))
    mu.mca(userInput)
elif(userInput==3):
    foca = input("PLEASE INPUT COURSES name like  BCA, MCA")
    mu.foca(foca)
elif(userInput==4):
    print(" 1. BCA FEES \n 2.MCA FEES")
    userInput = int(input("ENTER YOUR CHOICE : \n"))
    if(userInput==1):
        userInput = int(input("INPUT SEMESTER FOR BCA"))
        fees.bcaFees(userInput)
    elif(userInput==2):
        userInput = int(input("INPUT SEMESTER FOR MCA"))
        fees.mcaFees(userInput)







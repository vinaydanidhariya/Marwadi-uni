# create one more module for fees and use fees module into same file pritn fees dynamicalyy by the sememster and course 
# repeate fees mca bca
# fees mca 
# fees bca

def bcaFees(sem):
    if(sem==1):
        print("SEMESTER 1 FEES ==50000")

    elif(sem==2):
        print("SEMESTER 2 FEES ==40000")

    elif(sem==3):
        print("SEMESTER 3 FEES ==30000")

    elif(sem==4):
        print("SEMESTER 4 FEES ==20000")

    elif(sem==5):
        print("SEMESTER 5 FEES ==10000")

    elif(sem==6):
        print("SEMESTER 6 FEES ==5000")
    else:
        print("invealid choice")

def mcaFees(sem):
    if(sem==1):
        print("SEMESTER 1 FEES ==50000")

    elif(sem==2):
        print("SEMESTER 2 FEES ==40000")

    elif(sem==3):
        print("SEMESTER 3 FEES ==30000")

    elif(sem==4):
        print("SEMESTER 4 FEES ==20000")

    else:
        print("invealid choice")


# write a priogram to create udf studentData print name ,age,city,
#   by clalling udf with all 4 type of parameters      
def studentData1(name,age,city='rajkot',*data):
    print(name,age,city,data)
    print('\nname : ',name,
          '\nage : ',age,
          '\ncity : ',city,
          '\ndata : ',data)
    
def studentData(name,age,city='rajkot',**data):
    print(name,age,city,data)
    print('\nname : ',name,
          '\nage : ',age,
          '\ncity : ',city,
          '\ndata : ',data)


# keyword argument
print('\n ---------- keyword argument ----------')
studentData(name='vinay',age=20,city='rajkoy',data='addsa')

# defualt
print('\n ---------- defualt argument----------')
studentData(name='vinay',age=20,data='addsa')

# variable argument
print("variable argument")
studentData1('rahul',20,'rajkot','rajkot')

# variable keyword argument
print('\n ---------- variable keyword argument ----------')
studentData(name='vinay',age=20,data='addsa',newdata='dsadsa')



        # reqiured
        # defualt 
        # varibale
        
        # 2 call 
        # default 6
        # variabel 


        # keywporf
        # default 
        # kayword varibale length
        # variable leget  
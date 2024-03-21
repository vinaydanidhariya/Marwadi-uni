# 6 prg
file = open('num.txt','r')
text =file.read()
part =text.split()
print(part)

sum  =0
newlst = []
for i in part:
    sum = int(i) +sum
    newlst.append(int(i))

print(f'MIN {min(newlst)}')
print(f'MAX {max(newlst)}')
print(f'WORD COUNT {len(part)}')
print(f'SUM {sum}')

def calculate_total(*args):
    total = sum(args)
    print(f'Total: {total}')

calculate_total(1, 2, 3, 4, 5)
calculate_total(10, 20, 30)
calculate_total(2.5, 3.5, 4.5, 5.5)

#output
#Total: 15
#Total: 60
#Total: 16.0

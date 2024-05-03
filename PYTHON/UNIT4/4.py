import matplotlib.pyplot as plt

def enter_profits():
    profits = []
    print("Please enter the profits for each of the 5 years:")
    
    for year in range(1, 6):
        profit = float(input(f"Enter profit for Year {year}: "))
        profits.append(profit)  
    return profits  
def display_line_graph(years, profits):
    plt.plot(years, profits, marker='o')  
    plt.title('Profit Over 5 Years')  
    plt.xlabel('Year')  
    plt.ylabel('Profit')
    plt.grid(True)  
    plt.show()  

def main():
    profits = enter_profits()
    
    years = list(range(1, 6))
    
    display_line_graph(years, profits)

if __name__ == "__main__":
    main()

#ouyput:

# Please enter the profits for each of the 5 years:
# Enter profit for Year 1: 100
# Enter profit for Year 2: 200
# Enter profit for Year 3: 150
# Enter profit for Year 4: 900
# Enter profit for Year 5: 320

#Figure_1.png

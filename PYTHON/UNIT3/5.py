class Temperature:
    def convert_to_fahrenheit(self, celsius):
        return (celsius * 9/5) + 32

    def convert_to_celsius(self, fahrenheit):
        return (fahrenheit - 32) * 5/9

temp_converter = Temperature()

celsius_temp = 30
fahrenheit_temp = temp_converter.convert_to_fahrenheit(celsius_temp)
print("Temperature in Fahrenheit:", fahrenheit_temp)

fahrenheit_temp = 86
celsius_temp = temp_converter.convert_to_celsius(fahrenheit_temp)
print("Temperature in Celsius:", celsius_temp)

#output:
# Temperature in Fahrenheit: 86.0   
# Temperature in Celsius: 30.0    
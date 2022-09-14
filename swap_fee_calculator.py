# import pyfiglet module and declare colors
import pyfiglet

class bcolors:
    WARNING = '\033[93m'
    ENDC = '\033[0m'
    RESULT = '\033[92m'

#Text in default font
out = pyfiglet.figlet_format("SWAPCALC 1.0")
print(out)

print ("Trading 212 Swap Fees Calculator by Marco Casanova. \n")                              


quantity = int(input('Enter QUANTITY of instrument held. (enter an integer) \n')) 
swap_rate = float(input('Enter SWAP RATE of instrument. (enter a decimal) \n'))
nights = int(input('Enter how many nights will you hold\n'))

result = quantity * swap_rate * nights
	
print (f'{bcolors.RESULT}This is the swap fee you will pay: \n')
print (result)




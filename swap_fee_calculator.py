
#aggiungere ASCII art (pyfiglet o no) 

print """  
Trading 212 Swap Fees  
   ____      _            _       _               
  / ___|__ _| | ___ _   _| | __ _| |_ ___  _ __   
 | |   / _` | |/ __| | | | |/ _` | __/ _ \| '__|  
 | |__| (_| | | (__| |_| | | (_| | || (_) | |     
  \____\__,_|_|\___|\__,_|_|\__,_|\__\___/|_|    
  
by Marco Casanova                               


"""

print 'Welcome to the Trading 212 Swap Fee calculator. These are your saved instruments: \n'
with open('steveswaplist.txt') as f:
		lines = f.readlines()
		print (lines)


scelta = raw_input('Choose your action: 1.Calculate or 2.Save a new instrument \n')

if scelta == '1':
	quantity = int(raw_input('Enter QUANTITY of instrument held. (enter an integer) \n')) 
	swap_rate = float(raw_input('Enter SWAP RATE of instrument. (enter a decimal) \n'))
	nights = int(raw_input('Enter how many nights will you hold\n'))

	result = quantity * swap_rate * nights
	
	print 'This is the swap fee you will pay: \n'
	print result

elif scelta == '2':

	if os.path.isfile("steveswaplist.txt"):
	#importa la lista
		list_of_stocks = open('steveswaplist.txt','r').read().split('/n')
	else:
		list_of_stocks = []

#ask for new users
	new_stock = raw_input('Save a position in this format: NAME, SHORT FEE, LONG FEE \n')

	list_of_stocks.append(new_stock)

#salva
	with open('steveswaplist.txt','w') as f:
		f.write('...'.join(list_of_stocks))

#leggi
	with open('steveswaplist.txt') as f:
		lines = f.readlines()
		print(lines)

	print('Saved. Please restart the program')

else:

	print('Wrong choice. Please restart the program')




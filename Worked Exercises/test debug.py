#%%
# Write your code here
def factorial(input):
    if(type(input) == type(3.0)): #type(3.0) takes the float type from the 3.0
        #raise - stops the program
        raise ValueError("need an integer value")
    if(input == 0):
        return 1
    else:
        return input*factorial(input-1)  #Recursive and recombining probles and results
factorial(10)    
#factorial(2.5)
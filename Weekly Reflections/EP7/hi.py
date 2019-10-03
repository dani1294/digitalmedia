print('Hello World')

#%%
def toF(c):
    # Values that do not correspond
    if c < -273.15:
        raise ValueError("Temperature value is below absoulte zero.")

    return ((9/5) * c) + 32
    
def toC(f):
    if f < -459.67:
        raise ValueError("Temp below absolute 0")
    return (f - 32) * (5/9)


#%%
def sign(num):
    answer = "?"
    if num > 0:
        answer = '+'
    #elif - otherwise check to see if...
    elif num < 0:
        answer = '-'
    else:
        answer = ''
    return answer

#%%
name = 'Dani'
name[-1]

#%%
#Exercise 7-2 Conversion
def tocm(inch):
    return inch / 2.54


#%%
def toinch(cm):
    return cm * 2.54

#%%
list(range(1,6))

#%%
list(range(0,5))

#%%
list(range(15,18))

#%%
answer = 1
for num in range(1, 6):
    answer = answer * num
answer

#Factorials . Exercise 7-4
#%%
def factorial(n):
    if n < 0:
        raise ValueError("Factorial is not correct")
    answer = 1
    for num in range(1, n):
        answer = answer * num
    return answer

#%%
def fact(n):
    if n < 0:
        raise ValueError("Factorial is undefined")
    if n == 0: 
        return 1
    else:
        return n * fact(n-1)

#%%
#Exercise 7.7 Double, Double
def doubler(sequence):
    if len(sequence) == 0:
        return []
    else: 
        return [2 * sequence[0]] + doubler(sequence[1:])

#%%
#Terminar en N s o vocal 

#Exercise 7-3
def accent(word):
    if word [-1] in {'a', 'e', 'i', 'o', 'u', 'n'}:
        return 'La palabra es aguda'
    elif word [-1] == 's' and word [-2] in {'a', 'e', 'i', 'o', 'u'}:
        return 'La palabra es aguda'
    else:
        return 'La palabra es grave, esdrujula o sobresdrujula'




#%%

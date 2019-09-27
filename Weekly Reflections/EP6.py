#This is the exercise done in class. I don't understand why it was not done like the code following this one in order to make the exponent. 
#I don't understand the for __ in ___ and how it actually works.
def exponent(x,y):
    z = x
    for n in range(1,y):
        z = z * x
    return z

#%%
#easy exponent code
def expo(x,y):
    result = x ** y
    return result

#%%
#exercise 6-1
def half(val):
    letter = len(val)
   # return letter  - this line does not go here.Realized that you cant have 2 returns, since it will only return the first one and not cotinue doing the rest.
    return letter / 2

    

#%%
#exercise 6-2 - It works but only with the same amount of inputs as values established in exclaim(). I'm not sure how to add several values without including them when defining. I would like the user to imput as many values as they wish (words in this case) and the program to return that many values with the exclamation. According to chapter 6 'casting' should work with this, I will try it next.
def exclaim (val1):
    sign = val1 + ('!')
    return (sign)

#%%
#could not make it work.. need to figure out how for __ in ___ works.
#def exclaim (val1):
 #   addExclaim =[]
  #  for sign in val1:
   #     addExclaim = addExclaim + [sign + '!']
    #return (sign)
    
#%%
#Exercise 6-4
def sum_tree (val3, val4, val5):
    value = val3 + val4 + val5
    return value

#%%
#Exercise 6-5
def tenTimes(val6):
    ten = val6 *10
    return ten



#%%

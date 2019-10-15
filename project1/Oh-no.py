#Based on [Free Project 7-3] Write a Starter Program
#%%
import random

def oh_no(x):
    if x == 'This is the correct way to code an easy and simple project':
        print('Great Job! Code is now running correctly.')
    else:
        amount = random.randint(1,20)
        
        print('Oh no! Code is not correct. \n' * amount)


#%%

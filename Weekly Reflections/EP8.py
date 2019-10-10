#%%
'hello'[0]
'hello'[5]

#%%
'hello world'[0:3]

#%%
greeting = 'hello world'
greeting[0].upper() + greeting [1:]

#%%
'abcdefgh'[0:9:2]

#%%
wyatt = 'They flee from me that sometime did me seek / With naked foot, stalking in my chamber.'

wyatt = wyatt.lower()
wyatt

for c in wyatt:
    print(c)

#%%
for i in range(len(wyatt)):
    print (i, wyatt[i])

#%%
pairs = 0

for i in range(len(wyatt)):
    if wyatt[i:i+2] == 'ee':
        pairs = pairs + 1
        
pairs
#%%
pairs = 0

for i in range(len(wyatt)-1):
    if wyatt[i] == wyatt[i+1]:
        pairs = pairs + 1
pairs

#%%
# Exercise 8-1

def twin(x):
    check = 0
    x = x.lower()
    for i in range(len(x) - 1):
        if x[i] == x[i+1]:
            check = check + 1
    return check
#%%
text = 'All human beings are born free and equal in dignity and rights. They are endowed with reason and conscience and should act towards one another in a spirit of brotherhood.'

len(text)

#%%
len(text.split('and'))

#%%
text.split('and')

#%%
names = ['Bob', 'Carol', 'Ted', 'Alice']

' & '.join(names)

#%%
print(' exists.\n'.join(names) + ' exists.')

#%%
for person in names:
    print(person + ' exists. ')

#%%
print(sorted(names))
names

#%%
names.sort()
names

#%%
#Exercise 8-2
def same_last(x,y):
    if (x[-1]) == (y[-1]): return True
    else: return False
       



#%%
def pal(word):
    text = list(word)
    reverse = text.reverse()
    print(reverse)

    if text == reverse:
        return True
    else: return False
#%%
def pal(word):
    text = list(word)
    print(text)
    reverse = text.reverse()
    print(reverse)


#%%
word = 'hierarchy'
backlist = list(word)
backlist
backlist.reverse()
backlist

#%%
def pal(word):
    backlist = list(word)
    backlist.reverse()
    return backlist == backlist.reverse()

#%%
def pal2(word):
    return word == word[::-1]

#%%
def pal(word):
    return list(word) == list(word).reverse()

#%%
def pali(word):
    right = -1
    pal = True
    string = word.lower()
    for letter in string:
        pal = (pal and (letter == string[right]))
        print (letter + string[right] + ' : ' + str(letter == string[right]))
        right = right -1

#%%
#Exercise 8-3
def count_space(words):
    return len(words.split(' '))-1


#Exercise 8-4
def count_nonspaces(letters):
    return len(letters) - count_space(letters)

#%%
#*********Exercise 8-5 FAIL - Does not join FAIL FAIL FAIL**********
def initials(names):
    single = names.split()

    for c in single:   
        print(''.join(c[0]))

#%%
#Exercise 8-6 * pretty sure theres a shorter way to do this
def devowel(complete):
    A = complete.split('a') 
    A1 = (''.join(A))
    print(A1)
    E = A1.split('e')
    E1 = (''.join(E))
    print(E1)
    I = E1.split('i') 
    I1 = (''.join(I))
    print(I1)
    O = I1.split('o')
    O1 = (''.join(O))
    print(O1)
    U = O1.split('u')
    U1 = (''.join(U))
    print(U1)

#%%
def devowel(complete):
   A = (''.join(complete.split('a'))) 
   E = (''.join(A.split('e')))
   I = (''.join(E.split('i')))
   O = (''.join(I.split('o')))
   print(''.join(O.split('u')))
   
    

#%%
#Exercise 8-7
def tautonym(group):


#%%

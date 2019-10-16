#%%


#re.sub() a way of rep;acing all ocurrences of a pattern with a string 

#***QUANTIFIERS***
#(\W) Nonword characters
#word characters are letters, Numeral and underscore _
#   * Zero or more characters
#   + One or more characters
#   [] To define a character class [aeiou] all of the charactes inside []
#   [a-z] [A-Z] Any letter, lower case and upper case are separate
#   . approximately any character - Any character except a new line
#   ^ not - every character except
# open() - to open a file
# read() - to read the file
# findall() 
#%%
#Palindrome from EP 8
def pal(word):
    return list(word) == list(word).reverse()

def pali(word):
    right = -1
    pal = True
    string = word.lower()
    for letter in string:
        pal = (pal and (letter == string[right]))
        print (letter + string[right] + ' : ' + str(letter == string[right]))
        right = right -1

#%%pa
#Palindrome for complete phrases

import re
def prep(text):
    return re.sub(r'\W+', '', text)

palindrome = 'Star comedy by Democrats.'
pal(prep(palindrome))

otherwise = "This is almost a palindrome ... er, actually it's not."
pal(prep(otherwise))

#%%
#9.4
source = open('1322-0.txt', encoding="utf8")
leaves = source.read()
print(pride[0:1000])

source2 = open('1342-0.txt', encoding="utf8")
pride = source2.read()

#%%
import re #regular expresion module
result = re.findall(r'[aeiouAEIOU]', pride)
print(result)
result[:20]


#%%
#locate all quotations
quotes = re.findall(r'"[^"}*"]', pride)
len(quotes)
quotes[:10]

#%%
#portion of text with quoteations
quotes_percent = (len(''.join(quotes)) / len(pride)) * 100

#%%
#Count words
#pride_words = pride.split()
#another way of finding includiing words that are separated with -
pride_words = re.findall(r'[A-Za-z]+', pride)
len(pride_words)

#%%
#Exercise 9-1 Words Exclaimed
def exclaim (x):
    full_exclaimed = re.findall(r'.*!', x)
    
    len(full_exclaimed)
    exclaimed_percent = (len(''.join(full_exclaimed)) / len(pride)) * 100

    return exclaimed_percent


#%%
def exclaimed_average(a,b):
    result = (exclaim(a) * exclaim(b)) / 2
    return result

#%%
#Exercise 9-2 Double-Barreled Words 
barrel = re.findall(r'.\-.', pride) #this returns character-character
barrel

barrel2 = re.findall(r'.*\-.*', pride) #this returns the whole sentence with the barrel word
barrel2

#Couldn't make only the word work.
#%%

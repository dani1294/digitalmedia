#%%
import re

txt = "The rain in Spain"
x = re.search("^The.*Spain$", txt)
#(xoeu)*
#x*
#

#%%
zipcode1 = "31245"
zipcode2 = "32124-2432"
zipcode3 = "3214"
zipcode4 = "pue23"
zc6 = "12378954370653"
zc7 = "45375-5436565"
zc8 = "78665445365-7787"
#\d = [0-9]
def zipcode(zc):
    print(re.search("^\d{5}(\-\d{4})?$", zc))


def zipcode2(zc):
    print(re.search("^\d{5}$ | ^\d{5}\-\d{4}$", zc))

#we can also make it a variable to store the expression
regExpression = "^\d{5}(\-\d{4})?$"
    
# ^ start of string
# $ end of string
# | alternate (or)

#%%

time0 = "5pm"
time1 = "6am"
time2 = "12:00p"
time3 = "13:00a"
time4 = "00:02pm"

regTime = "^([1-9]|1[0-2])(:[0-5]\d)?[ap]m?$"

print(re.search(regTime, time0))
print(re.search(regTime, time1))
print(re.search(regTime, time2))
print(re.search(regTime, time3))
print(re.search(regTime, time4))
#%%
#military time

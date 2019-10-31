#%%
from PIL import Image


# %%
img = Image.open('logo2.png')
img2 = Image.open('logo.png')
img3 = Image.open('gradient.png')

img
x, y = (200, 500)
# %%
around = img.getpixel((x, y + 1))[0] + img.getpixel((x, y - 1))[0] + img.getpixel((x + 1, y))[0] + img.getpixel((x + 1, y + 1))[0] + img.getpixel((x + 1, y - 1))[0] + img.getpixel((x - 1, y))[0] + img.getpixel((x - 1, y + 1))[0] + img.getpixel((x - 1, y - 1))[0]

around

# %%
#Using \ works to separate the line but stay in the same function
around = img.getpixel((x - 1, y - 1))[0] + \
 img.getpixel((x, y - 1))[0] + \
 img.getpixel((x + 1, y - 1))[0] + \
 img.getpixel((x - 1, y))[0] + \
 img.getpixel((x + 1, y))[0] + \
 img.getpixel((x - 1, y + 1))[0] + \
 img.getpixel((x, y + 1))[0] + \
 img.getpixel((x + 1, y + 1))[0]

around = around / 8

around

# %%
aroundg = img.getpixel((x - 1, y - 1))[1] + \
 img.getpixel((x, y - 1))[1] + \
 img.getpixel((x + 1, y - 1))[1] + \
 img.getpixel((x - 1, y))[1] + \
 img.getpixel((x + 1, y))[1] + \
 img.getpixel((x - 1, y + 1))[1] + \
 img.getpixel((x, y + 1))[1] + \
 img.getpixel((x + 1, y + 1))[1]

aroundg = aroundg / 8

aroundg

# %%
#Define the average color of neighbor pixels
def nearby(img, x,y):
    around = 0
    for c in [0, 1, 2]:
        around = around + img.getpixel((x, y + 1))[c] + img.getpixel((x, y - 1))[c] + img.getpixel((x + 1, y))[c] + img.getpixel((x + 1, y + 1))[c] + img.getpixel((x + 1, y - 1))[c] + img.getpixel((x - 1, y))[c] + img.getpixel((x - 1, y + 1))[c] + img.getpixel((x - 1, y - 1))[c]

    around = around / 24
    around
## This is not working. It won't let me define with (img, (x,y)) ---- found a solution.. works with (img, x, y) no double parenthesis.

# %%
#Find the difference between the average color of nearby pixels and the color of the specific pixel.
def differ(img, x,y):
    current = 0
    around = 0

    for c in [0, 1, 2]:
        current = current + img.getpixel((x, y))[c]

        around = around + img.getpixel((x, y + 1))[c] + img.getpixel((x, y - 1))[c] + img.getpixel((x + 1, y))[c] + img.getpixel((x + 1, y + 1))[c] + img.getpixel((x + 1, y - 1))[c] + img.getpixel((x - 1, y))[c] + img.getpixel((x - 1, y + 1))[c] + img.getpixel((x - 1, y - 1))[c]    
    
    return (around / 24) - (current / 3.0)
# %%
#Change float to integers

#int - changes the float to integer and removes the decimal. It does not round the number
int(500.2)

#round - rounds the number to non-decimal but does not change the type
round(200.7)

#This rounds the number and turns it into integer

int(round(50.8))

# %%
#Define our blurred image
def blur(img):
    blurred = Image.new('RGB', img.size, 'white')
    for x in range(1, img.size[0] - 1):
        for y in range (1, img.size[1] - 1):
            (r, g, b, a) = img.getpixel((x, y))
            change = differ(img, x, y) / 2.0
            change = int(round(change))
            blurred.putpixel((x, y), (r + change, g + change, b + change, a + change))

    return blurred

# %%
#Invert image colors (black to white)

def invert(img):
    inverted = Image.new('RGB', img.size, 'white')
    for x in range (1, img.size[0] - 1):
        for y in range(1, img.size[1] - 1):
            (r, g, b) = img.getpixel((x, y))

            change = r - 255
            change1 = b - 255
            change2 = g - 255
            r = abs(change)
            b = abs(change1)
            g = abs(change2)
            inverted.putpixel((x, y), (r, g, b))

    return inverted


#Absolute value to eliminate negative numbers - abs()
            

# %%
#Exercise 11-1 Old School Filter
def gob(img):
    greenblack = Image.new('RGB', img.size, 'white')
    for x in range (1, img.size[0] - 1):
        for y in range(1, img.size[1] - 1):
            (r, g, b) = img.getpixel((x, y))
            #if (r + g + b) > 0: #Using this is the same - make sure to indent the r and b
                #g = r + g + b #this makes it way too green
            r = 0
            b = 0

            greenblack.putpixel((x, y), (r, g, b))

    return greenblack

# %%
#Other options for PIL - invert option after image being imported
import PIL.ImageOps

inversion = PIL.ImageOps.invert(img)
inversion


# %%
#Work with multi-file image manipulation
#current = gob(current)

import glob
file_list = glob.glob('*.png')

for filename in file_list:
    current = Image.open(filename)
    glob(current)
    current
current

#doesn't work becuase some of my files have alphaand others don't
# %%

#%%
twod = (42, 17)
treed = (7, 6, 14)
alist = [1, 2, 3]

#%%
for i in range(5):
    print((1,2,3))

#%%
#10.3 - Generating Very Simple Images
# We need to import Image from PIL - Python Imaging Library
from PIL import Image

ourimage = Image.new('RGBA', (100,100), 'black')

#%%
#using lables for the values
mode = 'RGBA'
size = (50,100)
color = (150, 20, 200, 255)
ourimage = Image.new(mode, size, color)
ourimage
#%%
# SAVE the image
ourimage.save('purplesquare.png')
#%%
#How to write a help line for a function

def varName(x):
    "Include the explanation here within the quotes. Then write the function"
    return x

#%%
color = (150, 20, 200, 255)


#%%
#Set a different color for a central pixel
allblack = Image.new('RGBA', (200, 200), 'black')
allblack
allblack.save('allblack.png')
allblack.putpixel((100,100), (255,255,255,255))
allblack

#%%

for x in range(allblack.size[0]):
    allblack.putpixel((x, 199) , (255, 255, 255, 255))

allblack

#works with 199 but not 200

#%%
#row of a white pixel
this = Image.new('RGBA', (200, 200), 'blue')
for x in range(this.size[0]):
    this.putpixel((x,200) , (255, 255, 255, 255))
    
this
#%%
purple = Image.new('RGBA', (200,200), 'purple')
for x in range(200):
    for y in range(100,110):
        purple.putpixel((x,y), (255,255,255,255))

purple
purple.save('purplewithline.png')
   
#%%
#Gradient
gray = Image.new('RGBA', (200,200), 'gray')
for x in range(200):
    for y in range(200):
        gray.putpixel((x,y),(x,x,x,255))

gray
gray.save('gradient.png')

#%%
def gradient(grad):
    for x in range(grad.size[0]):
        for y in range(grad.size[1]):
            grad.putpixel((x,y),(x,x,x,255))
    return grad
    #grad.save('grad.png')
    
#%%
#How red an image is
def redness(square):
    allRed = 0;
    others = 0;
    for x in range (200):
        for y in range(200):
            red, green, blue, alpha = square.getpixel((x,y))
            allRed = allRed + red
            others = others + green + blue
    return allRed - (others/2)

# THIS ONE IS NOT WORKING - Maybe a Fix - need to add RGBA to the shape value, not only RGB. But still only outputs 0.0
#made it work magically
#%%
redish = Image.new('RGBA', (200,200), (255, 0, 0, 255)) 


#%%
purple.size

#%%
#Exercise 10-1 Generalizing redness
def red2(shape):
    allred = 0;
    other = 0;
    for x in range(shape.size[0]):
        for y in range(shape.size[1]):
            red, green, blue, alpha = shape.getpixel((x,y))
            allred = allred + red
            other = other + blue + green
    return ((allred - (other/2)) / (shape.size[0] * shape.size[1]))
    #not sure if this is working like it should
#worked suddenyl by magic
#%%
#Loading an Image
loadedImage = Image.open('logo.png')
loadedImage

#%%
loadedImage.getpixel((100,500))

#%%
def modify(picture):
    for x in range(picture.size[0]):
        for y in range(picture.size[1]):
            (r, g, b, a) + picture.getpixel((x, y))
            picture.putpixel((x, y), (r, g, b, a))

#%%
def modify2(img):


#%%
def modif(pngImage):
    for x in range(pngImage.size[0]):
        for y in range(pngImage.size[1]):
            (r, g, b) = pngImage.getpixel((x, y))[:3]
            new_color = (r + 64, g + 64, b + 64)
            new_color = new_color + pngImage.getpixel((x, y))[3:]
            pngImage.putpixel((x, y), new_color)    
    
    return pngImage

#%%

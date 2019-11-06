#%%

#import the PIL library

from PIL import Image, ImageDraw, ImageFilter

img = Image.open('logo.png')
img2 = Image.open('logo2.png')
img3 = Image.open('purplesquare.png')
img4 = Image.open('gradient.png')

def profilePic(img):
    mask = Image.new("L", img.size, 0) #"L" is the image mode for 8-bit b&w
    draw = ImageDraw.Draw(mask)
    #image ellipse will be based on the shortest value between width and height

    #if image is wider (x):

    if img.size[0] > img.size[1]:
        draw.ellipse((((img.size[0]-img.size[1])/2),0, (img.size[1] + ((img.size[0]-img.size[1])/2)), img.size[1]), fill=255)

    #if image is taller (y):    
    elif img.size[1] > img.size[0]:
        draw.ellipse((0, ((img.size[1]-img.size[0])/2),img.size[0], (img.size[0] + ((img.size[1]-img.size[0])/2))), fill=255)

    else:
        draw.ellipse((0, 0, (img.size[0]), (img.size[1])), fill=255)

    result = img.copy()
    result.putalpha(mask)

    result.save('profile.png')

    return result

# %%

# Even though there are multiple objects, we still only need one class. 
# No matter how many cookies we make, only one cookie cutter is needed.
class Car(object):
# The Constructor is defined with arguments.
    def __init__(self, c, xpos, ypos, xspeed):
        self.c = c
        self.xpos = xpos
        self.ypos = ypos
        self.xspeed = xspeed
        
    def display(self):
        stroke(0)
        fill(self.c)
        rectMode(CENTER)
        rect(self.xpos, self.ypos, 20, 10);
    
    def drive(self):
        self.xpos = self.xpos + self.xspeed;
        if self.xpos > width:
            self.xpos = 0
   #3-1 
    def event(self):
        self.c = (color(random(255),0,random(255)))
        self.ypos = self.ypos + (self.xspeed*random(1,20));
        if self.ypos > width:
            self.ypos = 0
                 
myCar1 = Car(color(255, 0, 0), 0, 100, 2)
myCar2 = Car(color(0, 255, 255), 0, 10, 1)

upKey = False

#3-3
class House(object):
# The Constructor is defined with arguments.
    def __init__(self, k, xp1, yp1, xp2, yp2, xp3, yp3):
        self.k = k
        #each of x and y of each 3 corners of the triangles
        self.xp1 = xp1
        self.yp1 = yp1
        self.xp2 = xp2
        self.yp2 = yp2
        self.xp3 = xp3
        self.yp3 = yp3
        
    def display(self):
        stroke(0)
        fill(self.k)
        triangle(self.xp1, self.yp1, self.xp2, self.yp2, self.xp3, self.yp3);

#original houses before making the array
# greenHouse = House(color(0, 255, 0), random(70), random(100, 200), random(75, 130), random(100), random(130, 200), random(100, 200))
# purpleHouse = House(color(255, 0, 255), random(130, 200), random(100, 200), random(75, 130), random(100), random(70), random(100, 200))

#this makes the array and then adds the rest to that number of the list
arr = []
for i in range(5):
    arr.append(House(color(255, random(255), 0), random(200), random(200), random(200), random(200), random(200), random(200)))
            
            
#3.4
class Sun(object):
    def __init__(self, y, mx, my):
        self.y = y
        self.mx = 0
        self.my = 0
        
    #New function that relocates mouse position    
    def update(self, mx, my):
        self.mx = mx
        self.my = my
                
    def display(self):
        stroke(0)
        fill(self.y)
        ellipse(self.mx, self.my, 40, 40)
    
    #3.5    Changing shape to a rectangle
    def ray(self):
        stroke(0)
        fill(self.y)
        rect(self.mx, self.my, 100, 20)

mySun = Sun(color(255,213,0), 0, 0) 
      
sun = True
change = False            
            
            
def setup():
    size(200,400)
       
        
def draw(): 
  background(255)
     
  #3-4
  global sun
  if (sun):
      mySun.display()
      
      
  #3-5
  global change
  if(change):
      mySun.ray()

  #3-3
  #Position is based on the order things are placed, new things(at the bottom) display on top of everything before it.  
  for i in arr:
      i.display()  


  #3-1
  myCar1.drive()
  myCar1.display()
  myCar2.drive()
  myCar2.display()
  
  #3-1 (not sure how to call the function at random times. So I called it as a normal function.
  #myCar1.event()
  
  #3-2
  global upKey
  if(upKey):
      myCar1.event()
    
  textSize(16);
  fill(0)
  click = "Instructions:\nClick = move sun \n'R' = ray of sun \n'D' = sun \n'F' = fast and new colored car \n'S' = slow car"

  text(click,100, 300, 180, 200)  
        
                    
#3-2
def keyReleased():
    global upKey
    #tested with arrows and letters
    if(key == CODED):
        if(keyCode == UP):
            upKey = True
        if(keyCode == DOWN):
            upKey = False    
    #Fast
    if ((key == 'F') or (key == 'f')):
        upKey = True
    #Slow    
    if ((key == 'S') or (key == 's')):
        upKey = False 
        
#3-5

    #Night
    global change
    global sun
    if ((key == 'R') or (key == 'r')):
        change = True
        sun = False

    #Day
    if((key == 'D') or (key == 'd')):
        change = False
        sun = True
        
#3-4            
def mouseReleased():
    mySun.update(mouseX, mouseY)

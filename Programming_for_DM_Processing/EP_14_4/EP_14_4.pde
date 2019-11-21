//Making multiple/random shapes fall 

// random amount of circles fall
int num = int(random(30,100));
int rate = int(random(1,50));
//declaring the different variables of the circles properties - x/y postion and size
int[] cirx = new int[num];
int[] ciry = new int[num];
int[] cirsize = new int[num];
int y = 0;
//random falling speed
int fall = int(random(1,50));
int[] speed = new int[num];

int a = 0;
int da = 1;
int dx = 1;
int b = 0;

void setup(){
  frameRate(1000);
  size (1920, 1080);
  
  
  // create the random circles in random positions
  for (int i = 0; i < num; i++){
    cirx[i] = (int) random(width);
    //Don't want random y position since it will all fall so y == 0 initially
    //ciry[i] = (int) random(height);
    cirsize[i] = (int) random(50,200);
    speed[i] = (int) random(1,50);
    //if (i == (num-1)){
    //  i = 0;
    //}
  }
}


void draw(){
  background(0);
  
  for (int i = 0; i < num; i++){
   fill(255,255,255,255);
   noStroke();
   ellipse(cirx[i], y - cirsize[i], cirsize[i], cirsize[i]);
   
   for (int z = 0; z < num; z++){
     y = y + speed[i];
   }
  }
  
  y = y + rate;
  
  
  rect(b, 100,100,400);
  b = b + 1;
  
 fill(100, 0, 255);
  rect(50, a, 50, 50);
  a = a + dx;
  
  if (a == (height-50)) {
   dx = -1; 
  }
  if (a == 0) {
    dx = 1;
  } 
}

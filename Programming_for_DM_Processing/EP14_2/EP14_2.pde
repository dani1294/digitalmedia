//Animation in Processing


int x = 0;
int dx = 1;
int b = 0;
int shade = 0;
int diff = 1;
int y = 0;
int z = 550;
int c = 0;
int dc = 1;
int dz = 1;
int a = 0;
int da = 1;
int dy = 1;
int j = 550;
int dj = 1;
int h = 0;
int dh = 1;
int l = 0;
int dl = 1;
int dm = 1;
int m = 0;

// a variable that is an array and is equal to the number of spots inside the array, the length.
int[] squares = new int [50];

//elements of an array are reffered to by index values. 0, 1, 2, 3, 4, .........
// squares [3] = 5; this says that the 3rd value of the array is 5

//squares[] = random();

void setup(){
  //establish frame rate / speed. If not specified it's 60
  frameRate(200);
  size(600,600);
  background(190);

}



void draw() {
  //Rectangle move sideways
  //noStroke();
  background(127);
  rect(b, 100,100,400);
  b = b + 1;
  
  //Shape bounce from one side of the screen to the other;
  fill(125, 200, 200);
  rect(x, 50, 50, 50);
  x = x + dx;
  
  if (x == 550) {
   dx = -1; 
  }
  if (x == 0) {
    dx = 1;
  }

  //Change Shade/Color of shape
  
  fill(shade);
  shade = shade + diff;
  if (shade == 255){
    diff = -1;
  }
  if (shade == 0){
    diff = 1;
  }
  
  // Exercise 14-4 Moving multiple rectangles
  fill(shade, 0, 255);
  rect(50, x, 50, 50);
  a = a + dx;
  
  if (a == 550) {
   da = -1; 
  }
  if (a == 0) {
    da = 1;
  }
  
  fill(0, 200, shade);
  rect(c, y, 50, 50);
  c = c + dc;
  y = y + dy;
  
  if (c == 550 || y == 550) {
   dc = -1; 
   dy = -1;
  }
  if (x == 0 || y == 0) {
    dc = 1;
    dy = 1;
  }
  
  fill(0, 200, 200);
  rect(z, 50, 50, 50);
  z = z + dz;
  
  if (z == 551) {
   dz = -1; 
  }
  if (z == 0) {
    dz = 1;
  }
  
  fill(shade, 120, 0);
  rect(j, h, 50, 50);
  j = j - dj;
  h = h + dh;
  
  if (j == 550 || h == 0) {
   dj = 1; 
   dh = 1;
  }
  if (j == 0 || h == 550) {
    dj = -1;
    dh = -1;
  }
  
  
 //Exercise 14-5 Trying to display the array of 50 squares
 for (int m = 0; m < squares.length ; m++){
  // squares[m]; 
   
   
  fill(m, 0, 0);
  rect(m*12, 0, 50, 50);
  //m = m + dm;
  
  //if (x == 550) {
  // dx = -1; 
  //}
  //if (x == 0) {
  //  dx = 1;
  //}
   
  //fill(1*m, 0, 0);
  //rect(m, y, 50, 50);
  //m = m*2;
  //y = y + 1;
  
  // squares[m].move();
 }
 

}

//void move() {
//  m = m + dm; 
//}

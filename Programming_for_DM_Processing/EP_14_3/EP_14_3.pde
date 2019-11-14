int dx = 0;
int dy = 0;
int num = 100;
int[] treex = new int [num];
int[] treey = new int[num];
int[] treesize = new int[num];
int[] treealpha = new int [num];

void setup(){
  size(500,500);
  
  for (int i = 0; i < num; i++){
    treex[i] = (int) random(width * 2);
    treey[i] = (int) random(height *2);
    treesize[i] = (int) random((width + height) / 8);
    treealpha[i] = (int) random(128);
  }
}

void draw(){
  background(255);
  //move the canvas by the current dx, dy amount.
  translate(dx - (int) (width / 2), dy - (int) (height / 2));
  for (int i = 0; i <100; i ++){
    fill (0,0,0, treealpha[i]);
    stroke(0,0,0, treealpha[i]);
    ellipse(treex[i],treey[i],treesize[i],treesize[i]);
  }
    
}

void keyPressed(){ //have arrow keys change dx and dy
  if (key == CODED) {
    if (keyCode == DOWN) {
      dy = dy - (int) (height / 10);
    }
    if (keyCode == UP) {
      dy = dy + (int) (height / 10);
    }
    if (keyCode == RIGHT) {
      dx = dx - (int) (width / 10);
    }
    if (keyCode == LEFT) {
      dx = dx + (int) (width / 10);
    }
  }
}

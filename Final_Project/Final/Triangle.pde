class Triangle{

  int x = int(random(width));
  int y = int(random(-500,-100));
  int size = int(random(20, 70));
  int r = size/2;
  int x1 = x - r; 
  int y1 = y + r;
  int x2 = x;
  int y2 = y - r;
  int x3 = x + r;
  int y3 = y + r;
  PShape triangle;
  int speed = int(random(1,3));
  
  boolean touched = false;

  void display(){
    fill(102,0,153);
    noStroke();
    triangle = createShape(TRIANGLE, x1, y1, x2, y2, x3, y3);
    shape(triangle);
}
  
  void fall(){
   if (y == height + r || x == width + r || x == x - size){
      y = int(random(-200,-100));
      x = int(random(width));
      touched = false;
    }
    //y = y +speed;
    //x1 = x1 + speed; 
    y1 = y1 + speed; 
    //x2 = x2 + speed; 
    y2 = y2 + speed; 
    //x3 = x3 + speed; 
    y3 = y3 + speed; 

    //not working, I want Y to stay the same if right or left is true.
    //if ( se == false || sw == false || ne == false || nw == false){
    //  y = y + speed;
    //} 
    //else {y = y+0;}    
  }
  
  void move(){
    //Triangle twirls hopefully
    if (mouseX > x1 && mouseX < x3 && mouseY > y2 && mouseY < y1 && mouseY < y){
      touched = true;
    }
        
    if (touched == true){
     // rotate(s*radians(90)); s = seconds
      x = x+speed;
      y = y+speed;

      println("touched");
    }

  }
  
}

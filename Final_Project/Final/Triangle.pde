class Triangle{

  int x = int(random(width));
  int y = int(random(-800,-300));
  int size = int(random(100, 200));
  int r = size/2;
  int x1 = x - r; 
  int y1 = y + r;
  int x2 = x;
  int y2 = y - r;
  int x3 = x + r;
  int y3 = y + r;
  PShape triangle;
  int speed = int(random(2,6));
  boolean touched = false;
  boolean untouched = false; 
  
  //Smaller triangles to detect if mouse is inside triangle or not
  float area;
  float area1;
  float area2;
  float area3;
  //float angle = 0; //for rotation speed

  void display(){
    fill(102,0,153);
    noStroke();
    triangle = createShape(TRIANGLE, x1, y1, x2, y2, x3, y3);
    shape(triangle);
}
  
  void fall(){
   if (y2 > height + size){
      restart();
    }
    y1 = y1 + speed; 
    y2 = y2 + speed; 
    y3 = y3 + speed; 
  }
    
  void move(){
// detect when the triangle is touched. Calculate area of triangle and area of 2 vertices and MouseX/Y. If the last are equal to area then  it's touched.
  float px = mouseX;
  float py = mouseY;
  float area = abs( (x2-x1)*(y3-y1) - (x3-x1)*(y2-y1) );
  float area1 = abs( (x1-px)*(y2-py) - (x2-px)*(y1-py) );
  float area2 = abs( (x2-px)*(y3-py) - (x3-px)*(y2-py) );
  float area3 = abs( (x3-px)*(y1-py) - (x1-px)*(y3-py) );
  
    if (!touched && area1 + area2 + area3 == area) {
    touched = true;
    untouched = false;
    }
    else if(!untouched && area1 + area2 + area3 == area){
      //if touched a second time
      touched = false;
      untouched = true;
    }
        
    if (touched == true){
      //triangle rotates when touched. Not working.
      //triangle.rotateX(angle);
      //angle = angle + .1;
      
      y1 = y1 - (speed*5); 
      y2 = y2 - (speed*5); 
      y3 = y3 - (speed*5); 
      
    }
    else if (untouched == true){
      //triangle rotates in different direction when touched again. Not working.
      //triangle.rotateX(angle);
      //angle = angle - .1;
      
      y1 = y1 + (speed*5); 
      y2 = y2 + (speed*5); 
      y3 = y3 + (speed*5);   
    }    
    
      if(touched == true && y1 < y - size || untouched && y2 > height + size){
        restart();
      }    
  }
  
   void restart(){
      y = int(random(-200,-100));
      x = int(random(width - size));
      x1 = x - r; 
      y1 = y + r;
      x2 = x;
      y2 = y - r;
      x3 = x + r;
      y3 = y + r;
      touched = untouched = false;
 }
  
}

class Diamond{

  int x = int(random(width));
  int y = int(random(-800,-300));
  int size = int(random(100, 200));
  int r = size/2;
  int x1 = x - r; 
  int y1 = y;
  int x2 = x;
  int y2 = y - r;
  int x3 = x + r;
  int y3 = y;
  int x4 = x;
  int y4 = y + r;
  PShape diamond;
  int speed = int(random(3,8));
  
  //4 triangles to detect when touching inside
  float area;
  float area1;
  float area2;
  float area3;
  float area4;
  
  boolean touched = false;
  boolean untouched = false;
  boolean notouch = true;

  void display(){
    fill(255, 153, 0);
    noStroke();
    diamond = createShape(QUAD, x1, y1, x2, y2, x3, y3, x4, y4);
    shape(diamond);
}

  void fall(){
    
    if (y2 > height + size){
      restart();
    }
    y1 = y1 + speed;
    y2 = y2 + speed;
    y3 = y3 + speed;
    y4 = y4 + speed;
  }
  
    
  void move(){
// detect when the diamond is touched. Calculate area of the diamond and area of 2 vertices and MouseX/Y. If the last are equal to area then it's touched.
  float px = mouseX;
  float py = mouseY;
  float area = abs( ((x2-x1)*(y3-y1) - (x3-x1)*(y2-y1) + (x3-x1)*(y4-y1) - (x4-x1)*(y3-y1)) );
  float area1 = abs( (x1-px)*(y2-py) - (x2-px)*(y1-py) );
  float area2 = abs( (x2-px)*(y3-py) - (x3-px)*(y2-py) );
  float area3 = abs( (x3-px)*(y4-py) - (x4-px)*(y3-py) );
  float area4 = abs( (x4-px)*(y1-py) - (x1-px)*(y4-py) );

  
    if (!touched && area1 + area2 + area3 + area4 == area) {
    touched = true;
    untouched = false;
    
    }
    else if(touched && area1 + area2 + area3 + area4 == area){
      //if touched a second time
      touched = false;
      untouched = true;
    }
    else if(area1 + area2 + area3 + area4 != area){
      notouch = true;
    }
        
    if (notouch && touched == true){
     x1 = x-(r/4);
     x3 = x+(r/4);
     notouch = false;
    }
    else if (notouch && untouched == true){      
      x1 = x - r;
      x3 = x+r;
      notouch = false;
      
    }    
    
    if(touched == true && y2 > height + size || untouched == true && y2 > height + size){
        restart();
      }
    
  }
  
   void restart(){
       y = int(random(-200,-100));
       x = int(random(width - size));
       x1 = x - r; 
       y1 = y;
       x2 = x;
       y2 = y - r;
       x3 = x + r;
       y3 = y;
       x4 = x;
       y4 = y + r;
       touched = untouched = false;
 }
  
}

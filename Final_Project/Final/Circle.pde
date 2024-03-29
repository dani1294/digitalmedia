class Circle{

  int x = int(random(width));
  int y = int(random(-800,-300));
  int size = int(random(100, 200));
  int r = size/2;
  PShape circle;
  int speed = int(random(2,6));
  boolean se = false;
  boolean sw = false;
  boolean ne = false;
  boolean nw = false;

  void display(){
    fill(185, 224, 9);
    noStroke();
    circle = createShape(ELLIPSE,x, y, size, size);
    shape(circle); // This makes the shape actually display. Based on the PShape variable name.
  }
  
  void fall(){
    y = y +speed; 
    
    if(y > height + (size*2)){
      restart();}
  }
  
  void move(){
    //Circle moves in diagonals
    if(!se && mouseX > x-r && mouseX < x && mouseY > y-r && mouseY < y){
      se = true;
      sw = ne = nw = false;      
    }
    else if(!sw && mouseX > x && mouseX < x+r && mouseY > y-r && mouseY < y){
      sw = true;
      se = ne = nw = false;
    }
    else if(!ne && mouseX > x-r && mouseX < x && mouseY > y && mouseY < y+r){
      ne = true;
      se = sw = nw = false;
    }
    else if(!nw && mouseX > x && mouseX < x+r && mouseY > y && mouseY < y+r){
      nw = true;
      se = sw = ne = false;
    }
        
    if (se == true){
      x = x+speed;
      y = y+speed;
    }
    else if (sw == true){
      x = x-speed;
      y = y+speed;     
    }    
    else if (ne == true){
      x = x+speed;
      y = y-(speed*2);    
    } 
    else if (nw == true){
      x = x-speed;
      y = y-(speed*2);   
    }
    
    if ( se == true || sw == true || ne == true || nw == true){
    
       if (y > height + (size*2) || x >= width + r || x <= x - size || y < -(size*2)){
          restart();
        }
    }
 }
 
 void restart(){
      y = int(random(-200,-100));
      x = int(random(width - size));
      se = sw = ne = nw = false;
 }
  
}

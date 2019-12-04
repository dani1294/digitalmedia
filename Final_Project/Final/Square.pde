class Square{

  int x = int(random(width));
  int y = int(random(-800,-300));
  int size = int (random(100, 200));
  PShape square;
  int speed = int(random(2,6));
  boolean right = false;
  boolean left = false;

  void display(){
    fill(0, 204, 204);
    noStroke();
    square = createShape(RECT,x, y, size, size);
    shape(square); // This makes the shape actually display. Based on the PShape variable name.
  }
  
  void fall(){

    y = y+speed;  
    
    if(y > height + size){
      restart();
    }
  }
  
  void move(){
    if (!right && mouseX > x && mouseX <= x+(size/2) && mouseY > y && mouseY < y+size) {
      right = true;
      left = false;
    } 
    
    else if (!left && mouseX > x+(size/2) && mouseX <= x+size && mouseY > y && mouseY < y+size) {
       left = true;
       right = false;
    }          
  
    if (right == true){
      x = x+speed;
      y = y-speed; // sort of works to keep it horizontal
    }
    
    else if (left == true) {
      x = x-speed;
      y = y-speed;
    }
       
    if (right == true || left == true){
      if (y > height + size || x > width + size || x < 0 - size){
        restart();
    }
    }

  }
  
  void restart(){
      y = int(random(-200,-100));
      x = int(random(width));
      right = left = false;
  }
  
}

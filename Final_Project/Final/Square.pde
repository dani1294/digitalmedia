class Square{

  int x = int(random(width));
  int y = int(random(-500,-100));
  int size = int (random(20, 70));
  PShape square;
  int speed = int(random(1,5));
  boolean right = false;
  boolean left = false;

  void display(){
    fill(0, 204, 204);
    noStroke();
    square = createShape(RECT,x, y, size, size);
    shape(square); // This makes the shape actually display. Based on the PShape variable name.
  }
  
  void fall(){
   if (y == height + size || x == width + size || x == x - size){
      y = int(random(-200,-100));
      x = int(random(width));
      right = false;
      left = false;
    }
    y = y+speed;
    
    ////not working, I want Y to stay the same if right or left is true.
    //if ( right == false || left == false){
    //  y = y + speed;
    //} 
    //else {y = y+0;}    
  }
  
  void move(){
    if (mouseX > x && mouseX <= x+(size/2) && mouseY > y && mouseY < y+size) {
      right = true;
    } 
    
    if (mouseX > x+(size/2) && mouseX <= x+size && mouseY > y && mouseY < y+size) {
     left = true;
    }      
    
    if (right == true){
      x = x+speed;
      y = y-speed; // sort of works to keep it horizontal
      left = false;
    }
    if (left == true){
      x = x-speed;
      y = y-speed;
      right = false;
    }
    
    //Once one of the options is triggered, it's not possible to move the shape the other way.
    // it goes in order, left can be triggered after right but not right after left.
  }
  
}

class Circle{

  int x = int(random(width));
  int y = int(random(-500,-100));
  int size = int(random(20, 70));
  int r = size/2;
  PShape circle;
  int speed = int(random(1,5));
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
   if (y == height + r || x == width + r || x == x - size){
      y = int(random(-200,-100));
      x = int(random(width));
      se = false;
      sw = false;
      ne = false;
      nw = false;
    }
    y = y +speed;
    //not working, I want Y to stay the same if right or left is true.
    //if ( se == false || sw == false || ne == false || nw == false){
    //  y = y + speed;
    //} 
    //else {y = y+0;}    
  }
  
  void move(){
    //Circle moves in diagonals
    if(mouseX > x-r && mouseX < x && mouseY > y-r && mouseY < y){
      se = true;
    }
    if(mouseX > x && mouseX < x+r && mouseY > y-r && mouseY < y){
      sw = true;
    }
    if(mouseX > x-r && mouseX < x && mouseY > y && mouseY < y+r){
      ne = true;
    }
    if(mouseX > x && mouseX < x+r && mouseY > y && mouseY < y+r){
      nw = true;
    }
        
    if (se == true){
      x = x+speed;
      y = y+speed;
      sw = false;
      ne = false;
      nw = false;
    }
    if (sw == true){
      x = x-speed;
      y = y+speed;
      se = false;
      ne = false;
      nw = false;
    }    
    if (ne == true){
      x = x+speed;
      y = y-(speed*2);
      se = false;
      sw = false;
      nw = false;
    } 
    if (nw == true){
      x = x-speed;
      y = y-(speed*2);
      se = false;
      sw = false;
      ne = false;
    }
    
    //Once one of the options is triggered, it's not possible to move the shape the other way.
    // it goes in order, left can be triggered after right but not right after left.
}
  
}

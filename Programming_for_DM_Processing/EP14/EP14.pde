

void setup(){
  size(800, 600);
  background(255);
  
  //for (int i=0; i < width; i++) {
    //  rect(i++, i++, 1, 1);
  //}
  
  for (int i=0; i < width; i++) {
    for (int v=0; v < height; v++){
    rect(i++, i++, 1, 1);
    }
  }
  // Can't make the diagonal line go from corner to corner
  
  //function line works
  line(0,0,800,600);
  
  fill(120,0,120);
  //stroke(0);
  noStroke();
  ellipse(200, 80, 100, 100);
  
  //diagonal line of circles:
  fill(130,130,130);
  ellipse(790, 10, 20, 20);
  
  fill(130,130,130);
  ellipse(10, 590, 20, 20);
  
  for(int circle = 0; circle <= 30; circle = circle + 1) {
    ellipse(790 - ((780/30) * circle), 10 + ((580/30) * circle), 20, 20);
  }
  
  //Exercise 14-2 Shapes of Decreasing Size
  fill(255, 0, 0);
  for (int cir = 0; cir <= 10; cir = cir +1){
   //This makes a raindrop 
   //ellipse((width/4)+(cir*2), (height/4)+(cir*2), 10 + (cir*2), 10 +(cir *2) );
   ellipse(5+((780)/10)*cir, 5+((580)/10)*cir, 10 + (cir*2), 10 +(cir *2) );
  }
  
  
 }

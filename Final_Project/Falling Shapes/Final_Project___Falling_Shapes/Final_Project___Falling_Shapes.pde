// Final project - Falling Shapes with user interaction


//Class to define the shapes
class Polygon {
  PShape s; // the PShape object
  float x, y; // The location where the shape will be drawn
  float speed; // Variable for simple motion

  Polygon(PShape s_) {
    x = random(width);
    y = random(-500, -100); 
    s = s_;
    speed = random(2, 6);
  } 

  void move() { // Simple motion
    y+=speed;
    if (y > height+100) {
      y = -100;
    }
  }
  
  void display() { // Draw the object
    pushMatrix();
    translate(x, y);
    shape(s);
    popMatrix();
  }
} // end of polygon class

ArrayList<Polygon> polygons; //list of objects
PShape [] shapes = new PShape[4]; //number of possible shapes
PShape cir; 
PShape tri;
PShape squ;
PShape dia;

//Start Setup
void setup(){
  size(512, 424); //size that is detectable for Kinect.

  //create shapes
  
  //circle
  fill(185, 224, 9);
  noStroke();
  cir = createShape(ELLIPSE,0,0,50,50);
    
  //triangle
  tri = createShape();
  tri.beginShape();
  tri.fill(102,0,153);
  tri.noStroke();
  tri.vertex(0,-50);
  tri.vertex(30,0);
  tri.vertex(-30,0);
  tri.endShape(CLOSE);
  
  
  //square
  fill(0, 204, 204);
  noStroke();
  squ = createShape(RECT,0,0,50,50);
  
  //diamond
  //dia = quad(0,25,25,0,25,50,50,25);
  dia = createShape();
  dia.beginShape();
  dia.fill(255, 153, 0);
  dia.noStroke();
  dia.vertex(0,35);
  dia.vertex(35, 0);
  dia.vertex(70,35);
  dia.vertex(35, 70);
  dia.endShape(CLOSE);

  //assign each shape to an array of the polygon list  
  shapes[0] = tri;
  shapes[1] = squ;
  shapes[2] = dia;
  shapes[3] = cir;
  
  //Make an ArrayList
  polygons = new ArrayList<Polygon>();
  
  //amount of shapes on the screen at the same time
  int m = 16; // For some reason multiples of the numer of objects work better. If not, one of the shapes is not displayed.
  
  for (int i = 0; i < m; i++) {
    int selection = int(random(shapes.length));        // Pick a random index
    Polygon p = new Polygon(shapes[selection]);        // Use corresponding PShape to create Polygon
    polygons.add(p);
  }  
  
  
} // end setup

void draw(){
  background(102);

  // Display and move them all
  for (Polygon poly : polygons) {
    poly.display();
    poly.move();
  }
  
}

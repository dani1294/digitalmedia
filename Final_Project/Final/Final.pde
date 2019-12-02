//Define the class for the shapes
Square[] manySquares = new Square[int (random(1,5))];
Circle[] manyCircles = new Circle[int (random(1,5))];
Triangle[] manyTriangles = new Triangle[int (random(1,5))];

void setup(){
  size(512, 424); //size that is detectable for Kinect. 
  for(int i = 0; i <manySquares.length; i ++){
    manySquares[i] = new Square();
  }
  for(int i = 0; i <manyCircles.length; i ++){
    manyCircles[i] = new Circle();
  }
  for(int i = 0; i <manyTriangles.length; i ++){
    manyTriangles[i] = new Triangle();
  }
}

void draw(){
  background(0);
  squ();
  cir();
  tri();
 
}

void squ(){
    //display many squares
  for(int i=0; i < manySquares.length; i++){
    //new Square();
    manySquares[i].display();  
    manySquares[i].fall();
    manySquares[i].move();
  }
}

void cir(){
    for(int i=0; i < manyCircles.length; i++){
    manyCircles[i].display();  
    manyCircles[i].fall();
    manyCircles[i].move();
  }
}

void tri(){
    for(int i=0; i < manyTriangles.length; i++){
    manyTriangles[i].display();  
    manyTriangles[i].fall();
   // manyTriangles[i].move();
  } 
}
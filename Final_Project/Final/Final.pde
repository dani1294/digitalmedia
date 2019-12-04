//Define the class for the shapes
Square[] manySquares = new Square[5];
Circle[] manyCircles = new Circle[5];
Triangle[] manyTriangles = new Triangle[5];
Diamond[] manyDiamonds = new Diamond[5];

void setup(){
  //size(512, 424); //size that is detectable for Kinect. Kinect will be mapped to screen size: kinect.width = map(kinect.width,0,512,0,2736); & kinect.height = map(kinect.height, 0,424, 0,1824); 
  size(2736,1824);
  for(int i = 0; i <manySquares.length; i ++){
    manySquares[i] = new Square();
  }
  for(int i = 0; i <manyCircles.length; i ++){
    manyCircles[i] = new Circle();
  }
  for(int i = 0; i <manyTriangles.length; i ++){
    manyTriangles[i] = new Triangle();
  }
  for(int i = 0; i <manyDiamonds.length; i ++){
    manyDiamonds[i] = new Diamond();
  }
}

void draw(){
  background(0);
  squ();
  //cir();
  //tri();
  //dia();
  if (frameCount > 1000) {
    cir();
  }
  if (frameCount > 2000) {
    tri();
  }
  if (frameCount > 3000) {
    dia();
  }
}

void squ(){
    //display many squares
  for(int i=0; i < manySquares.length; i++){
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
    manyTriangles[i].move();
    } 
}

void dia(){
    for(int i=0; i < manyDiamonds.length; i++){
    manyDiamonds[i].display();  
    manyDiamonds[i].move();
    manyDiamonds[i].fall();
    
    }
}

//Future add ons:
//make speed increase after time
// make shape production start at 1 and increase over time

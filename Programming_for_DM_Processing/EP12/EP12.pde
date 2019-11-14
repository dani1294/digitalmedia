float mean(float[] sequence) {
  float sum = 0;
  for (int i = 0; i < sequence.length; i++) {
  sum = sum + sequence[i];
  }
  return sum/sequence.length;
}

// Exercise 12-1
float median(float[] data) {
  //Sort the numbers
  data = sort(data);
  return data[data.length/2];
  //Make sure to call the function in the setup
   }


float[] values = {10, 9, 73, 25, 33, 76, 52, 1, 35, 86};  

void setup() {
  // This is the size of the play screen
  size(200, 100);
  //rect(30, 15, 20, 10);
  
  // This will draw the line of the Mean. If we palce it before the loop it will be behind the chart.
  //rect(0, 100 - mean(values), 200, 0);
  for (int i=0; i < values.length; i++) {
    rect( i*20, 100 - values[i], 20, values[i]);
  }
  
  // If we place it after the loop it is in front
  rect(0, 100 - mean(values), 200, 0);
  


  
  //This only prints on the black console. 
  println(mean(values));
  
  println(median(values));
 
}

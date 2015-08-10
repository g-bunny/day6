int[] circleX = new int[10];
int[] circleY = new int[10];

void setup(){
  size(1000, 500);
//  for (int i = 0; i < circleX.length; i++) {
//    circleX[i] = int(random(0, width));    
//    circleY[i] = int(random(0, height));
//  }
}

void draw(){
//  background(0);
  noStroke();
  for (int i = 0; i < circleX.length; i++) {
    circleX[i] = int(random(0, width));    
    circleY[i] = int(random(0, height));
  }  
  for (int i = 0; i <circleX.length; i ++){
    float red = map(i, 0, 900, 0, 255);
    float green = map(i, 0, circleX.length, 0, 255);
    float blue = map(i, 0, circleX.length, 0, 255);
    fill(red, 0, 0);
    ellipse(circleX[i], circleY[i], 10, 10);
  }
    for (int i = 0; i <circleX.length; i ++){
    float red = map(i, 0, 900, 0, 255);
    float green = map(i, 0, circleX.length, 0, 255);
    float blue = map(i, 0, circleX.length, 0, 255);
    fill(0, green, 0);
    ellipse(circleX[i], circleY[i], 10, 10);
  }
  for (int i = 0; i <circleX.length; i ++){
    float red = map(i, 0, 900, 0, 255);
    float green = map(i, 0, circleX.length, 0, 255);
    float blue = map(i, 0, circleX.length, 0, 255);
    fill(0, 0, blue);
    ellipse(circleX[i], circleY[i], 10, 10);
  }

}

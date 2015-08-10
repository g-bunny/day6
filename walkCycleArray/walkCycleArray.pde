int maxImages = 8;
PImage[] walkRight = new PImage[maxImages];
int imageIndex = 0;
boolean moveRight;
boolean moveLeft;
boolean standing = true;
int displacement = 0;

void setup(){
  size(1200,600);
  frameRate(8);
  for (int i = 0; i < walkRight.length; i++){
    walkRight[i] = loadImage("bunnySprite" + i + ".png");
  }
}

void draw(){
  imageMode(CENTER);
  background(255);
  translate(width/2 + displacement, height/2);
  imageIndex = (imageIndex + 1) % walkRight.length;
  if (standing == true){
    image(walkRight[0],0,0);
  }
  if (moveRight == true){
    image(walkRight[imageIndex], 0, 0);
    displacement += 20;
  }
  if (moveLeft == true){
    scale(-1,1);
    image(walkRight[imageIndex], 0, 0);
    displacement -= 20;
  }
}

void keyPressed(){
  if (key == 'a'){
    moveLeft = true;
  }
  if (key == 'd'){
    moveRight = true;
  }
}

void keyReleased(){
  if (key == 'a'){
    if (moveLeft){
      moveLeft = false;
    }
  }
  if (key == 'd'){
    if (moveRight){
      moveRight = false;
    }
  }
}


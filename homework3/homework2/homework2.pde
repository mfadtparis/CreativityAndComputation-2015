int xPos;
int yPos;
int xPos2;
int yPos2;
int xDir;
int yDir; 
int xDir2;
int yDir2; 

void setup () {
  size(500, 500);

  noStroke();
  frameRate(25);

  xPos = 250;
  yPos = 250;

  xPos2 = 100;
  yPos2 = 100;

  xDir = int(15);
  yDir = int(10);

  xDir2 = int(-50);
  yDir2 = int(-10);
}

void draw() {
  background(220, 150, 120);

  if (xPos>width-30) {
    xDir =-xDir;
    changeColor();
  } 

  if (yPos>height-30) {
    yDir = -yDir;
    changeColor();
  }
  if (xPos<0+30) {
    xDir =-xDir;
    changeColor();
  }
  if (yPos<0+30) {
    yDir = -yDir;
    changeColor();
  }


  if (xPos2>width-25) {
    xDir2 =-xDir2;   
    changeColor();
  }

  if (yPos2>height-25) {
    yDir2 = -yDir2;
    changeColor();
  }

  if (xPos2<0+25) {
    xDir2 =-xDir2;
    changeColor();
  }

  if (yPos2<0+25) {
    yDir2 = -yDir2;
    changeColor();
  }
  
  
  float d = dist(xPos, yPos, xPos2, yPos2);
  
  if(d<17.5+15){
    xDir = -xDir;
    yDir = -yDir;
    xDir2 = -xDir2;
    yDir2 = -yDir2;
  }

  xPos = xPos + xDir;
  yPos = yPos + yDir;

  ellipse(xPos, yPos, 35, 35);


  xPos2 = xPos2 + xDir2;
  yPos2 = yPos2 + yDir2;

  ellipse(xPos2, yPos2, 30, 30);
}

void changeColor()
{
  fill(random(255), random(255), random(255));
}
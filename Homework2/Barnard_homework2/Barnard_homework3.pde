int xPos;
int yPos;
int xDir;
int yDir;



void setup () {
  size(500, 500);

  noStroke();
  frameRate(25);

  xPos = 250;
  yPos = 250;
  
  xDir = 15;
  yDir = 10;
}

void draw() {
  background(220, 150, 120);

  if(xPos>width) {
   xDir = -xDir;
   yDir = -yDir+5;
  } 

  if(xPos<0) {
   println(xPos);
   xDir = -xDir;
  }
 
 if (yPos>height) {
   xDir = -xDir;
   yDir = -yDir+5;
  }
 if (yPos<0) {
  xDir = -xDir;
  yDir = -yDir;
  
  }
//// float d = dist(xPos, yPos, xDir, yDir);
  
  //if(d<17.5+15){
  //  xDir = -xDir;
  //  yDir = -yDir;
    
  //}

  xPos = xPos + xDir;
  yPos = yPos + yDir;

  ellipse(xPos, yPos, 35, 35);

}

  
  
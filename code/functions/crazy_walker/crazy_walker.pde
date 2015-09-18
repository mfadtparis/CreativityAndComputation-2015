int xPos, yPos, xDir, yDir;

void setup(){
  size(500,500);
  background(255);
  fill(0);
  noStroke();
  
  xPos = width/2;
  yPos = height/2;
}

void draw(){
  xDir = int(random(-5,5));
  yDir = int(random(-5,5));
  xPos = xPos + xDir;
  yPos = yPos + yDir;
  //fill(random(255), random(255), random(255));
  ellipse(xPos, yPos, 5,5);
}
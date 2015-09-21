int xPosition = 25;
int yPosition = 25;

void setup(){
  size(500,500);
  background(255);
  frameRate(10);
}

void draw(){
  background(255); // add this to see the circle in movement
  if(xPosition>500){
     xPosition = 25;
     yPosition+=50;
  }
  if(yPosition >500){
    noLoop();
    print("STOP");
  }

  fill(0,0,random(100,255));
  noStroke();
  ellipse(xPosition, yPosition, 50,50);
  xPosition+=50;
}
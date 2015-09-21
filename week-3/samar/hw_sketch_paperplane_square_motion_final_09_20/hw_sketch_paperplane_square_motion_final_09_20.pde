//for rect
int xPosition = 10; // defining a starting point 
int yPosition = 10;
int xDir = 10;
int yDir = 20;
int rectW = 100;
int rectH = 100;

// for plane
int xPosPlane = 0;
int yPosPlane = 500;
int xPlaneDir = 5;
int yPlaneDir = -5;


void setup() {  // set up defines how the display will look 
  size(700, 700);
  background(255);
  frameRate(15); // how many times do i run draw every second call it ten times a second.
}

void draw() {
  background(0); // add this to see the circle in movement

  if ((xPosition +rectW +abs(xDir)) > width || xPosition < 1) { // the double line means or && means AND if you hit any boundary, change the sign +/-
    xDir=-1*xDir; // flipping direction once you hit a boundary if you go to the right +ve then it will be -ve & vise versa
  }               

  if ((yPosition +rectH +abs(yDir)) > height || yPosition < 1) { //changing only when we reach the bottom or the top of the size
    yDir=-1*yDir;
  }

  if (xPosPlane + 275 +xPlaneDir > width) {
    xPosPlane = 0 ;
    yPosPlane = 500;
  } else {
    xPosPlane += xPlaneDir;
  }
  if (yPosPlane + 150 + yPlaneDir > height) {
    yPosPlane =0;
    xPosPlane =500;
  } else {
    yPosPlane += yPlaneDir; // yPosPlane = yPosPlane + yPlaneDir;
  }


  xPosition = xPosition + int (xDir); // 
  yPosition = yPosition + int(yDir);  //int(random(float(yDir),10)); // same


  fill(random(255), random(255), random(255));
  noStroke();
  rect(xPosition, yPosition, rectW, rectH);

  beginShape();
  fill(255);
  vertex(175 + xPosPlane, 70 + yPosPlane); 
  vertex(1 + xPosPlane, 70 + yPosPlane);
  vertex(75 + xPosPlane, 150 + yPosPlane);
  vertex(100 + xPosPlane, 150 + yPosPlane);
  vertex(50 + xPosPlane, 50 + yPosPlane);
  endShape();


  stroke(255);
  line(175+ xPosPlane, 70+ yPosPlane, 100+xPosPlane, 150+yPosPlane);
  line(175+ xPosPlane, 70+ yPosPlane, 300+xPosPlane, 50+yPosPlane);
  line(170+ xPosPlane, 95+ yPosPlane, 250+xPosPlane, 70+yPosPlane);
  line(100+ xPosPlane, 150+ yPosPlane, 300+xPosPlane, 50+yPosPlane);
}
int x=100;
int y=100;
int xPos, yPos, xDir, yDir, angle;

//color [] linea = new color [5];
//linea [0]= color (255,255,0);
//linea [1]= color (78, 245, 156);
//linea [2] = color (245, 78, 167);
//linea [3] = color (78, 83, 245);
//linea [4] = color (78, 178, 245);
//color collinea = linea [(int)random (0,4)];

void setup (){
  size (500,500);
  background (255, 51, 204);
  frameRate (30);
  xPos=450;
  yPos=450;
}

void draw () {
  
  if (x>width-100){
    x=100;
    y+=50;
  }
  
  if (y>height-100){
    y=100;
  }
  //background (random (255),random(255),random(255), random (50)); 
  fill(51,255,204);
  stroke (random (255), random (255), random (255));
  rect(x,y,20,20);
  //line (x-10, y-10, x+10, y+10);
  fill (random (255), random (255), random (255));
    beginShape(TRIANGLE_STRIP);
  vertex(x, y);
  vertex(40, 20);
  vertex(50, 75);
  vertex(60, 20);
  vertex(x /5, y/5);
  vertex(80/x, 20/y);
  vertex(90, 75);
  endShape();
  xDir = int (random (-10,10));
  yDir = int (random (-10, 10));
  xPos = xPos + xDir;
  yPos = yPos + yDir;
  stroke (0);
  fill (102, 51, 255);
  triangle (xPos-x, yPos-y, 500,500, xPos+x, yPos+y);
  //collinea;
  line (500, 0, x +10, y+10);
  x+=50;
}
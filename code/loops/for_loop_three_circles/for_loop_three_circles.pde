int diameter = 100;
int xPosition = 70;
int yPosition = 70;

size(500, 300);
background(255);
for(int a=0; a<3; a++){
  fill(255,0,0);
  ellipse(xPosition, yPosition, 100, 100);
  xPosition = xPosition + diameter + 20;
}
void setup() { 
  size(500, 500);
  background(255);
}

void draw() { 
  for(int a=0; a<10; a++){
    drawCircle(a, 50);
  }
}

void drawCircle(int xPos, int _diameter) {  
  int diameter = _diameter;
  ellipse(diameter * xPos + diameter/2, 30, diameter, diameter);
}
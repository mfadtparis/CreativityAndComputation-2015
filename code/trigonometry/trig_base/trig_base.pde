void setup(){
  size(300, 300);
  background(255);
  ellipse(150,150, 150,150);
}

void draw(){
  background(255);
  int radius = 75;
  int offx = width/2;
  int offy = height/2;
  for(int i = 0; i<360; i++){
    float angle = radians(i);
    float x = offx + cos(angle) * radius;
    float y = offy +  sin(angle) * radius;
    ellipse(x,y,1,1);
  }
}
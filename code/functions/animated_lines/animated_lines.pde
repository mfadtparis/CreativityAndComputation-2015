void setup(){
  size(500,500);
  background(255);
  frameRate(24);
}

void draw(){
  stroke(random(255), random(255), random(255));
  line(random(width),random(height),random(width),random(height)); 
}
void setup(){
  size(500,500);
  background(255);
  noCursor();
}

void draw(){
  if (mousePressed && (mouseButton == RIGHT)) {
    background(255);
  }
}

void mouseDragged(){
  stroke(random(255), random(255),random(255));
  strokeWeight(10);
  line(pmouseX, pmouseY, mouseX, mouseY);
}
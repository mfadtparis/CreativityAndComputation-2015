void setup(){
  size(500,500);
  background(255);
}

void draw(){
  if(mousePressed){
    ellipse(mouseX, mouseY, 20,20);
  }
}

void mousePressed(){
  background(0);
}

void mouseReleased(){
  background(255);
}
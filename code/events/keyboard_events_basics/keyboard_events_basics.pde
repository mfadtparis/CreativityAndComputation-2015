void setup(){
  background(255); 
  size(500, 500);
}
void draw(){
  if (keyPressed ){
    stroke(random(255), random(255), random(255));
    line(width/2,height/2, random(width),random(height));
  }
}
void keyPressed(){
  background(0);
} 
void keyReleased(){
  background(255);
}
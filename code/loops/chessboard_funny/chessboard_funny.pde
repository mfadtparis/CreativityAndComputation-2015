void setup(){
  size(640,640);
  background(255);
  fill(0);
}

void draw(){
  background(255);
  for(int x=0; x<width; x+=width/4){
    for(int y=0; y<height; y+=height/4){
      rect(x, y, width/8, height/8);
    }
  }
  for(int x=width/8; x<width; x+=width/4){
    for(int y=height/8; y<height; y+=height/4){
      rect(x, y, width/8, height/8);
    }
  }
}
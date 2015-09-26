void setup(){
  size(500, 500);
  background(255);
}

void draw(){
  // empty but it has to be there
}

void keyReleased(){
  if(key=='r'){
     background(255,0,0);
  }  
  if(key=='v'){
     background(0,255,0);
  }  
  if(key=='b'){
     background(0,0,255);
  }  
}
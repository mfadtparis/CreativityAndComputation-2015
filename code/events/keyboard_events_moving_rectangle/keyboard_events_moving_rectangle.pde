int x = 250;
int y = 250;

void setup(){
  size(500, 500);
  background(255);
  rect(x, y, 20, 50);
}

void draw(){
  // empty but it has to be there
}

void keyReleased(){
  background(255);
  if(keyCode==UP){
    y-=10;
    rect(x,y,20,50); 
  }
  if(keyCode==DOWN){
    y+=10;
    rect(x,y,20,50);
  }
  if(keyCode==RIGHT){
    x+=10;
    rect(x,y,50,20);
  }
  if(keyCode==LEFT){
    x-=10;
    rect(x,y,50,20);
  }
}
int x;
int y= 500;
int xT;
int yT = 500;

void setup(){
  size(500,500);
  background(255);
  
  for(x=0; x<width; x+=50){
    line(0, y, x, height);
    y-=50;
  }
    
  for(xT=0; xT<width; xT+=50){
    line(xT, 0, width, yT);
    yT-=50;
  }
}
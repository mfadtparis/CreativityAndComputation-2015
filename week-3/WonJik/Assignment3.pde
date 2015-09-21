int x = 10;
int y = 100;
int xDir;
int xPos;
int yPos;

int yDir;


void setup(){
  size(600,600);
  background(255);
  frameRate(10);
}

void draw(){

  if(x>width){
    fill(0);
  }
  
  if (x>width){
    x=0;
  }
  if (xPos>width){
    xPos=width;
  }
  if (yPos>height){
    yPos=height;
  }
  
  
//background(255);

xDir = x+=30;
//yDir = x-=20;

fill(random(0,100), random(0,100), random(0,100), 10);
noStroke();
rect(0, 25, x, y);

fill(random(100,200), random(100,200), random(100,200), 40);
noStroke();
rect(0, y+25, x, y);

fill(random(100,200), random(100,200), random(100,200), 80);
noStroke();
rect(0, height-225, x, y);

fill(random(100,200), random(100,200), random(100,200), 50);
noStroke();
rect(0, height-125, x, y);


fill(random(255), random(255), random(255));
xDir = 
xPos = xPos+int(random(100));
yPos = yPos+int(random(100));


ellipse(width/2, height/2, 25,25);





}
////////////////////////////////////////////////
//////MOVE A RECTANGLE WITH ARROW KEYS/////////
///////////////////////////////////////////////

int x=250; 
int y=250; //start at center of sketch

void setup () {
  size (500,500);
  background (0);
  rect (x, y, 20, 50);
}

void draw () {
}


void keyReleased () {
 // background (255); //repaint background
  if (keyCode == UP){
    y-=10;
    fill (random (255), random (255), random (255), random (100));
    rect (x, y, 20, 50);
  }
   if (keyCode == DOWN){
    y+=10;
    fill (random (255), random (255), random (255), random (100));
    rect (x, y, 20, 50);
    if (y>height){
      y= -10; //when the rect reaches bottom, it comes up from the top 
    }
  }
   if (keyCode == LEFT){
    x-=10;
    rect (x, y, 50, 20); //invert value will change orientation of rectangle
  }
   if (keyCode == RIGHT){
    x+=10;
    rect (x, y, 50, 20);
  }
  
  if (key == 's'){
    save ("Snake_color" + millis () + ".jpg"); //save the image in sketch folder with milliseconds to avoid the file to overwrite if several saves
  }
}
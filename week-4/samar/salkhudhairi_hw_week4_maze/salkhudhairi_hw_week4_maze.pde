int x = 20;
int y = 20;

void setup(){
  size(500, 500);
  background(random(255),random(255),random(255));
  fill (random(255),random(255),random(255));
}

void draw(){
  // empty but it has to be there
  strokeWeight(5);
  stroke(0);
  line (50,10,490,10); // first horizontal
  line(10, 10, 10,490); // first vertical
  line(490, 10, 490, 430);
  line(50,430,490,430);
  line(170, 10, 170, 150);
  line(10, 230, 90, 230);
  line(90, 50, 90, 130);
  line(100,170,250,170);
  line (95,170, 70, 170);
  line(250, 50, 250, 250);
  line (200,50, 200, 170);
  line(250, 300, 330,300);
  line(330, 250, 330, 330);
  line(90, 380, 410, 380);
  line(170, 250, 170, 330);
  line(490, 90, 330, 90);
  line(330, 90, 330, 170);
  line(330, 170, 410, 170);
  line(410,170,410,330);
  line (390, 170, 390, 170);
  line (250, 90, 250, 300);
  line (300,100,300,200);
  line (300,200,375,200);
  line (375, 320, 375, 380);
  //line (300,300,300,380);
  line (300,300,200,300);
  line (50,400,50,490);
  line (90, 200, 90, 340);
  line (300, 50, 350, 50);
  line (400, 50, 490,50);
  line (140,250, 200,250);
  line (140,230, 200, 230);
  line (170, 200, 170, 230);
  line (140,250, 140, 450);
  line (200,250,200,200);
  line (70, 100, 70, 170);
  line (70, 100, 10, 100);
  
}

void keyPressed(){
  background(random(255),random(255),random(255));
  if(keyCode==UP){
    y-=10;
    ellipse(x,y,10,10); 
  }
  if(keyCode==DOWN){
    y+=10;
    ellipse(x,y,10,10);
  }
  if(keyCode==RIGHT){
    x+=10;
    ellipse(x,y,10,10);
  }
  if(keyCode==LEFT){
    x-=10;
    ellipse(x,y,10,10);
  }
  if (key == 's') { 
    save ("maze" + millis() + ".jpg");
    ellipse(x,y,10,10);
   }
}

//void keyReleased() {
//  if (key == 's') { 
//  save ("maze" + millis() + ".jpg");}
// }
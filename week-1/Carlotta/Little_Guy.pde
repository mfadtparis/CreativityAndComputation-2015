float mx;
float my;
float easing = 0.2;
int angle=0;
int angleChange=5;
final int ANGLE_LIMIT=35;
int xPos = 250;
int xPosChange = 1;
int xPosLIMIT = 250 + 7;
int xPosLIMIT2 = 250 - 7;

void setup () {
size (500,500);
smooth();
frameRate(20);
}

void draw(){
background (0);

//BODY
strokeWeight (1);
stroke (0);
fill (255, 255, 0);
rect(width/4, height/4, 250, 250);
strokeWeight (6);
line (width/4 + 40, height/4, width/4 + 40, height/4 + 250);
strokeWeight (2);
line (width/4 + 14, height/4, width/4 + 14, height/4 + 250);
strokeWeight (14);
line (width/4 + 100, height/4, width/4 + 100, height/4 + 250);
strokeWeight (3);
line (width/4+ 17, height/4, width/4 + 17, height/4 + 250);
strokeWeight (5);
line (width/4+ 50, height/4, width/4 + 50, height/4 + 250);
strokeWeight (1);
line (width/4 + 6, height/4, width/4 + 6, height/4 + 250);
strokeWeight (2);
line (width/4 + 180, height/4, width/4 + 180, height/4 + 250);
strokeWeight (8);
line (width/4+ 210, height/4, width/4 + 210, height/4 + 250);
strokeWeight (1);
line (width/4 + 240, height/4, width/4 + 240, height/4 + 250);
strokeWeight (1);
line (width/4 + 110, height/4, width/4 + 110, height/4 + 250);
strokeWeight (4);
line (width/4 +95, height/4, width/4 + 95, height/4 + 250);
strokeWeight (4);
line (width/4, height/4 + 20, width/4 + 250, height/4 + 20);
strokeWeight (17);
line (width/4, height/4 + 80, width/4 + 250, height/4 + 80);
strokeWeight (3);
line (width/4, height/4 + 240, width/4 + 250, height/4 + 240);
strokeWeight (1);
line (width/4, height/4 + 220, width/4 + 250, height/4 + 220);
strokeWeight (2);
line (width/4, height/4 + 226, width/4 + 250, height/4 + 226);


//ARMS
stroke(255);
strokeWeight (2);
line (60,220, 125, 220);
line (375, 220, 440, 220);

//LEGS
stroke(255);
strokeWeight (2);
line (210, 375, 210, 420);
line (290, 375, 290, 420);

//HEAD
strokeWeight (1);
stroke(0);
fill (0);
ellipse (xPos,220, 120,120);

xPos += xPosChange;
if (xPos > xPosLIMIT || xPos < xPosLIMIT2 ){
 xPosChange = -xPosChange;
}


//LIPS
noStroke();
fill(255,0,0);
ellipse (xPos - 10, 260, 5,5);
ellipse (xPos - 6, 260, 5,5);
ellipse (xPos - 8, 263, 10, 5);

//HAIR
fill(0);
ellipse (xPos, 157, 8,8);
ellipse (xPos - 8, 158, 8,8);
ellipse (xPos - 15, 160, 8,8);
ellipse (xPos + 8, 158, 8,8);
ellipse (xPos + 16, 160, 8,8);
ellipse (xPos +24, 162, 8,8);
ellipse (xPos +32, 165, 8,8);
ellipse (xPos + 40, 170, 8,8);

//TO MOVE EYES, ESCRIBIR mx1-2-3 EN FUNCION DE mx
//LEFT EYE
  if (abs(mouseX - mx) > 0.1) {
    mx = mx + (mouseX - mx) * easing;
  }
  if (abs(mouseY - my) > 0.1) {
    my = my + (mouseY- my) * easing;
  }

// constrain to define x and y limits of movement
float mx1 = constrain (mx, 206, 215);
float my1 = constrain (my, 226, 234);
float mx2 = constrain (mx, 208, 213);
float my2 = constrain (my, 228, 233);

noStroke();
//blue
fill(30,144,255);
ellipse (210, 230, 16,16); 
//pink
fill (255,20,147);
ellipse (210, 230,14,14); 
//yellow
fill(255,215,0);
//ellipse (209 ,232 ,10,10);
ellipse (mx2, my2, 10, 10); 
//black
fill (0);
ellipse(mx1 ,my1, 8,8); 
//stroke (246,137,231);
//ellipse (230,240,8,8);
//stroke (15,100,228);
//ellipse (230,240, 6,6);
//stroke (209,247,19);
//ellipse (230,240,4,4);


//RIGHT EYE
float mx3 = constrain (mx, 288, 293);
float my3 = constrain (my, 240, 245);
float mx4 = constrain (mx, 287, 292);
float my4 = constrain (my, 240, 245);

noStroke();
//blue
fill(30,144,255); 
ellipse (290,243, 14,14); 
//pink
fill (255,20,147);
ellipse (290,243, 11,11);
//yellow
fill(255,215,0);
//ellipse (292,242,8,8);
ellipse (mx4, my4, 8, 8);
//black
fill(0);
//ellipse (292,243,6,6);
ellipse (mx3, my3, 6, 6);


//HANDBAG

//rotation of handbag
angle += angleChange;
//if the bag has moved past its limit, reverse direction and set within limits
if (angle > ANGLE_LIMIT || angle < - ANGLE_LIMIT){
  angleChange = -angleChange;
  angle += angleChange;
}

pushMatrix();
translate(60,220); //pivot point
rotate (radians(angle));
noStroke();
fill (255,255,0);
//triangle (60, 220, 38, 310, 90, 310);
triangle (0,0,-22, 90,30,90); 
fill (255, 0, 0);
//triangle (60, 220, 53, 250, 69, 250);
triangle (0,0,-7, 30, 9, 30);
stroke (0);
strokeWeight (3);
//line (61, 246, 61, 252);
line (1, 26, 1, 32);
popMatrix();

}
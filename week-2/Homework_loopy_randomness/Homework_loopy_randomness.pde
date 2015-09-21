size(500,500);
background(255,255,255);
int diameter = 50;
int xPos = 25;
int yPos = 25;

//for(int a=0; a<8; a++){
//stroke(random (255), random (255), random (255));
//fill(random(255),random(255), random (255));
//rect(xPos, yPos, diameter, diameter);
//stroke(random (255), random (255), random (255));
//fill(random(255),random(255), random (255));
//ellipse(xPos+25,yPos+25, diameter, diameter);
//xPos = xPos + diameter + 5;
//yPos = yPos + diameter +5;
//}

//for(int a=0; a<8; a++){
//stroke(random (255), random (255), random (255));
//fill(random(255),random(255), random (255));
//rect(xPos - 440, yPos+ diameter + 5, diameter, diameter);
//stroke(random (255), random (255), random (255));
//fill(random(255),random(255), random (255));
//ellipse(xPos - 415,yPos+25 + diameter + 5, diameter, diameter);
//xPos = xPos + diameter + 5;
//}






//rectangulars 0
for (int y = 15; y <= height-50; y += 50) {
 for (int x = 15; x <= width-50; x += 50) {
   stroke(random (255), random (255), random (255));
fill(random(255),random(255), random (100, 255));
 rect(x, y, 50, 50);
 }
}

//rectangulars 1
for (int y = 20; y <= height-50; y += 50) {
 for (int x = 20; x <= width-50; x += 50) {
   stroke(random (255), random (255), random (255));
fill(random(150, 250),random(150,250), random (100, 150));
 rect(x, y, 40, 40);
 }
}

//rectangulars 2
for (int y = 25; y <= height-50; y += 50) {
 for (int x = 25; x <= width-50; x += 50) {
   stroke(random (255), random (255), random (255));
fill(random(255),random(120,255), random (120,255));
 rect(x, y, 30, 30);
 }
}
//circle 1
for (int y = 40; y <= height-50; y += 50) {
 for (int x = 40; x <= width-50; x += 50) {
   stroke(random (255), random (255), random (255));
fill(random(255),random(255), random (255));
 ellipse(x, y, random(25,29), random(25, 29));
 }
}
//circle 2
for (int y = 40; y <= height-50; y += 50) {
 for (int x = 40; x <= width-50; x += 50) {
   stroke(random (255), random (255), random (255));
fill(random(255),random(255), random (255));
 ellipse(x, y, random(20,24), random(20, 24));
 }
}
//circle 3 -> DO I HAVE TO copy/paste for each circle? "loop random sizes- not possibe?
for (int y = 40; y <= height-50; y += 50) {
 for (int x = 40; x <= width-50; x += 50) {
   stroke(random (255), random (255), random (255));
fill(random(255),random(255), random (255));
 ellipse(x, y, random(15,19), random(15, 19));
 }
}
//points
for (int y = 40; y <= height-50; y += 50) {
 for (int x = 40; x <= width-50; x += 50) {
   stroke(random (255), random (255), random (255));
strokeWeight(random(8,13));
 point(x, y);
 }
}
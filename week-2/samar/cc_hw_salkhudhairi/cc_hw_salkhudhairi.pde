size(400,400);
background(255);
for (int x=0; x<3; x++){ // left to right
 for(int y=0; y<3; y++){ //top to bottom
   noStroke();
   fill(random(255),random(255),random(255));
   rect(10+x*140, 10+y*140, random (90, 100), random (90, 100));
 }
}

//for (int x=0; x<width; x+=width/3){ // left to right
//  for(int y=0; y<height; y+=height/3){ //top to bottom
//    noStroke();
//    fill(random(255),random(255),random(255));
//    rect(20+x, 20+y, random (90, 100), random (90, 100));
//  }
//}
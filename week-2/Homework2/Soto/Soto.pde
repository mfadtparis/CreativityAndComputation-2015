size (1000, 500);
background (255);


//for (int a=0; a<width; a+=5){
//  stroke(0);
//  strokeWeight(1);
//  line (a, 0, a, height);
//}

for (int i=0; i < 100; i++){
  float x = random (100, 900);
  float y = random (100, 400);
  stroke (0);
  strokeWeight(1);
  line (x, y, x+200, y+200); 

}
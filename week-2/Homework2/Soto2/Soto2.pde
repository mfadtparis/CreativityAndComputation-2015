size (1000, 500);
background (255);


for (int a=0; a<width; a+=5){
 stroke(0);
 strokeWeight(1);
 line (a, 0, a, height);
}
  //float x = random (100, 900);
  //float y = random (100, 400);
  
  float y=random (100, 300);
  int x;
  float range = 200;
  PVector e = PVector.random2D();

  
while (random(400)<390){
  stroke (0);
  strokeWeight(1);
  line (e.x, e.y, range, range);
    e.mult(range);
  rotate (random(2*PI));
 

}

//for (int i=0; i < 400; i++){
//  float x = random (100, 900);
//  float y = random (100, 400);
//  stroke (0);
//  strokeWeight(1);
//  line (x, y, x+200, y+200); 
//  rotate (random(2*PI));
//  if 

//}
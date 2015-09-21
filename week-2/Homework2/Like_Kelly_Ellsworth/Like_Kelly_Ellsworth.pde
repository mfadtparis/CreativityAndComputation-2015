/////LIKE KELLY ELLSWORTH//////

  size (500,500);
  background (255);
  

int x = 0;
int y = 0;


//drawing the grid: incrementation of 50 in "for"loop + incrementation of 50 after 
//drawing the rectangle = incrementation of 100 (25 squares of 100 px)

for (x = 0; x < 500; x+=25){
  fill (0);
  fill (255);
for (y = 0; y < 500; y+=25){
  noStroke();
  fill (random (255), random (255), random (255));
  rect (x, y, 50, 50);
  y+=25;
  x=x;

}
x+=25;
y=y;
}







//drawing the lines

//for (int i=0; i<=4; i++){ //i = number of lines drawn in each square of the grid
//  stroke(0);
//  strokeWeight (random(3, 10));
//  line (x, y + random (100), x + 50, y + random (100));
 
//}

//for (x = 0; x <= 500; x+=50){
//  for (y=0; y <= 500; y+=50){
//  stroke(0);
//  strokeWeight (random(3, 10));
//  line (x, random (100), x+50, y);
//  x+=50;
//  y+=50;
//  }
  
 
//}
size(800, 400);
background (255);
noStroke();

for(int a=0; a<20; a++){
  for(int b=0; b<10; b++){
    for (float i= 40; i>0; i=i-4) {
      fill(random(255), random(255), random(255));
      ellipse(a*40+20, b*40+20, i, i);
    }
  }
}
  


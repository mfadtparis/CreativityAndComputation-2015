size(500,300);
background(255);
for(int x=0; x <width/20; x++){
  for(int y=0; y <height/20; y++){
    noStroke();
    fill(random(255),0,0);
     ellipse(10 + x * 20, 10 + y * 20, random(5,10),random(5,10)); 
  }
}
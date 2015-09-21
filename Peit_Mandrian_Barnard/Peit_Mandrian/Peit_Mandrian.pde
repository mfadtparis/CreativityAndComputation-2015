size(500,300);
background(239,240,17);

color[] colarray = new color[2];
colarray[0]= color (0);
colarray[1]= color (255);

for(int x=0; x <width/5; x++){
  for(int y=0; y <height/3; y++){
    noStroke();
    color col = colarray[(int) random (0,2)];
    fill(col);
    rect(20 + x * 40, 10 + y * 55, random(118,75),random(88,220 )); 
  }
}

for(int x=0; x <width/5; x++){
  for(int y=0; y <height/3; y++){
    noStroke();
    fill(random(255),10,120);
    rect(20 + x * 40, 10 + y * 55, random(4,8),random(8,20 )); 
  }
}


rect(250,150,500,300);
fill(252,5,5);

rect(150,75,250, 150); 
fill(5,68,252);

ellipse(150,75,250, 150);
fill(250,242,5); 

rect(45,100,50,30); 
fill(255,255,255); 

rect(20,47,17,83); 
fill(5,5,5); 

rect(100, 173 , 220, 30); 
fill(15,65,73);
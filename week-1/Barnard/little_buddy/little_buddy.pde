size(1000, 1000); 

//body 
fill(127,120,219);
ellipse(500, 500, 100, 200); 

//head
fill(238,213,135);
ellipse(500, 400, 100, 100);

//eyes
fill(255,255,255);
ellipse(450, 400, 20, 20);
ellipse(550, 400, 20, 20);

//Pupils 
strokeWeight(10);
point(450,400);

strokeWeight(10);
point(550,400);

//left arm
strokeWeight(3);
line(390,500,455,450);  

//riht arm
strokeWeight(3);
line(600,390,540,440); 

//right foot
fill(40,144,46);
strokeWeight(.5);
ellipse(535,600,40,20);

//left foot
fill(40,144,46); 
strokeWeight(.5);
ellipse(465,600,40,20);
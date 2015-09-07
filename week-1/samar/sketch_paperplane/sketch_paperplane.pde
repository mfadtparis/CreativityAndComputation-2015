size(500,500);
background(255,255,255);
smooth();
beginShape();
fill(0);
vertex(275,170);
vertex(100,170);
vertex(175,250);
vertex(200,250);
vertex(150,150);

endShape();

beginShape();
fill(100,200,50);
vertex(400,150);
vertex(200,250);
vertex(350,175);

endShape();

line(275,170,200,250);
line(275,170,400,150);
line(270,195,350,170);
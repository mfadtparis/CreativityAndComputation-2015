size(500,500);
background(255);
int diam = 50;

//rect loop
for (int a=50; a<width-50; a +=50)
for (int b=50; b<height-50; b +=50){
noStroke();
fill(random(150,200), random(150,200), 0);
rect(a, b, diam, diam);
}

//line loop
for (int a=50; a<width-399; a+=5){
stroke(255,255,255);
line (a, 50, a, height-399);
}


//I wanted to figure out how to make a loop with the line loop I created so each
//set of loops would loop within different rectanges in different angles but could not.


//********** TRIAL 1 **********
//{
//for (int a=50; a<width-50; a +=50)
//for (int b=50; b<height-50; b +=50)
//for (int c=50; c<width-401; c +=2)
//for (int d=100; d<width-200; d+=50){

//  noStroke();
//  fill(random(150,200), random(150,200), 0);
//  rect(a, b, diam, diam);

//  stroke(255,255,255);
//  line(c, 50, c, height-401);
  
//  stroke(255,255,255);
//  line(50,d, 50, width-300);
//}
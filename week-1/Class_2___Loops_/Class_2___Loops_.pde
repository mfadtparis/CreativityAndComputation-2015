////////CLASS 2////////

random (100); //random number between 0 and 100
random(100, 200); // random number between 100 and 200

print(random(10, 20)); // see stuff on the console

//example of use//
size (500,500);
background (255);
stroke (random (255), random (255), random (255));
line (0, random (500), 500, random (500)); //(xstart, y start, x end, y end)
stroke (random (255), random (255), random (255));
line (0, random (500), 500, random (500));
stroke (random (255), random (255), random (255));
line (0, random (500), 500, random (500));
stroke (random (255), random (255), random (255));
line (0, random (500), 500, random (500));
stroke (random (255), random (255), random (255));
line (0, random (500), 500, random (500));
stroke (random (255), random (255), random (255));
line (0, random (500), 500, random (500));
////


/////LOOPS///////

///Conditional Loop (while)

while (random(500)<495) { //condition
  point(random(500), random(500)); //instruction1
  stroke (random (255), random (255), random (255)); //instruction 2
  strokeWeight (random (20));
}


/// Iterative Loop (for)

// setting up the variables. 
// Set type of variable: int --> integer numbers ;  float --> decimal numbers, boolean --> true or false, char --> text ...
int diameter = 100;
int xPos = 70;
int yPos = 70; 

//we want to draw 3 circles
//first step is to initialize a variable to increment it
//second step is to set a condition to test (until the variable is smaller than 3 the loop goes on): here, we will have 0,  1 and 2 and three circles will be drawn
//third step is incrementation a++ is like a = a+1, a+=4 is like a=a+4
for (int a=0; a<3; a++){
  fill (255,0,0);
  strokeWeight (random (1, 5));
  stroke (random (255), random (255), random (255));
  ellipse (xPos, yPos, diameter, diameter);
  xPos = xPos + diameter + 20; //circles are drawn next to each other: translation of the x position
}

//another example: black vertical lines equally spaced
for (int a=0; a<width; a+=10){
  stroke(0);
  line (a, 0, a, height);
}

//this loop will run the inside loop until y reaches height/20 and then increment x, run again the inside loop until y reaches the limit, then increment x again...etc
for (int x=0; x<width/20; x++){
  for(int y=0; y<height/20; y++){
    noStroke();
    fill(random(255),0,0);
    ellipse(10 + x * 20, 10 + y * 20, random (5, 10), random (5, 10));
  }
}
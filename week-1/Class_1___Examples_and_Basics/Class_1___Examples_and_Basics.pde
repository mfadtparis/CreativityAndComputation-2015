//Command + R  : runs the sketch

size (500, 500);
background (0); //0 is black, 255 is white, in between is grey values
stroke (0,255,0); //color stroke, every stroke which follow this command will take this color. 

//RGB : R(255,0,0)   G (0,255,0)   B (0,0,255)

line (10,10, 520,90); //line (x_start, y_start, x_end, y_end) Start point: (10,10) --> End Point (520, 90) 

//each line after stroke is defined will be the same color. 
//draw another line of a different color

stroke (180,0,200);
strokeWeight (3); //defines the thickness of the line, here 3px 
line (30, 5,  450, 400);

stroke (0,83,104);
strokeWeight (5);
line (0, 50,  500,50); //streight line: y at same height 



//creating a rectangle or square

noStroke(); //cancels the function stroke used before (if not cancelled, rect will have a stroke)
fill(8,148,8);
rect(60,150 ,100,100); //draw a rectangle : rect(xTopLeftCorner, yTopLeftCorner, width, height) 


//Circle or Ellipse

stroke (60,205,60);
strokeWeight(1);
ellipse (350,350, 200,150); // ellipse (xCenter, yCenter, horizontal diameter, vertical diameter)

//Circulos Circuncentricos

noStroke();
fill(0,255,255);
ellipse(50,50,80,80);
fill(255,255,0);
ellipse (50,50,60,60);
fill(255,0,255);
ellipse (50,50,40,40);

//Point: different from circle, it grows with strokeWeight and is filled. 
stroke (255,0,0);
strokeWeight(20);
point (250,250);

//Triangles
noStroke();
triangle (200,190,200,135,90,90); //triangle (x1, y1, x2, y2, x3, y3)
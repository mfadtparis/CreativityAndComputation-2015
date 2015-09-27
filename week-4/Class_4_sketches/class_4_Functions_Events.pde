////CLASS 4////////

///FUNCTIONS////
//in Processing, make the function after setup () and draw()
//void: doesn't return a value, it just makes something

void setup (){
  size (500,500);
  background (255);
}

void draw (){
  drawCircle ();//call the function that draws the circle: no arguments
  drawCircle2 (150, 75); //calls the second fonction with arguments: xPos=150 and diameter = 75 
  for (int i=0; i<10; i++){
  drawCircle2 (i, 10 + i*3);
  drawRect (i, 10+i*10);
  }
  strokeWeight (3);
  if (mouseY < width/3){
  strokeWeight (1);
}
  line (mouseX, mouseY, pmouseX, pmouseY); //pmouse is the previous position of the mouse
  //mouse is the actual opsition of the mouse
  //draws a line between the actual position and the previous position of the mouse (cf class_4_line)
  println (mouseX + ":" + pmouseX);
  ellipse (mouseX, mouseY, 50, 50);
  point (mouseX, mouseY); //draws a point at the position of your mouse
  //EVENTS NEED TO HAPPEN IN DRAW
}

//make a function that draws a circle: it doesn't return a value, it just draws
//no arguments

void drawCircle () {
  ellipse (30,30,50,50);
}

//same function with arguments:

void drawCircle2 (int xPos, int diameter){
  ellipse (xPos*diameter + diameter/2, 30, diameter, diameter); //x is an argument, to call, type a value
}

void drawRect (int xPos, int rectWidth){
  rect (xPos*rectWidth, 100, rectWidth, rectWidth);
}
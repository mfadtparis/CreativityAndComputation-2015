
void setup () {
  size (500,500);
  background (255);
  noCursor (); //to not see the cursor
}

void draw () {
  line (mouseX, mouseY, pmouseX, pmouseY);
  println (mouseX + ":" + pmouseX); //+ is not addition, concatanation 
  if(mousePressed){
    strokeWeight (1);
    stroke (1);
    ellipse (mouseX, mouseY, 10, 10);
    
//IF RIGHT CLICK: BACKGROUND GOES WHITE and ellipse shows
    
    if (mousePressed && (mouseButton == RIGHT)){ 
    background(255);
    rect (mouseX, mouseY, 10, 10);

    }
  }
  
  if (keyPressed){
    stroke (random (255), random (255), random (255));
    line (width/2, height/2, random (width), random (height));
  }
}

//EVENTS: these are also functions
//you need to have a void draw () function to use mouse events
//even if it's empty

void mousePressed () {
  background (random (255), random (255), random (255));
  fill (random (255), random (255), random (255));
  textSize (120);
  text ("YEAH!", width/4, height/2);
}

void mouseReleased () {
  background (255);
 
}

void mouseDragged (){ //when you press and move
stroke (random (255), random (255), random (255));
strokeWeight (1);
//line (mouseX, pmouseX, mouseY, pmouseY);
strokeWeight (2);
line (pmouseX, pmouseY, mouseX, mouseY); //you can see the pmouse and mouse distance
//rect (pmouseX, mouseX, pmouseY, mouseY);
  
}

void keyPressed (){ //when you press a key: background goes black
  background (0);
}

void keyReleased (){
  background (random (255), random (255), random (255));
  fill (0);
  strokeWeight(3);
  textSize (70);
  text ("YO NIGGA", random (0, 50), random (100, 250));
  
  if (key == 'r'){ //assign a command to one specific key
    fill (255, 0, 0);
    rect (50, 50, 450, 450);
  }
  if (key == 'g'){ //assign a command to one specific key
    background (0, 255, 0);
  }
  
  println (keyCode); //find the code of special keys (space bar, arrows...)
} 
////////// /////////////////////////////////////////////////////////////////////////////
//create a processing sketch with and initial generative drawing. This drawing can be/// 
//modified by the action of a user with a keyboard or/and mouse events. Include a save///
//function and take different pictures of your project. Have someone else test it.//////
////////////////////////////////////////////////////////////////////////////////////////


void setup (){
  size (500,500);
  background (255);
  rectMode (CENTER);
}

void draw () {
  println (keyCode);
  if (mousePressed){
    strokeWeight (random (1, 15));
    stroke (random(255), random(255), random (255), random (255));
  }
  line (mouseX, mouseY, pmouseX, pmouseY);
  
   if (mousePressed && (mouseButton == RIGHT)){ 
     for (int c=0; c<500; c+=40){
       noFill ();
       stroke (random (255), random (255));
       strokeWeight (1);
       rect (250,250,c,c);  
     }
    }
}

void keyPressed (){
   if (keyCode == 32){
    fill (random (255), random (255), random (255));
    for (int b=0; b<2; b++){
      Ellie (b, b, b*2);
    }
    //text ("WOW!", random (70, 250), random (150, 300));
    //textSize (70); 
  }
  
  if (key == 'b'){
  rect (mouseX -10, mouseY - 10, pmouseX/20, pmouseY/20);
  background (random (255), random (255), random (255));
  fill(0);
  }
  
  if (key == 'q'){
    for (int i=0; i<20; i++){
      fill (255, random (255));
      stroke (random (255), random (255));
      strokeWeight (1);
      Trianglz (i, i+mouseY); 
  }
  }
   
  if (key == 's'){
    save ("exercise_events" + millis () + ".jpg"); //save the image in sketch folder with milliseconds to avoid the file to overwrite if several saves
  }

}

void Trianglz (int x1, int y1){
  triangle (x1*mouseX + mouseX/2, y1*mouseY + mouseY/2, mouseX, mouseY, -mouseX +50, -mouseY +50);
}

void Ellie ( int xPos, int yPos, int diameter){
  ellipse (xPos*mouseY + diameter/2, yPos*mouseX + diameter/2, diameter, diameter);
}
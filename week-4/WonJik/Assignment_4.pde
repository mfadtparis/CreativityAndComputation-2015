int a = 0;      // Create a variable "a" of the datatype "int"
int b = 0;  // Create a variable "b" of the datatype "float"

void setup() {
  size(640, 360);
  background(51);
}

void draw() {
  background(51);
  noStroke();
  fill(random(255),random(255),random(255),200);
  a = a + 2;
  rect(0, 0, a, height/2);
  
  textSize(50);
  text("CATCH ME IF YOU CAN!", random(320), random(180));
  
   if(a > width) {
     noLoop();
     textSize(50);
     fill(255);
     text("YOU LOSE!!:(",180,120);
     
 }
}

void keyReleased(){
  if(keyCode == RIGHT){
    fill(255,100);
    b = b+20;
    rect(0,height/2,b,height);
    }
    
  if(b> width){
    noLoop();
    textSize(50);
    fill(255);
    text("YOU WIN!!:)",180,280);
   }
    if(key == 's'){
  save("CatchMe"+millis()+".jpg");
  }
  }
  


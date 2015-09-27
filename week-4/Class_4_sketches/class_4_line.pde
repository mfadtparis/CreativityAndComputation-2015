void setup () {
  size (500,500);
  background (255);
}

void draw () {
  line (mouseX, mouseY, pmouseX, pmouseY);
  println (mouseX + ":" + pmouseX); //+ is not addition, concatanation 
}
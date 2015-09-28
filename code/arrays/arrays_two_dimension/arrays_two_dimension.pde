int[][] widthRect = {{300, 0}, {230,200}, {320,255}, {142,30}, {178,130}, {245, 180}};

void setup(){
  size(500,300);
  background(255);
  noStroke();

  for (int i = 0; i < widthRect.length; i++) {
    fill(widthRect[i][1]);
    rect(width/4, i*50, widthRect[i][0], 45);
  }
}
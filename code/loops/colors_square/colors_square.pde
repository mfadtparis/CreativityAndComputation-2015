size(800,400);
background(250, 250, 190);
noStroke();
//rect(x, y, width, height);

int col;
color[] colarray = new color[3];
colarray[0] = color(0,0,255);
colarray[1] = color(255,0,0);
colarray[2] = color(255,200,10);

for(int a=0; a<8; a++){
  for(int b=0; b<4; b++){
    float rectWidth = random(30,80);
    float rectHeight = random(20,80);
    float position = random(98,110);
    col = colarray[(int)random(0,3)];
    println(col);
    fill(col);
    rect(a*position+15, b*position, rectWidth, rectHeight);
  }
}

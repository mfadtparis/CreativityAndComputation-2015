
int xPos , yPos , xDir , yDir ; //

void setup() {
  size(500,500);
  background (0); 
  fill (255,56,89); 
  noStroke();
  frameRate(10); //default fps 60, burada istediğimiz gibi değiştirebiliriz, 50 yaptık
   xDir = int(10);
   yDir = int(-5);
  
  xPos= width/2;
  yPos= height/2; //x ve y koordinatının yerini belirledik 
 }
 
 void draw() { //loops the following drawing

  if (xPos>500){
    xDir=-xDir;
   }
   
   if (yPos<0) {
    yDir= yDir * -1;  
   }
   
   if (xPos<0) {
     xDir=-xDir; 
   }
     
   if(yPos>500) {
     yDir= -yDir;
     }
     
   xPos = xPos + xDir; 
  
   yPos = yPos + yDir ;
   fill(random (170), 0 , 190) ;
   ellipse(xPos , yPos , 10,10); //başta x ve y noktalarını belirledik ama elipsin nerede olucagını buraya yazdık
   fill(255,249,138) ;
   for(int x=5; x<width; x+=10) {
   triangle(248, 254, 256, 254, xPos, yPos); }
   
   }
 
 
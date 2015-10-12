import gab.opencv.*;
import processing.video.*;
 
Capture cam;
Movie video;
OpenCV opencv;
 
void setup() {
  size(640, 480);
  cam = new Capture(this, 640, 480, 30);
  cam.start();
  
  opencv = new OpenCV(this, 640, 480);
  opencv.loadCascade(OpenCV.CASCADE_FULLBODY );
  
}
 
void draw() {
  if(cam.available()){
    cam.read(); 
  }
   
  opencv.loadImage(cam);
  opencv.dilate();//Get the image in black and white
  opencv.erode();
  opencv.brightness((int)map(mouseX, 0, width, -255, 255));
  image(opencv.getOutput(),0,0);
  
  noFill();
  stroke(255);
  strokeWeight(2);
  for (Contour contour : opencv.findContours()) {
    contour.draw();
  }
}
 
void movieEvent(Capture m) {
  m.read();
}
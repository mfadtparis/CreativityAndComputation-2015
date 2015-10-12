import ddf.minim.*;
import ddf.minim.signals.*;
Minim minim;
AudioPlayer mySound;
 
void setup(){
  size(400, 400,P3D);
  noStroke();
  rectMode(CENTER);
  minim = new Minim(this);
  mySound = minim.loadFile("imperial.mp3");
  mySound.play();
}
int n=0;
void draw(){
  background(0);
  for(int i = 0; i < mySound.bufferSize() - 1; i++)  {
    //fill(random(255),random(255),random(255));
    ellipse(20+i,20+i,mySound.left.get(i)*100,mySound.left.get(i)*100);
  }
  n++;
}
 
//mute out
void keyPressed(){
  if ( key == 'm'|| key == 'M' ){
    if ( mySound.isMuted() ){
      mySound.unmute();
    }
    else{
      mySound.mute();
    }
  }
}
 
void stop(){
  mySound.close();
  minim.stop();
  super.stop();
}
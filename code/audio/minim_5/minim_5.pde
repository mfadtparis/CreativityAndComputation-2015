
 
import ddf.minim.*;
 
Minim minim;
AudioInput in;
 
void setup()
{
  size(800, 800, P2D);
 
  minim = new Minim(this);
  minim.debugOn();
   
  // get a line in from Minim, default bit depth is 16
  in = minim.getLineIn(Minim.STEREO, 512);
}
 
void draw()
{
  background(0);
   
  
  // draw the waveforms
  for(int i = 0; i < in.bufferSize() - 1; i++)
  {
    fill(255,60,0,170);
   
    rect(i, 50 + in.left.get(i)*50, i+1, 50 + in.left.get(i+1)*50);
    rect(i, 250 + in.right.get(i)*50, i+1, 50 + in.right.get(i+1)*50);
    fill(60,255,200);
    rect(i, 400 + in.right.get(i)*200, i+1, 50 + in.right.get(i+1)*200);
    rect(i, 150 + in.right.get(i)*200, i+1, 50 + in.right.get(i+1)*200);
  }
   // draw the waveforms
  for(int i = 0 ; i < in.bufferSize() - 1; i++)
  {
    fill(255,60,0,100);
   
    rect(i, 500 + in.left.get(i)*50, i+1, 50 + in.left.get(50 )*50);
    rect(i, 700 + in.right.get(i)*50, i+1, 50 + in.right.get(i+1)*50);
    fill(60,255,200);
    rect(i, 600 + in.right.get(i)*200, i+1, 50 + in.right.get(i+1)*200);
  }
}
 
 
void stop()
{
  // always close Minim audio classes when you are done with them
  in.close();
  minim.stop();
   
  super.stop();
}
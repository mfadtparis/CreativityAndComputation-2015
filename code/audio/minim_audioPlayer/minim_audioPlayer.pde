import ddf.minim.*;
 
Minim minim;
AudioPlayer song;
 
void setup()
{
  size(100, 100);
 
  minim = new Minim(this);
 
  // this loads mysong.mp3 from the data folder
  song = minim.loadFile("star-wars-theme.mp3");
  song.play();
}
 
void draw()
{
  background(0);
}
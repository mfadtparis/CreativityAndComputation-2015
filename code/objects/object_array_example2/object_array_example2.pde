Gizmo giz[] = new Gizmo[10];
 
void setup () {
  size (320, 240);
  background (0);
  stroke (255);
   
  for (int i=0; i < giz.length; i++) {
    float x = random (width);
    float y = random (height);
    giz[i] = new Gizmo (x, y);
  }
}

class Gizmo {
   
  PVector position;
  PVector direction;
   
  float spin = 0.15;
   
  Gizmo (float theX, float theY) {
    position    = new PVector (theX, theY);
    direction   = new PVector ();
    direction.x = random (-1, 1);
    direction.y = random (-1, 1);
  }
   
  void move () {
    direction.x += random (-spin, spin);
    direction.y += random (-spin, spin);
    direction.normalize ();
    position.add (direction);
     
    if (position.x < 0 || position.x > width) {
      direction.x *= -1;
    }
    if (position.y < 0 || position.y > height) {
      direction.y *= -1;
    }
  }
}
 
void draw () {
  noStroke ();
  fill (0, 2);
  rect (0, 0, width, height);
   
  stroke (255);
  for (int i=0; i < giz.length; i++) {
    giz[i].move ();
    point (giz[i].position.x, giz[i].position.y);
  }
}
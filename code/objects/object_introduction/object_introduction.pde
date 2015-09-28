// Step 1. Declare an object.
Circles myCircle;
Circles myCircle2;

void setup()  { 
  size(500,500);
  background(255);
  // Step 2. Initialize object. Create a new instance
  //Arguments / Parameters go inside parenthesis when the object is constructed (see object constructor)
  myCircle = new Circles(0, 0, 250, 10);
  myCircle2 = new Circles(0, 0, 100, 5);
}    

void draw()  {    
  background(255);  
  // Step 3. Call methods on the object. 
  myCircle.move();   
  myCircle.display();
  myCircle2.move();   
  myCircle2.display(); 
}

// Step 4. Write your object Class
class Circles {
  //data we want to assign to your circle (color, position, speed) 
  color c;
  float x;
  float y;
  float speed;
  
  //The Constructor is defined with arguments (assign value to color, position and speed)
  Circles(color _c, float _x, float _y, float _speed){
    c = _c;
    x = _x;
    y = _y;
    speed = _speed;
  }
  //the function assign to the Circles object (display and move)
  void move() {
    x = x + speed;
    if (x > width) {
      x = 0;
    }
  }
  void display() {
    fill(c);
    ellipse(x,y,100,100);
  }
}
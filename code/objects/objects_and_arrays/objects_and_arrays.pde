// Step 1. Declare the array of object and create the array
Circles[] myCircle = new Circles[50];

void setup()  { 
  size(500,500);
  background(255);
  // Step 2. Create each object in the array
  for(int i=0; i<myCircle.length; i++){
   myCircle[i]= new Circles(i*10,random(width), random(height), i);
  }
}

void draw()  {    
  background(255);  
  // Step 3. Call methods on each objects. 
  for(int i=0; i<myCircle.length; i++){
    myCircle[i].move();   
    myCircle[i].display();
  }
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
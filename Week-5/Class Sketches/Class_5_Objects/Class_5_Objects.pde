//////////////////////////////////////////////////////////////////////////////////////
///////////////////////////OBJECT ORIENTED PROGRAMMING////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////

///Class = template : data (name gender age eyecolor...) & functions (sleep breath walk...)
//similar to everyone

//human_being (class:everyone is a humanbeing) human1 (object) = new human_being ("Georges", "man", 80, "brown", "brown");
//human_being human 2 = new human_being ("Martine", woman, 80, blue, 


//DATA
color c;
float x;
float y;
float speed;
//DATA END

void setup (){
  size (500,500);
  //CONSTRUCTOR
  c = color (0);
  x = 0;
  y = 250;
  speed = 10;
}
//CONSTRUCTOR END

void draw (){
  background (255);
  move();
  display();
}

//FUNCTIONS
void move () {
  x = x + speed;
  if (x > width) {
    x = 0;
  }
}

void display () {
  fill (c);
  ellipse (x,y,100,100);
}
//FUCNTIONS END





//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////

//KEEP IN MIND THERE IS A DIFFERENCE BETWEEN CLASS AND OBJECT


//Step1: Declare and object: name of the template (of the Class)
//then name of the object

Circles myCircle;
Circles myCircle2;

void setup () {
  size (500,500);
  background(255);
  //Step2. Initialize object. Create a new instance
  //Arguments go inside parenthesis when the object is constructed (cf CONSTRUCTOR)
  myCircle = new Circles(0,0,250,10); //there is a new circle in the sketch out of the Circles Class
  myCircle2 = new Circles (100,50,0,5);
}

void draw () {
  background (255);
  //Step3. Call methods on the objects
  myCircle.move();
  myCircle.display();
  myCircle2.move();
  myCircle2.display();
}


//Step4. Create a Class for the obejct: this is where you write the template: data constructor functions

class Circles {
  //data we wat to assign to circle (color, position, speed)
  color c;
  float x; 
  float y;
  float speed;
  
  //the constructor: assigns value (temporary value: _c...)
  Circles (color _c, float _x, float _y, float _speed){
    c = _c;
    x = _x;
    y = _y;
    speed = _speed;
  }
  
  //the different functions (display, move)
  void move () {
  x = x + speed;
  if (x > width) {
    x = 0;
  }
}

void display () {
  fill (c);
  ellipse (x,y,100,100);
}
}
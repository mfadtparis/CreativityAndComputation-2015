
int maxSize = 15;

Bicycle[] bicycles = new  Bicycle [maxSize]; // the array we are declaring 
//int[] vals = new int[10]; // [0,1,2,3,4,5,6,7,8,9,10]
//int[][] vals2d = new int[2][2]; // [0,0] [0,1] [1,0] [1,1] 



void setup(){
  size(500,500);
  background(255);
  for(int i = 0; i < maxSize; i++) // i ++ means increase i by one 
  {
    color rColor = color (int (random(0,200)),int (random(0,200)),int (random(0,200)));
    int rX = int (random(0,width - 50));
    //int rY = i*40 % 500; // modulo operator a way of folding #'s a number. 1/2 = less then 2 you get remainerback
    int rY = int (random (0, height -40));
    int rSpeed = int(random (2,10));
    
    bicycles[i] = new Bicycle (rColor, rX, rY, rSpeed);
  }
 
}

void draw(){
  background(255);
  for(int i = 0; i < maxSize; i++) 
  {
    bicycles[i].display();
    bicycles[i].move();
  }
}
void test (String message){
  print (message + "\n");
}

class Bicycle{ // template
  color c; 
  float x;
  float y;
  float speed;
  Bicycle(color _c, float _x, float _y, float _speed){ //properties
    c = _c;
    x = _x;
    y = _y;
    speed = _speed; 
   
  }
  void printValues(){
  //print("c =" +c+ "x =" +x + "y =" +y +"speed="+speed + "\n"); 
  }
  
  void display(){
     fill(c);
     ellipse(x,y,50,40);
     fill(0);
     ellipse(x,y,10,10);
     fill(c);
     ellipse(x + 75,y,50,40);
     fill(0);
     ellipse(x+75,y,10,10);
     line (x,y-20,x+75,y-20);
     line (x + 75,y-20, x+75,y-40);
     line (x + 75 -20, y-40, x + 75 + 20,y -40);
     line (x ,y-20, x,y-30);
     line (x + 75 -20, y-40, x + 75 + 20,y -40);
     
     
   
    
  }
  
  int getX(){ // if you want to find x value of your rectangle it will return you the value of the x
  return int(x);
  
  }
  
 void move (){
    x = x + speed;
    if (x > width) x = 0;
    //y = y +speed;
    //if (y > height) y = 0;
  }
}

// create an arry of text and 
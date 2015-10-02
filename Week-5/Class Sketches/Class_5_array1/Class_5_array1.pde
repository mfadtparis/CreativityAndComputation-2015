////////////////////////////////////////////////////////////////////////////////////////
////////class 5: arrays ////////////
//////////////////////////////////////////////////////////////////////////////////////
//Big variable where you can store other variable. you can read the array and access
//the variables with an index number [0]. [1] ,[2] ..... 
//an array can only handle variables of the same type: 
//int, float, string, char, color,booelan

//RUN EACH SECTION IN DIFFERENT SKETCH

//declare an array: type[] name_of_array (ex: marketList) = {"banana", "tomato", "apple", "orange"} 
//print(marketList[1]); --> prints 'tomato'

//create array with different widths to avoid drawing each rectangle 

int[] widthRect = {300, 230, 320, 142, 178, 245};

//instead of:
//int width1=300;
//int width2=230;
//int width3=320;
//etc

void setup () {
  size (500,300);
  background(255);
  fill(0);
  for (int i=0; i<widthRect.length; i++){  // array_name.length calls size of the array (number of items in array)
  rect(width/4, i*50, widthRect[i],45);
  }
}

//////////////////////////////////////////////////////////////////////////////////////
//second way to declare array: faster for cpu

int[] widthRect; //Declare

void setup() {
  size (500,300);
  background(255);
  fill(0);
  
  widthRect = new int [6]; //Create
  widthRect[0] = 300; //Assign
  widthRect[1] = 230;
  widthRect[2] = 320;
  widthRect[3] = 142;
  widthRect[4] = 178;
  widthRect[5] = 245;
  
  for (int i=0; i<widthRect.length; i++){  // array_name.length calls size of the array (number of items in array)
  rect(width/4, i*50, widthRect[i],45);
  }
}


//////////////////////////////////////////////////////////////////////////////////////
//third way to declare arrays

int[] widthRect = new int [6]; //Declare and Create

void setup() {
  size (500,300);
  
  widthRect[0] = 300; //Assign
  widthRect[1] = 230;
  widthRect[2] = 320;
  widthRect[3] = 142;
  widthRect[4] = 178;
  widthRect[5] = 245;
  
  for (int i=0; i<widthRect.length; i++){  // array_name.length calls size of the array (number of items in array)
  rect(width/4, i*50, widthRect[i],45);
  }
}

//////////////////////////////////////////////////////////////////////////////////////
//STORE MOUSE DATA INTO ARRAY////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////

int num = 50;
int[] x = new int [num]; //create x array with 50 variables inside 
int[] y = new int [num];

void setup () {
  size (300,300);
  noStroke();
  fill (255,102);
}

void draw () {
background(0);
//shift the values to the right to store in another place the new stored value: avoid overwriting
//the second element of the array will be a circle a bit to the right
//store from num - 1 to 1 (0 is x[0] and y[0] are declared and not changed 
//creates new array with [0] = [1], [1] = [2] etc with a total of num-1 
//those values change everytime your mouse moves
for (int = num -1; i > 0; i--){
  x[i] = x[i-1];
  y[i] = y[i-1];
 }
 
 //Add the new values to the beginning of the array
 //The last item will ahve the last position of our mouse
 x[0] = mouseX;
 y[0] = mouseY;
 //Draw the circles
 for (int i=0; i<num; i++){
   ellipse (x[i], y[i], i/2.0, i/2.0);
 }
}


//////////////////////////////////////////////////////////////////////////////////////
//MORE ARRAY FUNCTIONS////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////

///append () add one element at the end of the array, anywhere in your code 
///(if you want to add an element when you push a key, etc

String[] marketList = {"banana", "tomato", "apple", "orange"};
marketList = append (marketList, "salad");
printArray(marketList);

//splice(name_of_array, new element, position) 
//adds element at a specific position in the array
marketList = splice (marketList, "salad", 2);

//shorten (name_of_array) : deletes last item of array
marketList = shorten(marketList);

//arrayCopy(): copy an array from another one (declare it first)
String[] fruits= new String[marketList.length];
marketList = arrayCopy (marketList, fruits); // exactly the same as marketList but called fruits


//////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////2D ARRAYS//////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////

// example: marketlist of 3 bananas, 1 tomato, 4 apples, 3 oranges
//SYNTAX: int[][] nameofarray = {{first cell},{second cell},{third cell}}

//widthRect = {{width of rectangle, color}...}
int[][] widthRect = {{300,0}, {230,200}, {320,255}, {142,30}, {178,130}, {245,180}};

void setup () {
  size(500,300);
  background(255);
  noStroke();
  for (int i = 0; i<widthRect.length; i++){
    fill(widthRect[i][1]); 
    //first bracket is the number of the cell {width,color} 
    //second one is the item in the cell (first one is 0 (width), second one is color (1))
    //if need to call both items, just call the cell [i]//
    //calls [i] cell and the color of each cell
    rect(width/4, i*50, widthRect[i][0],45); //i*50 is y value first rectangle drawn at:
    //0, then 50, then 2x50, then 3x50...
  }
}
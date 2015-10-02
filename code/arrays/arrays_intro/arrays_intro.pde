//HOW TO CREATE ARRAYS

//First way: 
int[] widthRect; // Declare → Give a name to the array, and a type.

void setup() {
  size(500, 300);
  background(255);
  fill(0);
  widthRect = new int[6]; // Create → the keyword new allow us to create a new array width five integer items in it
  widthRect[0] = 300; // Assign → assign a value to each item
  widthRect[1] = 230;
  widthRect[2] = 320;
  widthRect[3] = 142;
  widthRect[4] = 178;
  widthRect[5] = 245;

  // Read one array element each time through the for loop
  for (int i = 0; i < widthRect.length; i++) {
    rect(width/4, i*50, widthRect[i], 45);
  }
}

////Second way
//int[] widthRect = new int[6]; // Declare and Create

//void setup() {
//  size(500, 300);
//  background(255);
//  fill(0);
//  widthRect[0] = 300; // Assign 
//  widthRect[1] = 230;
//  widthRect[2] = 320;
//  widthRect[3] = 142;
//  widthRect[4] = 178;
//  widthRect[5] = 245;
//  // Read one array element each time through the for loop
//  for (int i = 0; i < widthRect.length; i++) {
//    rect(width/4, i*50, widthRect[i], 45);
//  }
//}


////Third way
//int[] widthRect = {300, 230, 320, 142, 178, 245}; //Declare, Create and Assign

//void setup() {
//  size(500, 300);
//  background(255);
//  fill(0);
//  // Read one array element each time through the for loop
//  for (int i = 0; i < widthRect.length; i++) {
//    rect(width/4, i*50, widthRect[i], 45);
 
//}
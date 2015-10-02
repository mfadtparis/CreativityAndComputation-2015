////////////////////////////////////////////////////////////////////////////////////////
////////class 5: arrays ////////////
//////////////////////////////////////////////////////////////////////////////////////
//Big variable where you can store other variable. you can read the array and access
//the variables with an index number [0]. [1] ,[2] ..... 
//an array can only handle variables of the same type: 
//int, float, string, char, color,booelan

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
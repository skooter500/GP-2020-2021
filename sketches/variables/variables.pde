void setup()
{
  size(500, 500);
}

// Declare variables you can use later:
float x = 0; // float is a real number
int i = 0; // i is an integer - whole number
String s = "Hello world"; // String is a sequence of characters
char c = 'a'; // c is a single character
boolean b = true; // b can hold the values of true or false

void draw()
{
  background(0);
  noStroke();
  fill(255); // White
  // Operations you can do on variables:
  // x ++; // Add 1 to x
  // x += 5; // Add 5 to x
  // x = x + 5; // The same, justa  different way of expressing
  // x -= 2; // Subtract 2 from x. All the above also works for subtract
  
  // x *= 2; // Multiply by 2
  // x / 3.0f; // Divide by 2. Note the .0f at the end of 3. That means that 3 is a float constant rather than an int
  
  
  // For Strings, + appends two strings
  println(s + " Bryan"); // Print to the console
  
  // check this out! A moving circle
  ellipse(x, height / 2, 50, 50);
  x ++;
}

void setup()
{
  size(500, 500);
  noCursor(); // Turn the cursor off
}



void draw()
{
  background(255, 0, 0); // Red Green Blue
  fill(255, 255, 0);
  noStroke();
  ellipse(250, 260, 500, 500);
  fill(0, 255, 255);
  noStroke();
  triangle(450, 450, 50, 450, 250, 0);
  fill(211, 211, 211);
  noStroke();
  ellipse(250, 250, 200, mouseY / 3); // mouseY is a variable that gives the mouse y position on the screen
  fill(0, 0, 0);
  ellipse(250, 250, 75, mouseY / 6);
}

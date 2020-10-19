void setup()
{
  size(500, 500);
}

float rectWidth;
float rectHeight;

void draw()
{
  
  rectWidth = mouseX / 2;
  rectHeight = mouseY / 2;
  
  background(0);
  noStroke();
  fill(0, 0, 255);
  
  float tlx = (width / 2) - (rectWidth / 2);
  float tly = (height / 2) - (rectHeight / 2);
  
  rect(tlx, tly, rectWidth, rectHeight);
  
}

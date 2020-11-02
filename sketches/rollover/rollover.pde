void setup()
{
  size(500, 500);
  
  tlx = (width / 2) - (rectWidth / 2);
  tly = (height / 2) - (rectHeight / 2);
  
}

float rectWidth = 300, rectHeight = 100;
float tlx, tly;

void draw()
{
  background(0, 0, 255);
  noStroke();
  
  if (mouseX > tlx && mouseY > tly && mouseX < tlx + rectWidth && mouseY < tly + rectHeight)
  {
    fill(255, 0, 0);
  }
  else
  {
    fill(0, 255, 0);
  }
  rect(tlx, tly, rectWidth, rectHeight);
  
}

void setup()
{
  size(500, 500);
}

void draw()
{
  background(0, 0, 255);
  
  noStroke();
  fill(255, 0, 0);
  if (mouseX < width / 2)
  {
    rect(0, 0, width / 2, height);
  }
  else
  {
    rect(width / 2, 0, width / 2, height);
  }
}

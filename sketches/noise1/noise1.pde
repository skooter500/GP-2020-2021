void setup()
{
  size(500, 500);
}

void draw()
{
  background(0);
  stroke(255);
  for(int i = 0 ; i < width ; i ++)
  {
    line(i, height, i, height - noise(i/ (float) mouseX) * 100);
  }
}

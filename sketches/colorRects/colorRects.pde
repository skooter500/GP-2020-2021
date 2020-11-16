void setup()
{
  size(500, 500);
  colorMode(HSB);
}

void draw()
{
  background(0);
  int numRects = mouseX;
  float w = width / (float) numRects;
  
  noStroke();
  for(int i = 0 ; i < numRects ; i ++)
  {
    fill((i / (float) numRects) * 255, 255, 255); 
    rect(i * w, 0, w, height);
  }
}

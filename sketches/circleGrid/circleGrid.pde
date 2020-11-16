void setup()
{
  size(500, 500);
  colorMode(HSB);
}

float offset = 0;
float speed = 0;

void draw()
{
  float  numCircles = 20;
  float w = width / (float) numCircles;
  noStroke();
  for (int row = 0 ; row < numCircles ; row ++)
  {
    for (int col= 0 ; col < numCircles ; col ++)
    {
      float x = (w / 2) + col * w;
      float y = (w / 2) + row * w;
      float c = ((row + col) / (numCircles * 2.0f)) * 255;
      c = (c + offset) % 255;
      fill(c, 255, 255);
      ellipse(x, y, w, w);
      speed = mouseX / 100000.0f;
      offset += speed;
      
    }
  }
  
}

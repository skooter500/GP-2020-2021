void setup()
{
  size(500, 500);
  cx = width / 2;
  cy = height / 2;
  colorMode(HSB);
  
}

float radius = 200;
float circleWidth = 20;
float cx, cy;

void draw()
{
  background(0);
  float numlines = mouseX / 20;
  float cgap = 255 / numlines;
  
  float gap = TWO_PI / numlines;
  
  float px = cx, py = cy - radius;
  
  for (int i = 0 ; i <= numlines ; i ++)
  {
    stroke(cgap * i, 255, 255);
    float theta = i * gap;
    float r = 0;
    if (i % 2 == 1)
    {
      r = radius / 2;
    }
    else
    {
      r = radius;
    }
    float x = cx + sin(theta) * r;
    float y = cy - cos(theta) * r;
    line(px, py,x,y);
    px = x;
    py = y;
  }
  
}

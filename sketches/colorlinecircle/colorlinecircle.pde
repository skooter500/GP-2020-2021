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
  float numlines = mouseX / 5;
  float cgap = 255 / numlines;
  
  float gap = TWO_PI / numlines;
  
  for (int i = 0 ; i < numlines ; i ++)
  {
    stroke(cgap * i, 255, 255);
    float theta = i * gap;
    float x = cx + sin(theta) * radius;
    float y = cy + cos(theta) * radius;
    line(cx, cy,x,y);
  }
  
}

void setup()
{
  size(500, 500);
  y = height / 2;
  smoothedY = height / 2;
}

float y;
float smoothedY;

void draw()
{
  background(0);
  ellipse(100, y, 100, 100);
  y += random(-20, 20);
  
  smoothedY = lerp(smoothedY, y, 0.1);
  
  ellipse(200, smoothedY, 100, 100);
}

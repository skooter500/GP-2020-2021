void setup()
{
  size(500, 500);
  
  cx = width / 2;
  cy = height / 2;
  colorMode(HSB);
  background(0);
}

float theta = 0;
float cx, cy;
float x, y;
float r;

void draw()
{
  //
  noStroke();
  fill(r, 255, 255);
  x = cx + sin(theta) * r;
  y = cy - cos(theta) * r;
  
  ellipse(x, y, r, r);
  
  theta += 0.1;
  r ++;
  
  
}

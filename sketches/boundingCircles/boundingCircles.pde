void setup()
{
  size(500, 500);
  cx = width / 2;
  cy = height / 2;
  r1 = 50;
  r2 = 20;
}

float cx, cy;
float r1, r2;

void draw()
{
  background(0);
  noFill();
  stroke(255, 0, 0);
  ellipse(cx, cy, r1 * 2, r1 * 2);
  
  stroke(0, 255, 0);
  ellipse(mouseX, mouseY, r2 * 2, r2 * 2);
  
  if (dist(cx, cy, mouseX, mouseY) < r1 + r2)
  {
    text("Collides!", 10, 10);
  }  
  
}

void setup()
{
  size(500, 500);
}

void draw()
{
  background(0);
  stroke(255);
  
  line(100, 100, 200, 100);
  line(100, 120, 200, 120);
  line(100, 140, 200, 140);
  line(100, 160, 200, 160);
  
  // Iteration
  // Loops!!!
  
  float y = 100;
  while(y <= 160)
  {
    line(220, y, 320, y);
    y += 20;
  }
  
  for(float yy = 100; yy <= 160 ; yy += 20) //<>//
  {
    line(340, yy, 440, yy);
  }

  
  
}

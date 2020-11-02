import processing.sound.*;

void setup()
{
  size(1000, 500);
  
  x = width / 2;
  y = height / 2;
}

float x;
float y;
float xspeed = 2;
float yspeed = -2;

float radius = 10;

void draw()
{
  background(0);
  noStroke();
  fill(255);
  ellipse(x, y, 20, 20);
  x += xspeed;
  y += yspeed;
  
  if (y < radius || y > height - radius)
  {
    yspeed = - yspeed;
  }
  
  if (x > width - radius || x < radius)
  {
    xspeed = -xspeed;
  }
   
  
  
}

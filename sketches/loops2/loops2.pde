void setup()
{
  size(500, 500);
  colorMode(HSB);
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

  /*
  float x = 0;
  while(x <=width)
  {
    line(x, 0, width / 2, height / 2);
    x += 20;
  }
  */
  stroke(255);
  for(float x = 0 ; x <=width ; x += 20)
  {
    line(x, 0, width -x, height);
    line(0, x, width, height - x);    
  }
  
  int numCircles = mouseX / 10;
  float w = width / (float)numCircles;
  float r = w / 2;
  noStroke();
  float colorGap = 255 / (float)numCircles;
  for(int i = 0 ; i < numCircles ; i ++)
  {
    fill(colorGap * i, 255, 255);
    ellipse(r + w * i, height / 2, w, w);
  } 
}

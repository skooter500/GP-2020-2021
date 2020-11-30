void setup()
{
  size(500, 500);
  
  for(int i = 0 ; i < numSnow ; i ++)
  {
    sx[i] = random(0, width);
    sy[i] = random(0, height);
    sspeed[i] = random(2, 10);
    sSize[i] = random(2, 10);
  }
}

int numSnow = 500;
float[] sx = new float[numSnow];
float[] sy = new float[numSnow];
float[] sspeed = new float[numSnow];
float[] sSize = new float[numSnow];


void draw()
{
  background(0);
  noStroke();
  fill(255);
  for(int i = 0 ; i < numSnow ; i ++)
  {
    ellipse(sx[i], sy[i], sSize[i], sSize[i]);
    sy[i] += sspeed[i];
    sx[i] += random(-5, 5);
    if (sy[i] > height)
    {
      sx[i] = random(0, width);
      sy[i] = 0;
      sspeed[i] = random(2, 10);
      sSize[i] = random(2, 10);
    }
    
  }
}

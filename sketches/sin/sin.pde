void setup()
{
  size(500, 500);
}

float amplitude = 100;
float frequency = 2; 

void draw()
{
  float thetaInc = (TWO_PI * frequency) / (float) width;
  for (int i = 0 ; i < width ; i ++)
  {
    float theta = thetaInc * i;
    float y = sin(theta) * amplitude;
    point(i, y + (height / 2));
  }
}

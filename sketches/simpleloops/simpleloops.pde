void setup()
{
  size(500, 500);
  
  for(int i = 0; i < 10 ; i ++) //<>//
  {
    println(i);
  }
  
  for(int i = 20; i <=30 ; i ++)
  {
    println(i);
  }
  
  for(int i = 60 ; i >= 50 ; i --)
  {
    println(i);
  }
  
  for(int i = 100 ; i <=200 ; i+= 20)
  {
    println(i);
  }
  colorMode(HSB);
}

void draw()
{
  for(float x = 100 ; x <= 200 ; x += 10)
  {
    line(x, 50, x, 200);
  }
  
  int count = 11;
  float cgap = 255 / (float) count;
  for(int i = 0 ; i < count ; i ++)
  {
    stroke(cgap * i, 255, 255);
    float x = 100 + (i * 10);
    line(x, 150, x, 300);
  }
  
}

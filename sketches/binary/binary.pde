void setup()
{
  size(500, 500);
  
  border = width * 0.1f;
  w = (width - (border * 2)) / (float) bits.length;
  y = (height / 2) - (w / 2);

}

boolean[] bits = new boolean[8];
float border;
float w;
float y;

void draw()
{
  background(0);
  stroke(255, 0 , 255);
  textAlign(CENTER, CENTER);
  textSize(24);

  for(int i = 0 ; i < bits.length ; i++)
  {
    float x = map(i, 0, bits.length, border, width - border);
    
    if (bits[i])
    {
      fill(0, 255, 0);
    }
    else
    {
      noFill();
    }
    
    rect(x, y, w, w);
    fill(255);
    int bit = bits.length - 1 - i;
    text(int(pow(2, bit)), x + (w / 2), y - 30);
  }
  
  fill(255);
  int sum= 0;
  for(int i = 0 ; i < bits.length ; i ++)
  {
    int bit = bits.length - 1 - i;
    if (bits[bit])
    {
      sum += pow(2, i);
    }
  }
  text(sum, width / 2, height * .75f);
}

void mouseClicked()
{
  if (mouseY > y && mouseY < y + w && mouseX > border && mouseX < width - border)
  {
    int bit = (int) map(mouseX, border, width - border, 0, bits.length);
    bits[bit] = ! bits[bit];
  }
}

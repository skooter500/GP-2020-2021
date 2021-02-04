// samplerate - 4KHz - 44.1Khz
// resolution - Size of a sample. Ususally 8 bits or 16 bits
// Channels - left and right
// frameSize - 512, 1024
// lerp - Return a value between 2 numbers based on t
// map - maps a number from 1 range to another

void setup()
{
  size(512, 512);
  colorMode(HSB);
}

float y = 100;
float lerpedY = 100;

void draw()
{
  float c = map(mouseX, 0, width-1, 0, 255);
  background(c, 255, 255);
  //println(mouseX + "\t" + c);
  
  float t = map(mouseX, 0, width, 0, 1);
  
  println(mouseX + "\t" + t);
  
  float x = lerp(100, 400, t);
  
  // a + (b-a) t
  
  fill(0);
  ellipse(x, height / 2, 100, 100);
  
  
  ellipse(300, y, 60, 60);
  y += random(-5, 5);
  
  ellipse(400, lerpedY, 60, 60);
  lerpedY = lerp(lerpedY, y, 0.1f);
  
}

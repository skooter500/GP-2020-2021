void setup()
{
  size(500, 500);
}

float px = 10, py = 200;
float angle = 27;
float h = 176;
float o;
float a;

void draw()
{
  background(0);
  stroke(255);
  fill(255);
  o = sin(radians(angle)) * h;
  a = cos(radians(angle)) * h;
  
  line(px, py, px + a, py);
  line(px, py, px + a, py - o);
  line(px + a, py, px + a, py - o);
  text(angle, px + 10, py - 10);
  text("Opposite: " + nf(o, 3, 2), px + o + 100, py - 30);
  text("Adjacent: " + nf(a, 3, 2), px + o, py + 10);
  
  /*
  float f = sin(radians(90));
  fill(255);
  textSize(16);
  text("Angle: " + nf(f, 10, 2), 10, 10);
  text("Hello", 50, 200);
  */
}

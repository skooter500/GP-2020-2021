import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

void setup()
{
  size(500, 500);
  colorMode(HSB);
  
  m = new Minim(this);
  ai = m.getLineIn(Minim.MONO, width, 44100, 16);
  ab = ai.mix;
}

Minim m;
AudioInput ai;
AudioBuffer ab;


float lerpedAmplitude = 0;
void draw()
{
  background(0);
  strokeWeight(2);
  stroke(255);

  float amplitude = 0;
  for(int i = 0 ; i < ab.size() ; i ++)
  {
    amplitude = abs(ab.get(i));
  }
  amplitude = amplitude / (float) ab.size();
  lerpedAmplitude = lerp(lerpedAmplitude, amplitude, 0.1f);
  
  float r = 5;
  int sides = (int) map(lerpedAmplitude, 0, 1, 3, 20);
  int iterations = 100;
  float turnFactor = 5;
  
  float lastX = width / 2, lastY = (height /2) - r;
  for(int j = 0 ;  j < iterations ; j ++)
  {
    for(int i = 1 ; i <= sides ; i ++)
    {
      float angle = map(i, 0, sides, 0, TWO_PI);
      float x = (width / 2) + sin(angle) * r;
      float y = (height / 2) - cos(angle) * r;
      
      float c = map(i, 0, sides, 0, 255);
      stroke(c, 255, 255);
          
      point(x, y);
      line(lastX, lastY, x, y);
      lastX = x;
      lastY= y;
      r += turnFactor;
    }
    
  }
}

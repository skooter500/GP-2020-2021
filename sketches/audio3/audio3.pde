import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioInput ai;
AudioBuffer ab;
AudioPlayer ap;

float halfHeight;

float[] lerpedBuffer;

float lerpedAverage = 0;

void setup()
{
  size(512, 512);
  colorMode(HSB);
  
  minim = new Minim(this);
  ai = minim.getLineIn(Minim.MONO, width, 44100, 16);
  ab = ai.mix;
  halfHeight = height / 2;
  
  lerpedBuffer = new float[width];
  
}

void draw()
{
  background(0);
  //stroke(255);
  strokeWeight(2);
  for(int i = 0 ; i < ab.size() ; i ++)
  {
    float c = map(i, 0, ab.size(), 0, 255);
    stroke(c, 255, 255);
    lerpedBuffer[i] = lerp(lerpedBuffer[i], ab.get(i), 0.1f);
    float s = lerpedBuffer[i] * halfHeight;// ab[i]
    line(i, halfHeight - s, halfHeight + s, i);
  }
  
  float total = 0;
  for(int i = 0 ; i < ab.size() ; i ++)
  {
    total += abs(ab.get(i));
  }
  
  float average = total / (float) ab.size();
  lerpedAverage = lerp(lerpedAverage, average, 0.1f);
  ellipse(width / 2, 100, lerpedAverage * halfHeight, lerpedAverage * halfHeight);
}

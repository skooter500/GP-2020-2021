import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioInput ai;
AudioBuffer ab;

float halfHeight;

FFT fft;
float lerpedFrequency;

void setup()
{
  size(512, 512);
  colorMode(HSB);
  minim = new Minim(this);
  
  ai = minim.getLineIn(Minim.MONO, width, 44100, 16);
  ab = ai.mix;
  
  fft = new FFT(width, 44100);
  
  halfHeight = height / 2;
}

void draw()
{
  background(0);
  for(int i = 0 ; i < ab.size() ; i ++)
  {
    float c = map(i, 0, ab.size(), 0, 255);
    stroke(c, 255, 255);
    float sample = ab.get(i) * halfHeight;
    line(i, halfHeight + sample, i, halfHeight - sample);
  }
  
  fft.window(FFT.HAMMING);
  fft.forward(ab);
  int highestBin = 0;
  float highest = 0;
  
  for(int i = 0 ; i < fft.specSize() ; i ++)
  {
    float c = map(i, 0, ab.size(), 0, 255);
    stroke(c, 255, 255);
    line(i, 0, i, fft.getBand(i) * halfHeight);
    if (fft.getBand(i) > highest)
    {
      highest = fft.getBand(i);
      highestBin = i;      
    }
  }
  
  println("Highest bin: " + highestBin);
  
  
  float freq = fft.indexToFreq(highestBin);
  lerpedFrequency = lerp(lerpedFrequency, freq, 0.1f);
  
  noStroke();
  fill(255);
  float y = map(lerpedFrequency, 900, 2500, height, 0);
  ellipse(100, y, 50, 50);

  textSize(20);
  fill(255);
  text("Freq: " + freq, 100, 200);
  
}

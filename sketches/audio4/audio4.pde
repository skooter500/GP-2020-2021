import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer player;
AudioBuffer buffer;
AudioInput ai;

float lerpedAverage = 0;

float[] lerpedBuffer;

float x = 0;

void setup()
{
  size(512, 512);
  colorMode(HSB);
  minim = new Minim(this);
  player = minim.loadFile("Etherwood.mp3", width);
  //player.play();
  //ai = minim.getLineIn(Minim.MONO, width, 44100, 16);
  buffer = player.left;

  lerpedBuffer = new float[buffer.size()];
}

int which = 0;

void draw()
{
  background(0);
  float halfH = height / 2;
  
  if (which == 1)
  {
    strokeWeight(1);
    for (int i = 0; i < buffer.size(); i ++)
    {
      float sample = buffer.get(i) * halfH;
      stroke(map(i, 0, buffer.size(), 0, 255), 255, 255);
      //line(i, halfH + sample, i, halfH - sample); 

      lerpedBuffer[i] = lerp(lerpedBuffer[i], buffer.get(i), 0.1f);

      sample = lerpedBuffer[i] * width * 2;    
      stroke(map(i, 0, buffer.size(), 0, 255), 255, 255);
      line(i, height / 2 - sample, i, height/2 + sample); 
    }
  }
  if (which == 0)
  {
    strokeWeight(1);
    for (int i = 0; i < buffer.size(); i ++)
    {
      float sample = buffer.get(i) * halfH;
      stroke(map(i, 0, buffer.size(), 0, 255), 255, 255);
      //line(i, halfH + sample, i, halfH - sample); 

      lerpedBuffer[i] = lerp(lerpedBuffer[i], buffer.get(i), 0.1f);

      sample = lerpedBuffer[i] * width * 2;    
      stroke(map(i, 0, buffer.size(), 0, 255), 255, 255);
      line(i, height / 2 - sample, height/2 + sample, i); 
    }
  }
  
  if (which == 2)
  {
    for (int i = 0; i < buffer.size(); i ++)
    {
      float sample = buffer.get(i) * halfH;
      stroke(map(i, 0, buffer.size(), 0, 255), 255, 255);
      //line(i, halfH + sample, i, halfH - sample); 

      lerpedBuffer[i] = lerp(lerpedBuffer[i], buffer.get(i), 0.1f);

      sample = lerpedBuffer[i] * width * 2;    
      stroke(map(i, 0, buffer.size(), 0, 255), 255, 255);
      line(0, i, sample, i); 
      line(width, i, width - sample, i); 
      line(i, 0, i, sample); 
      line(i, height, i, height - sample);
    }
  }

  float sum = 0;
  for (int i = 0; i < buffer.size(); i ++)
  {
    sum += abs(buffer.get(i));
  }

  noStroke();
  fill(map(lerpedAverage, 0, 1, 0, 255), 255, 255);
  float average = sum / buffer.size();
  lerpedAverage = lerp(lerpedAverage, average, 0.1f);
  
  if (which == 3)
  {
    noFill();
    strokeWeight(2);
    stroke(map(lerpedAverage, 0, 1, 0, 255), 255, 255);
    ellipse(width / 2, halfH, lerpedAverage * width * 2, lerpedAverage * width * 2);
  } 
  
  if (which == 4)
  {
    noFill();
    strokeWeight(2);
    stroke(map(lerpedAverage, 0, 1, 0, 255), 255, 255);
    rectMode(CENTER);
    rect(width / 2, halfH, lerpedAverage * width * 2, lerpedAverage * width * 2);
  }  
  
  
}

void keyPressed()
{
  if (keyCode >= '0' && keyCode <= '5')
  {
    which = keyCode - '0';
  }
  if (keyCode == ' ')
  {
    if ( player.isPlaying() )
    {
      player.pause();
    }
    else
    {
      player.rewind();
      player.play();
    }
  }
}

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
  player = minim.loadFile("12 The Shadows are Moving.mp3", 512);
  player.play();
  ai = minim.getLineIn(Minim.MONO, width, 44100, 16);
  buffer = ai.left;
  
  lerpedBuffer = new float[buffer.size()];
}

void draw()
{
  background(0);
  float halfH = height / 2;
  for(int i = 0 ; i < buffer.size(); i ++)
  {
    float sample = buffer.get(i) * halfH;
    stroke(map(i, 0, buffer.size(), 0, 255), 255, 255);
    //line(i, halfH + sample, i, halfH - sample); 
    
    lerpedBuffer[i] = lerp(lerpedBuffer[i], buffer.get(i), 0.1f);
    
    sample = lerpedBuffer[i] * halfH;
    stroke(map(i, 0, buffer.size(), 0, 255), 255, 255);
    line(i, halfH + sample, i, halfH - sample); 
   
    
  }
  
  float sum = 0;
  for(int i = 0 ; i < buffer.size(); i ++)
  {
    sum += abs(buffer.get(i));
  }
  
  noStroke();
  fill(map(lerpedAverage, 0, 1, 0, 255), 255, 255);
  float average = sum / buffer.size();
  lerpedAverage = lerp(lerpedAverage, average, 0.1f);
  
  ellipse(x, 50, 50 * lerpedAverage, 50  * lerpedAverage);
  x += lerpedAverage * 5;
  
  if (x > width - 10)
  {
    x =  - 10;
  }
    
  
  ellipse(halfH, halfH, average * halfH, average * halfH);
  ellipse(100, halfH, lerpedAverage * halfH, lerpedAverage * halfH);
}

void keyPressed()
{
  if ( player.isPlaying() )
  {
    player.pause();
  }
  // if the player is at the end of the file,
  // we have to rewind it before telling it to play again
  else if ( player.position() == player.length() )
  {
    player.rewind();
    player.play();
  }
  else
  {
    player.play();
  }
}

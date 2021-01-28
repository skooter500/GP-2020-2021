import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim; // Minim Library
AudioPlayer player; // Playing audio
AudioBuffer buffer; // Gives access to the samples

void setup()
{
  size(1024, 512);

  minim = new Minim(this);
  player = minim.loadFile("Gorgon City - All Four Walls ft. Vaults.mp3", width);
  player.play();
  buffer = player.left;
  colorMode(HSB);
}

void draw()
{
  background(0);
  stroke(255);
  for (int i = 0; i < buffer.size(); i ++) // buffer.size will be 1024
  {
    float c = map(i, 0, buffer.size(), 0, 255);
    stroke(c, 255, 255);
    float sample = buffer.get(i) * (height / 2);
    line(i, height / 2, i, (height / 2) + sample);
  }
}

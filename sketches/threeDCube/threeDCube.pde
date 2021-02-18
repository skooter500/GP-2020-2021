import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

void setup()
{
  size(500, 500, P3D);
  
  minim = new Minim(this);
  ai = minim.getLineIn(Minim.MONO, 512, 44100, 16);
  ab = ai.mix;
}

float theta = 0;
float speed = -0.01f;
float moveSpeed = 1;

float lerpedAverage = 0;

float z = 0;

Minim minim;
AudioInput ai;
AudioBuffer ab;

float radius = 200;

void draw()
{
  
  float sum = 0;
  for(int i = 0 ; i < ab.size() ; i ++)
  {
    sum += abs(ab.get(i));
  }
  float average = sum / (float) ab.size();
  lerpedAverage = lerp(lerpedAverage, average, 0.1f);
  background(0);
  stroke(0, 255, 0);
  strokeWeight(3);
  noFill();
  lights();
  pushMatrix();
  translate(width / 4, height / 2, z);
  rotateX(theta);
  rotateY(theta);
  rotateZ(theta);
  box(100 + (lerpedAverage * 500));
  popMatrix();
  
  pushMatrix();
  translate(width / 2, height / 4, 0);
  rotateX(theta);
  rotateY(theta);
  rotateZ(theta);
  box(100 + (lerpedAverage * 500));
  popMatrix();
  
  pushMatrix();
  translate(width * 0.75, height / 2, 0);
  sphere(100 + (lerpedAverage * 500));
  popMatrix();
  theta += speed;
  z -= moveSpeed;
}

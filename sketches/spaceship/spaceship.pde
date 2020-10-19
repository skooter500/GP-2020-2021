void setup()
{
  size(500, 500);
  noCursor();
}

float px = 400;
float py = 400;
boolean flipColors = false;

void draw()
{
  background(0);
  // Draw the ground
  noStroke();
  fill(255, 255, 0);
  rect(0, height / 2, width, height);
  
  stroke(255, 0, 0);
  // Draw the person
  ellipse(px, py, 10, 10);
  line(px, py + 5, px, py + 50);
  line(px - 10, py + 20, px + 10, py + 20);
  line(px, py + 50, px - 10, py + 65);
  line(px, py + 50, px + 10, py + 65);
  px --;
  
  // Draw the spaceship
  noStroke();
  fill(255);
  rect(mouseX - 50, mouseY, 100, 20);
  rect(mouseX - 100, mouseY + 20, 200, 20);
  
  // Flip the colors (advanced)!
  if (frameCount % 30 == 0)
  {
    flipColors = ! flipColors;    
  }
  if (flipColors)
  {
    fill(0, 0, 255);
  }
  else
  {
    fill(0, 255, 255);
  }
  ellipse(mouseX, mouseY + 10, 10, 10);
  ellipse(mouseX - 20, mouseY + 10, 10, 10);
  ellipse(mouseX + 20, mouseY + 10, 10, 10);
  
  
  
}

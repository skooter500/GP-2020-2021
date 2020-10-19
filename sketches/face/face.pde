void setup()
{
  size(500, 500);
}

void draw()
{
  background(0);
  noFill();
  stroke(255);
  ellipse(mouseX, mouseY, 100, 100);
  fill(mouseX / 2, mouseY / 2, mouseX / 2);
  noStroke();
  ellipse(mouseX - 20, mouseY - 20, 20, 20);
  ellipse(mouseX + 20, mouseY - 20, 20, 20);
  ellipse(mouseX, mouseY, 20, 20);
  stroke(255);
  line(mouseX - 20, mouseY + 25, mouseX + 20, mouseY + 25);
  line(mouseX - 20, mouseY + 25, mouseX - 30, mouseY + 10);
  line(mouseX + 20, mouseY + 25, mouseX + 30, mouseY + 10);
  
}

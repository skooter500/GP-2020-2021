void setup()
{
  size(500, 500);
}

void draw()
{
  background(0, 0, 255);
  
  noStroke();
  fill(255, 0, 0);
  println(mouseX + " " + mouseY);
  if (mouseX < width / 2 && mouseY < height / 2)
  {
    rect(0, 0, width / 2, height / 2);
  }
  else if (mouseX > width / 2 && mouseY < height / 2)
  {
    rect(width / 2, 0, width / 2, height /2);
  }
  else if (mouseX < width / 2 && mouseY > height /2)
  {
    rect(0, height / 2, width / 2, height / 2);
  }
  else
  {
    rect(width / 2, height / 2, width / 2, height / 2);
  }
}

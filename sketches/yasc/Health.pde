class Health
{
  float x,y;
  float rotation = 0;
  float moveX, moveY;
  float size = 20;
  float halfSize = size / 2;
  
  Health(float x, float y)
  {
    this.x = x;
    this.y = y;
    moveX = random(-1, 1);
    moveY = random(-1, 1);
    
  }
  
  void render()
  {
    pushMatrix();
    stroke(255);
    noFill();
    translate(x, y);
    rotate(rotation);
    line(0, - halfSize, 0, halfSize);
    line(-halfSize, 0, halfSize, 0);
    rectMode(CENTER);
    rect(0, 0, size, size);
    popMatrix();
  }
  
  void move()
  {
    rotation += 0.03f;
    x += moveX;
    y += moveY;
    
    if (x < 0)
    {
      x = width;
    }
    if (x > width)
    {
      x = 0;
    }
    if (y < 0)
    {
      y = height;
    }
    if (y > height)
    {
      y = 0;
    }
  }
  
}

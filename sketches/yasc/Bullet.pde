class Bullet
{ 
  float size = 10;
  float speed = 5;
  
  float x, y;
  float rotation;
  
  float lifeTime = 5;
  float ellapsed = 0;
  
  Bullet(float x, float y, float rotation)
  {
    this.x = x;
    this.y = y;
    this.rotation = rotation;
    ellapsed = 0;
  }
  
  void render()
  {
    pushMatrix();
    translate(x, y);
    rotate(rotation);
    line(0, - (size / 2), 0, (size / 2));
    popMatrix();
  }
  
  void move()
  {
    float moveX = sin(rotation);
    float moveY = - cos(rotation);
    x += moveX * speed;
    y += moveY * speed;
    
    /*
    if(x > width || x < 0 || y > height || y < 0)
    {
      bullets.remove(this);
    }
    */
    
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
    
    ellapsed += 1 / 60.0f;
    if (ellapsed >= lifeTime)
    {
      bullets.remove(this);
    }
  }  
}

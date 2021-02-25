class Player
{
  
  // Default constructor
  // No parameters
  Player()
  {
    playerX = width / 2;
    playerY = height / 2;
  }
  
  // Parameterised constructor
  Player(float playerX, float playerY)
  {
    this.playerX = playerX;
    this.playerY = playerY;
  }
    
  // Fields
  float playerX;
  float playerY;
  float playerWidth = 50;
  float halfPlayer = playerWidth / 2.0f;
  float rotation = 0;
  
  // Methods
  void render()
  {
    pushMatrix();
    translate(playerX, playerY);
    rotate(rotation);
    line( - halfPlayer, halfPlayer, 0, -halfPlayer);
    line(0, -halfPlayer, halfPlayer, halfPlayer);
    line(halfPlayer, halfPlayer, 0, 0);
    line(0, 0, - halfPlayer, halfPlayer);
    popMatrix();
  }
  
  void move()
  {
    float moveX = sin(rotation);
    float moveY = - cos(rotation);
    if (checkKey(UP))
    {
      playerX += moveX;
      playerY += moveY;
    }
    
    if (checkKey(DOWN))
    {
      playerX -= moveX;
      playerY -= moveY;
    }
    
    if (checkKey(LEFT))
    {
      rotation -= 0.1f;
    }
    if (checkKey(RIGHT))
    {
      rotation += 0.1f;
    }    
  }
}

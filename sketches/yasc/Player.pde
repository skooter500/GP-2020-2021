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

  float moveX, moveY;

  float playerWidth = 50;
  float halfPlayer = playerWidth / 2.0f;
  float rotation = 0;

  int fireRate = 2;
  int health = 10;

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
    text("Health: " + health, playerX + 20, playerY - 20);
  }

  float ellapsed;
  float toPass = 1 / (float) fireRate;
  void shoot()
  {
    if (checkKey(' ') && ellapsed >= toPass)
    {
      float x, y;
      x = playerX + (moveX * 30);
      y = playerY + (moveY * 30);
      Bullet b = new Bullet(x, y, rotation);
      bullets.add(b);
      ellapsed = 0;
    }
    ellapsed += 1 / 60.0f;
  }

  void checkCollisions()
  {
    for (int i = 0; i < bullets.size(); i ++)
    {
      Bullet b = bullets.get(i);
      float dist = dist(b.x, b.y, playerX, playerY);
      if (dist < halfPlayer)
      {
        if (health > 0)
        {
          health --;
          bullets.remove(b);
        }
      }
    }

    for (int i = 0; i < healths.size(); i ++)
    {
      Health h = healths.get(i);
      float dist = dist(h.x, h.y, playerX, playerY);
      if (dist < halfPlayer + h.halfSize)
      {
        health += 10;
        healths.remove(h);
      }
    }
  }
  void move()
  {
    moveX = sin(rotation);
    moveY = - cos(rotation);
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

  void update()
  {
    move();
    shoot();
    checkCollisions();
  }
}

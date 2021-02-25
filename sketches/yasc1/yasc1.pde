boolean checkKey(int k)
{
  if (keys.length >= k) 
  {
    return keys[k] || keys[Character.toUpperCase(k)];  
  }
  return false;
}

boolean[] keys = new boolean[526];

void keyPressed()
{ 
  keys[keyCode] = true;
}
 
void keyReleased()
{
  keys[keyCode] = false; 
}

float playerX;
float playerY;
float playerWidth = 50;

void drawPlayer(float x, float y)
{
}

void setup()
{
  size(500, 500);
  
  playerX = width / 2;
  playerY = height / 2;
}

void draw()
{
  background(0);
  drawPlayer(playerX, playerY);
}

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

Player player;
Player player1;

void setup()
{
  size(500, 500);
  player = new Player();
  player1 = new Player(100, 100);
}
void draw()
{
  background(0);
  stroke(255);  
  player.move();
  player.render();
  
  player1.move();
  player1.render();
}

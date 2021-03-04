boolean checkKey(int k)
{
  if (keys.length >= k) 
  {
    return keys[k] || keys[Character.toUpperCase(k)];  
  }
  return false;
}
boolean[] keys = new boolean[526];

ArrayList<Bullet> bullets = new ArrayList<Bullet>(); 
ArrayList<Health> healths = new ArrayList<Health>(); 

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
  
  for (int i = 0 ; i < 10 ; i ++)
  {
    Health h = new Health(random(0, width), random(0, height));
    healths.add(h);
  }
}
void draw()
{
  background(0);
  stroke(255);  
  player.update();
  player.render();
  
  player1.update();
  player1.render();
    
  for(int i = 0 ; i < bullets.size() ; i ++)
  {
    Bullet b = bullets.get(i);
    b.render();
    b.move();
  }
  
  for(int i = 0 ; i < healths.size() ; i ++)
  {
    Health h = healths.get(i);
    h.render();
    h.move();
  }
  
  
  text("Bullets: " + bullets.size(), 20, 20);
  text("Framerate: " + frameRate, 20, 50);
  
}

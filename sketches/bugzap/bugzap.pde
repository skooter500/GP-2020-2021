import processing.sound.*;

void setup()
{
  size(500, 500);
  
  playerX = width / 2;
  playerY = height - 50;
  
  bugX = random(bugSize, width - bugSize);
  bugY = 50;
  file = new SoundFile(this, "Laser_Shoot15.wav");

}

SoundFile file;
// Next steps!
/*
Limit the bug to the bounds of the screen
Player shooting
Player hitting the bug
Spawn a new bug!
Print the score
Game Over when the bug hits the bottom of the screen
Game modes - splash screen, game mode and game over screen
Sounds
*/

float playerX, playerY;
float bugX, bugY;
float playerSpeed = 1;
float maxBugSpeed = 20;
float score = 0;
float playerWidth = 50;
float playerHeight = 20;
float bugSize = 50;
float halfBug = bugSize / 2;

void draw()
{
  background(0);
  
  drawPlayer();
  drawBug();
  movePlayer();
  moveBug();
  shooting();
}

void shooting()
{
  if (keyPressed && keyCode == UP)
  {
    file.play();
    if (playerX > bugX - halfBug && playerX < bugX + halfBug)
    {
      score ++;
      bugX = random(bugSize, width - bugSize);
      bugY = 50;
      line(playerX, playerY - playerHeight / 2, playerX, bugY);
    }
    else
    {
      line(playerX, playerY - playerHeight / 2, playerX, 0);
    }
  }
  
}

void movePlayer()
{
  if (keyPressed)
  {
    if (keyCode == LEFT && playerX > playerWidth / 2)
    {
      playerX -= playerSpeed;
    }
    else if (keyCode == RIGHT && playerX < width - playerWidth / 2)
    {
      playerX += playerSpeed;
    }
   
  }
}

void moveBug()
{
  if (frameCount % 30 == 0)
  {
    bugY +=20;
    bugX += random(-100, 100);
    
  }
  if (bugX < halfBug)
  {
    bugX = halfBug;
  }
  if (bugX > width - halfBug)
  {
    bugX = width - halfBug;
  }
}

void drawPlayer()
{
  noFill();
  stroke(255);
  rectMode(CENTER);
  rect(playerX, playerY, playerWidth, playerHeight);
  line(playerX, playerY - playerHeight / 2, playerX, playerY - 30);
}

void drawBug()
{
  noFill();
  stroke(255);
  
  triangle(bugX - halfBug, bugY + halfBug, bugX, bugY - halfBug, bugX + halfBug, bugY + halfBug); 
 
  line(bugX - 5, bugY - 5, bugX - 5, bugY + 5);
  line(bugX + 5, bugY - 5, bugX + 5, bugY + 5);
  line(bugX - 5, bugY + 10, bugX + 5, bugY + 10);
 
}

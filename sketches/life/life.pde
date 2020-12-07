void setup()
{
  size(500, 500);
  board[1][0] = true;
  board[1][1] = true;
  board[2][2] = true;
  board[2][5] = true;
  
  cellSize = width / (float) boardSize;
  //randomiseBoard(); 
  int c = countCells(1, 2);
  println(c);
}

int countCells(int row, int col)
{
  int count = 0;
  // 8 if statements!!
  if (row > 0 && col > 0 && board[row - 1][col -1])
  {
    count ++;
  }
  if (row > 0 && board[row -1][col])
  {
    count ++;
  }
  if (row > 0 && col < boardSize - 1 && board[row -1][col + 1])
  {
    count ++;
  }
  if (col > 0 && board[row][col -1])
  {
    count ++;
  }
  if (col < boardSize - 1 && board[row][col +1])
  {
    count ++;
  }
  if (col > 0 && row < boardSize - 1 && board[row + 1][col -1])
  {
    count ++;
  }
  if (row < boardSize -1 && board[row + 1][col])
  {
    count ++;
  }
  if (row < boardSize - 1 && col < boardSize - 1 && board[row +1][col +1])
  {
    count ++;
  }
  
  
  return count;
}

int boardSize = 100;
float cellSize;

boolean[][] board = new boolean[boardSize][boardSize];
boolean[][] nextBoard = new boolean[boardSize][boardSize];

void randomiseBoard()
{
  // Set about 50% of the board to be true and 50% false;
  // Same nested for loop!
  for(int row = 0 ; row < boardSize ; row ++)
  {
    for(int col = 0 ; col < boardSize ; col ++)
    {
      float r = random(0.0f, 1.0f); 
      if (r < 0.2f)
      {
        board[row][col] = true;
      }
      else
      {
        board[row][col] = false;
      }
    }
  }
  
}

void drawBoard()
{
  stroke(100);
  for(int row = 0 ; row < boardSize ; row ++)
  {
    for(int col = 0 ; col < boardSize ; col ++)
    {
      float x = col * cellSize;
      float y = row * cellSize;
      if (board[row][col])
      {
        fill(0, 0, 255);
      }
      else
      {
        fill(0, 0, 0);
      }
      rect(x, y, cellSize, cellSize);
    }
  }
}

void rules()
{
  // if cell is alive 2 or 3 neighbours it survives otherwise it dies
  // if cell is dead exactky 3 neighbours it comes to life
  
  for(int row = 0 ; row < boardSize ; row ++)
  {
    for(int col = 0 ; col < boardSize ; col ++)
    {
      int c = countCells(row, col);

      // if cell is alive 2 or 3 neighbours it survives otherwise it dies
      // if cell is dead exactky 3 neighbours it comes to life
      // Apply the rules to nextBoard
      // Put the if statememts here!!
      
      boolean temp[][];
      temp = board;
      board = nextBoard;
      nextBoard = temp;
    }
  }
  
}

void draw()
{
  drawBoard();
  rules();
}

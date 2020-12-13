void setup()
{
  size(1000, 1000);
  randomise();
  
  /*
  board[0][1] = true;
  board[0][2] = true;
  board[1][1] = true;
  */
  
  println(countCellsAround(0, 0));
  println(countCellsAround(2, 2));
  
  
  cellSize = width / (float) boardSize;
};
int boardSize = 100;
float cellSize; 

boolean[][] board = new boolean[boardSize][boardSize]; // rows & cols
boolean[][] nextBoard = new boolean[boardSize][boardSize]; // rows & cols

void drawBoard()
{
  for(int row = 0 ; row < boardSize ; row ++)
  {
    for(int col = 0 ; col < boardSize ; col ++)
    {
      float x = col * cellSize;
      float y = row * cellSize;
      
      if (board[row][col] == true)
      {
        fill(0, 255, 255);
      }
      else
      {
        fill(0);
      }
      rect(x, y, cellSize, cellSize);
    }
  }
}

int countCellsAround(int row, int col)
{
  int count = 0;
  
  
  if (row > 0 && col > 0 && board[row -1][col -1])
  { 
    count ++;
  }
  if (row > 0 && board[row - 1][col])
  {
    count ++;
  }
  if (row > 0 && col < boardSize - 1 && board[row -1][col + 1])
  {
    count ++;
  }
  
  if (col > 0 && board[row][col-1])
  {
    count ++;
  }
  
  if (col < boardSize - 1 && board[row][col + 1])
  {
    count ++;
  }
  
  if (col > 0 && row < boardSize -1 && board[row +1][col - 1])
  {
    count ++;
  }
  
  if (row < boardSize - 1 && board[row + 1][col])
  {
    count ++;
  }
  if (row < boardSize -1 && col < boardSize - 1 && board[row +1][col +1])
  {
    count ++;
  }  
  return count;
}



void randomise()
{
  for(int row = 0 ; row < boardSize ; row ++)
  {
    for(int col = 0 ; col < boardSize ; col ++)
    {
      if (random(0.0f, 1.0f) < 0.5f)
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

void rules()
{
  for(int row = 0 ; row < boardSize ; row ++)
  {
    for(int col = 0 ; col < boardSize ; col ++)
    {
      int count = countCellsAround(row, col);
      if (board[row][col])
      {
        if (count == 2 || count == 3)
        {
          nextBoard[row][col] = true;
        }
        else
        {
          nextBoard[row][col] = false;
        }        
      }
      else
      {
        if (count == 3)
        {
          nextBoard[row][col] = true;
        }        
        else
        {
          nextBoard[row][col] = false;
        }
      }
    }
  }
  boolean[][] temp;
  temp = board;
  board = nextBoard;
  nextBoard = temp;
  
}

void draw()
{
  background(0);
  drawBoard();
  rules();
}

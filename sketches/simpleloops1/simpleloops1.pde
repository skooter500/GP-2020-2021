void setup()
{
  size(500, 500);
  
  for (int i = 0; i <= 9 ; i ++)
  {
    println(i);
  }
  
  for(int i = 9 ; i >= 0 ; i --)
  {
    println(i);
  }
  
  for(int i = 100 ; i <= 200 ; i += 2)
  {
    println(i);
  }
  
  int sum = 0;
  for(int i = 0 ; i <= 100 ; i ++)
  {
    sum += i;
  }
  println(sum);
  
  int fact = 1;
  for(int i = 2; i <= 10 ; i ++)
  {
    fact *= i;
  }
  println(fact);
  
  for(int i = 200 ; i >= 100 ; i -= 2)
  {
    println(i);
  }
  
  int table = 6;
  for (int i = 0 ; i <= 12 ; i ++)
  {
    println(table + " * " + i + " = " + table * i);
  }
  
  int prev = 0, next = 1, sum1 = 0;
  println(prev);
  
  for (int i = 0 ; i < 20 ; i ++)
  {
    println(next);
    int temp = next;
    next = prev + next;
    prev = temp;
    
    
  }
  
  
  
  colorMode(HSB); //<>//
}

void draw()
{
  
}

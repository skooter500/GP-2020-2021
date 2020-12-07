void setup()
{
  size(500, 500);
  
  println(rainfall[8]);

  for (int i = 0 ; i < rainfall.length ; i ++)
  {
    println(rainfall[i]);
  }
  
  for (int i = rainfall.length - 1 ; i >= 0 ; i --)
  {
    println(i + " " + rainfall[i]);
  }
  colorMode(HSB);
  
  float sum = 0;
  for(int i = 0 ; i < rainfall.length ; i ++)
  {
    sum += rainfall[i];
  }
  println("total: " + sum);
  println("average: " + (sum / (float) rainfall.length));
  
  float max = 0 ;
  int maxIndex = -1;
  for(int i = 0 ; i < rainfall.length ; i ++) //<>//
  {
    if (rainfall[i] > max)
    {
      maxIndex = i;
      max = rainfall[i];
    }
  }
  println("Max: " + max + " occured in month " + months[maxIndex]);
  
  float min = 100000;
  int minIndex = -1;
  for(int i = 0 ; i < rainfall.length ; i ++)
  {
    if (rainfall[i] < min)
    {
      min = rainfall[i];
      minIndex = i;
    }
  }
  println("Min: " + min + " occured in month " + months[minIndex]);
  
  float barW = width / (float) rainfall.length;
  for (int i = 0 ; i < rainfall.length ; i ++)
  {
    fill(random(0, 255), 255, 255);
    rect(i * barW, height, barW, - rainfall[i]);
    fill(0);
    text(months[i], i * barW, height - 20);
  }
}


float[] rainfall = {45, 37, 55, 27, 38, 50, 79, 48, 104, 31, 100, 58};
float[] a = new float[12];

String[] months = {"Jan", "Feb", "March", "April", "May", "June" , "july", "August", "Sept", "Oct", "Nov", "Dec"}; 


//float[] rainfall = new float[12];

void draw()
{
  /*
  int sections = 10;
  float w = width / (float) sections;
  float cgap = 255 / (float) sections;
  noStroke();
  
  for(int i = 0 ; i < sections ; i ++)
  {
    fill(cgap * i, 255, 255);
    rect(i * w, 0, w, height);
  }
  */
}

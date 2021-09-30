int startX, startY, endX, endY, bolts, starNum;
boolean[][] stars;

void setup()
{
  starNum = 0;
  size(500,500);
  strokeWeight(5);
  color(5);
  stroke(255);
  background(25);
  startX = width/2;
  startY = 0;
  endX = width/2;
  endY = 0;
  bolts = 0;
  stars = new boolean[height][width];
  for(int i = 0; i < height; i += 10)
  {
    for(int j = 0; j < width; j += 10)
    {
      if((int) (Math.random() * 50) == 0)
      {
          stars[i][j] = true;
          ellipse(i, j, 10, 10);
          starNum += 1;
      }
    }
  }
  
}

void draw()
{
  int yellow = (int) (Math.random() * 200 + 100);
  stroke(yellow, yellow, 0, (int) (Math.random() * 100) + 155);
  while(endY < height)
  {
    endX = startX + (int) (Math.random() * 18) - 9;
    endY = startY + (int) (Math.random() * 9);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
//width - ((width/5) * 2)

void mousePressed()
{
  int[] xy = pickStar();
  startX = xy[0];
  startY = xy[1];
  endX = width/2;
  endY = 0;
}

int[] pickStar()
{
  int chose = (int) (Math.random() * starNum);
  int currStar = 0;
  for(int i = 0; i < stars.length; i ++)
  {
    for(int j = 0; j < stars[0].length; j ++)
    {
      if(stars[i][j])
      {
        currStar += 1;
      }
      if(chose == currStar)
      {
        return new int[]{i, j};
      }
    }
  }
  System.out.println("IS BAD");
  return new int[]{width/2, height/2};
}
//void sky()
//{
//  strokeWeight(5);
//  background(25);
//  color(5);
//  stroke(255);
//  background(25);
//  for(int i = 0; i < height; i += 10)
//  {
//    for(int j = 0; j < width; j += 10)
//    {
//      if(stars[i][j])
//      {
//        ellipse(i, j, 10, 10);
//      }
//    }
//  }
//}

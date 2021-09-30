int startX, startY, endX, endY, bolts, starNum;
int[] orgin = new int[]{0, 0};
boolean[][] stars;

void setup()
{
  size(500,500);
  strokeWeight(5);
  stroke(255, 0, 0);
  background(25);
  frameRate(15);
  starNum = 0;
  endY = height;
  bolts = 0;
  stars = new boolean[height][width];
  for(int i = 0; i < height; i += 10)
  {
    for(int j = 0; j < width; j += 10)
    {
      if((int) (Math.random() * 50) == 0)
      {
          stars[i][j] = true;
          fill(255, 0, 0);
          ellipse(i, j, 10, 10);
          starNum += 1;
      }
    }
  }
}

void draw()
{
  push();
  translate(orgin[0], orgin[1]);
  rotate(radians((int) (Math.random() * 360)));
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
  pop();
  orgin = pickStar();
}

void mousePressed()
{
  startX = 0;
  startY = 0;
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
//updated

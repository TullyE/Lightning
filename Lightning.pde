int startX, startY, endX, endY, bolts;
boolean[][] stars;
void setup()
{
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
      if((int) (Math.random() * 5) == 0)
      {
          stars[i][j] = true;
          ellipse(i, j, 5, 5);
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
  if(bolts > 4)
  {
    sky();
    bolts = 0;
  }

}
//width - ((width/5) * 2)

void mousePressed()
{
  startX = ((int) (Math.random() * (width - ((width/5) * 2)))) + (width/5);
  startY = 0;
  endX = width/2;
  endY = 0;
  bolts += 1;
}

void sky()
{
  strokeWeight(5);
  background(25);
  color(5);
  stroke(255);
  background(25);
  for(int i = 0; i < height; i += 10)
  {
    for(int j = 0; j < width; j += 10)
    {
      if(stars[i][j])
      {
        ellipse(i, j, 5, 5);
      }
    }
  }
}

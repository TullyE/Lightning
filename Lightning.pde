int startX, startY, endX, endY;

void setup()
{
  size(300,300);
  strokeWeight(5);
  background(50);
  startX = 0;
  startY = height/2;
  endX = 0;
  endY = 150;
}

void draw()
{
  stroke(random(255), random(255), random(255));
  while(endX < width)
  {
    endX = startX + (int) random(9);
    endY = startY + (int) random(-9, 9);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void mousePressed()
{
  startX = 0;
  startY = height/2;
  endX = 0;
  endY = 150;
}

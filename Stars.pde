class Stars extends Space
{
  float centerX,centerY;
  int size;
  color star;
  
  Stars(float centerX, float centerY, int size)
  {
    this.centerX = centerX;
    this.centerY = centerY;
    this.size = size;
    star = 255;
  }
  
  void render()
  {
      stroke(star);
      fill(star);
      ellipse(centerX,centerY,size,size);
  }
  
  void update()
  {
    
    
    if(keyPressed)
    {
      if (keyCode == LEFT)
      centerX++;
      
      if (keyCode == RIGHT)
       centerX-- ;
    }
    
    if (centerX > width)
    centerX = 0;
    
    if (centerX < 0)
    centerX = width;
  }
}
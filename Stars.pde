class Stars extends Space
{
  float centerX,centerY,distance, pdistance;
  int size;
  color star;
  
  Stars(float centerX, float centerY)
  {
    this.centerX = centerX;
    this.centerY = centerY;
    star = 255;
    pdistance = distance = width;
  }
  
  void render()
  {
    float sx = map(centerX/distance,0,1,0,width);
    float sy = map(centerY/distance,0,1,0,height);
    
    float tx = map(centerX/pdistance,0,1,0,width);
    float ty = map(centerY/pdistance,0,1,0,height);
    pdistance = distance;
    stroke(star);
    line(sx,sy,tx,ty);
  }
  
  void update()
  {
    distance -=  speed;
    
    if (distance < 2)
    {
      distance = width;
      centerX = random(-width/2,width/2);
      centerY = random(-height/2,height/2);
    } 
    
    if(keyPressed)
    {
      if (keyCode == LEFT)
      centerX++;
      
      if (keyCode == RIGHT)
       centerX--;
    }
    
    if (centerX > width)
    centerX = -width;
    
    if (centerX < -width)
    centerX = width; 
  }
  
}
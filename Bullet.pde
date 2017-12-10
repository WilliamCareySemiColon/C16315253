class Bullet
{
  float size = 1;
  float original_posx, original_posy;
  float target_posx;
  float pathwayToFinalX;
  pathWay path;
  
  float update;
  
  Bullet()
  {
    
    original_posx = 0;
    original_posy = height/6;
    pathwayToFinalX = (((mouseX-halfWidth))/ ((mouseY-halfHeight)-original_posy))*5*size;
    target_posx = original_posx - pathwayToFinalX;
    path = new pathWay();
  }
  
  void render()
  {
    path.render();
    stroke(0,255,0);
    line(original_posx,original_posy,target_posx ,original_posy-(5*size));
  }
  
  void update()
  {
    original_posy = original_posy - (5*size);
    original_posx = target_posx;
    target_posx = original_posx - pathwayToFinalX;
  }
}
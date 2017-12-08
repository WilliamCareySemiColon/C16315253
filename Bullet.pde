class Bullet
{
  float size;
  float original_posx, original_posy;
  float target_posx, target_posy;
  float bull_speed;
  float distance;
  pathWay path;
  
  float update;
  
  Bullet()
  {
    //update = up;
    target_posx = original_posx = 0;
    original_posy = width/40;
    target_posy = original_posy - 5;
    bull_speed = 10;
    distance = 100;
    path = new pathWay(original_posx,original_posy,target_posx ,target_posy);
  }
  
  void render()
  {
    path.render();
    float updatex = path.endPointX;
    float updatey =  path.endPointY;
    
    float originalx = map(original_posx/distance, 0, 1, 0, width);
    float originaly = map(original_posy/distance,0,1,0,height);
    
    float targetx = map(target_posx/distance, 0, 1, 0, width);
    float targety = map(target_posy/distance, 0, 1, 0, height);
    
    stroke(0,255,0);
    line(originalx,originaly,updatex,updatey);
  }
  
  void update()
  {
    original_posy = target_posy;
    target_posy = original_posy - 5;
    original_posx = target_posx;
    target_posx = original_posx + update;
    
  }
  
}
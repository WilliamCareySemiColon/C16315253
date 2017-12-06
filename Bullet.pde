class Bullet
{
  float size;
  float original_posx, original_posy;
  float target_posx, target_posy;
  float bull_speed;
  float distance;
  Bullet()
  {
    target_posx = target_posy = original_posx = 0;
    original_posy = height/4;
    bull_speed = 10;
    distance = 1;
  }
  
  void render()
  {
    float originalx = map(original_posx/distance, 0, 1, 0, width);
    float originaly = map(original_posy/distance,0,1,0,height);
    
    float targetx = map(target_posx/distance, 0, 1, 0, width);
    float targety = map(target_posy/distance, 0, 1, 0, height);
    
    if (keyPressed)
    {
      if (keyCode == ' ')
      {
         stroke(255,255,0);
         line(originalx,originaly,targetx,targety);
      }
    }
  }
}
class Bomb extends Bullet
{
  float target_posy;
  Bomb()
  {
    super();
    target_posy = original_posy-5;
  }
  
  
  void render()
  {
    path.render();
    stroke(0,255,0);
    fill(0,255,0);
    ellipse(original_posx,original_posy,width/40 ,height/20);
  }
  
  void update()
  {
    original_posy = target_posy;
    target_posy = original_posy-5;
    original_posx = target_posx;
    target_posx = original_posx - pathwayToFinalX;
  }
}
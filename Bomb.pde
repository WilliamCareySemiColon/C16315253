/*************************************************************************************
Class that extends from the bullet class andd used in conjunction with the bullet class
**************************************************************************************/
class Bomb extends Bullet
{
  //we need an extra variable for drawing the circles to be effective
  float target_posy;
  Bomb()
  {
    //calling the bullet class to intialise the variables we need to draw 
    super();
    target_posy = original_posy-5;
  }
  
  //drawing the bombs to the screens
  void render()
  {
    path.render();
    stroke(0,255,0);
    fill(0,255,0);
    ellipse(original_posx,original_posy,width/40 ,height/20);
  }
  
  //updating the cordinates of the circle center points
  void update()
  {
    original_posy = target_posy;
    target_posy = original_posy-5;
    original_posx = target_posx;
    target_posx = original_posx - pathwayToFinalX;
  }
}//end class Bomb
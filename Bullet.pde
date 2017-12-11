/********************************************************************************************
Class to draw the bullets to the screen based upon where the mouse is
*******************************************************************************************/

class Bullet
{
  //variables to control the programme bullets
  float original_posx, original_posy;
  float target_posx;
  float pathwayToFinalX;
  //creating an object for the use of pointer where the bullet is going
  pathWay path;
  
  //giving the variables cords to work with
  Bullet()
  {
    original_posx = 0;
    original_posy = height/6;
    //making sure ti goes in the pathway desinated by the mouse 
    pathwayToFinalX = (((mouseX-halfWidth))/ ((mouseY-halfHeight)-original_posy))*5;
    //using the variable to control the movement
    target_posx = original_posx - pathwayToFinalX;
    path = new pathWay();
  }
  
  //draw the bullets to the screen
  void render()
  {
    path.render();
    stroke(0,255,0);
    line(original_posx,original_posy,target_posx ,original_posy-(5));
  }
  
  //updating the cordinates of the bullets
  void update()
  {
    original_posy = original_posy - (5);
    original_posx = target_posx;
    target_posx = original_posx - pathwayToFinalX;
  }
}//end class bullet
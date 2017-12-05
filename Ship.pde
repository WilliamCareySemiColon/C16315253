/**************************************************************************
Drawing the outline of the ship in first person view for interaction purpose
***************************************************************************/
class Ship extends Space
{
  PShape ship;
  color shipColour;
  
  Ship(color c)
  {
    shipColour = c;
  }
  
  //deciding the coordinates of the ship
  void setShip()
  {
    stroke(shipColour);
    fill(shipColour);
    ship = createShape();
    ship.beginShape();
    //startimg at the left bottom
    ship.vertex(-width/2,height/2);
    ship.vertex(-width/2,height/2-border);
    ship.vertex(0,height/6);
    ship.vertex(width/2,(height/2)-border);
    ship.vertex(width/2,height/2); 
    //cpmplete the bottom part of the ship
    ship.vertex(-width/2,height/2);
    //move to the top area area and repeating the process
    ship.vertex(-width/2,-height/2);
    ship.vertex(width/2,-height/2);
    ship.vertex(width/2,-height/2 + border);
    ship.vertex(0,-(height/6));
    ship.vertex(-width/2,-height/2 + border);
    ship.vertex(-width/2,-height/2);
    //finish the shape
    ship.endShape(CLOSE);
  }
  
  //drawing the ship 
  void drawShip()
  {
   shape(ship,0,0);
  }
}//end class ship
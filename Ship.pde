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
    ship.vertex(-halfWidth,halfHeight);
    ship.vertex(-halfWidth,halfHeight-border);
    ship.vertex(0,halfHeight/3);
    ship.vertex(halfWidth,halfHeight-border);
    ship.vertex(halfWidth,halfHeight); 
    //cpmplete the bottom part of the ship
    ship.vertex(-halfWidth,halfHeight);
    //move to the top area area and repeating the process
    ship.vertex(-halfWidth,-halfHeight);
    ship.vertex(halfWidth,-halfHeight);
    ship.vertex(halfWidth,-halfHeight + border);
    ship.vertex(0,-halfHeight/3);
    ship.vertex(-halfWidth,-halfHeight + border);
    ship.vertex(-halfWidth,-halfHeight);
    //finish the shape
    ship.endShape(CLOSE);
  }
  
  //drawing the ship 
  void drawShip()
  {
   shape(ship,0,0);
  }
}//end class ship
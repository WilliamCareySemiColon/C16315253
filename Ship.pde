class Ship extends Space
{
  PShape ship;
  
  void setShip()
  {
    stroke(100);
    fill(100);
    ship = createShape();
    ship.beginShape();
    ship.vertex(0,height);
    ship.vertex(0,height-border);
    ship.vertex(width/2,height * 2/3);
     ship.vertex(width,height-border);
    ship.vertex(width,height); 
    ship.vertex(0,height);
    ship.vertex(0,0);
    ship.vertex(width,0);
    ship.vertex(width,border);
    ship.vertex(width/2,(height/3)-border/2);
    ship.vertex(0,border);
    ship.vertex(0,0);
    ship.endShape(CLOSE);
  }
  
  void drawShip()
  {
    shape(ship,0,0);
  }
}//end class ship
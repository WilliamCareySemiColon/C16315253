/******************************************************************************************************************************
This is a weapen system, which have a number of features to be included such as displaying seeing yourself on a map, to reading 
files and eventually to move around in space.
Features included (Original Plan):
Butons to control functions
Shooting (regular to massive to bombs)
move yourself
warp yourself
keeping track and adding to your fuel and bullets
speed
Author: William Carey
Student number: C16315253
Date Started: 21-11-2017
Date Finished: ?
******************************************************************************************************************************/
//variables to control within the programme
ArrayList<Space> spaceObjects = new ArrayList<Space>();
ArrayList<Stars> stars = new ArrayList<Stars>();
Ship ship;
void setup()
{
  size(1000,600);
  //creating the stars background
  for (int i = 0; i < 200; i++)
  {
    Space sp = new Space();
    Stars s = new Stars(random(sp.border,width-sp.border),random(sp.border,height-sp.border), (int) random(2,10));
    stars.add(s);
  }
  ship = new Ship();
  ship.setShip();
}

void draw()
{
  background(0);
  for(Stars s: stars)
  {
    stroke(s.star);
    fill(s.star);
    ellipse(s.centerX,s.centerY,s.size,s.size);
  }
  ship.drawShip();
}
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
ArrayList<Stars> stars = new ArrayList<Stars>();
Ship ship;
void setup()
{
  size(1000,600);
  Space sp = new Space();
  //creating the stars background
  for (int i = 0; i < 200; i++)
  {
    Stars s = new Stars(random(0,width),random(sp.windowBorder,height-sp.windowBorder), (int) random(2,10));
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
    s.render();
    s.update();
  }
  
  ship.drawShip();
}
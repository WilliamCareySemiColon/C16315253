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
Histogram his;
float speed, speed1;
void setup()
{
  size(1000,600);
  //Space sp = new Space();
  //creating the stars background
  for (int i = 0; i < 1000; i++)
  {
    Stars s = new Stars(random(-width/2,width/2),random(-height/2,height/2));
    stars.add(s);
  }
  //creating the ship object
  ship = new Ship();
  //setting the ship shape
  ship.setShip();
  //seeting the speed so we are not moving immediately
  speed1 = 0;
}

void draw()
{
  his = new Histogram();
  //changing the focal co-ordinates so it is focuesed in the center point instead
  translate(width/2,height/2);
  //setting the background to be black as we are in space
  background(0);
  //setting the speed value inside the draw metjod so it can be applied to all stars and easily modified
  speed = map(speed1,0,width,0,50);
  //going through the arraylist of stars to display onto the screen
  for(Stars s: stars)
  {
    s.render();
    s.update();
  }
  //changing the speed by pressing the up and down buttons and controlling it so it does not go over the limit
  changeSpeed();
  
  //drawing the outline of the ship to the screen
  ship.drawShip();
  his.drawBar();
}

/******************************************************************************************
Method to change the speed of the stars, which is controlled by the input by user
******************************************************************************************/

void changeSpeed()
{
  if (keyPressed && speed1 >= 0 && speed1 <= width)
  {
    if (keyCode == UP)
    {
        speed1 += 10;
    }
      
      if (keyCode == DOWN)
      {
        speed1 -= 10;
      }
  }
  
  if (speed1 < 0)
  speed1 = 0;
  
  if (speed1 > width)
  speed1 = width;
  
}//end change speed
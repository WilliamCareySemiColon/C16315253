/************************************************************************************
This programme will be a spaceship system. It include a number of features including
the ability to fly quickly, shoot, warp and visit different planets
************************************************************************************/
//Variables to control the flow of the game
float border, border_window_curve;
float window_set, window_set2;
float color_num;
float size_of_place, Xcordinates_of_arc1,Ycordinates_of_arc1;
float centerX, centerY, width_of_control_panel;
float extension;
void setup()
{
  size(1000,600);
  border = width/15;
  window_set = height* 2/3;
  window_set2 = height  * 3/4;
  border_window_curve = (width / 12);
  border = width/15;
  color_num = 0;
  size_of_place = width/5.5;
  Xcordinates_of_arc1 = border * 3;
  Ycordinates_of_arc1 = height - height/7.5;
  centerX = width/2;
  width_of_control_panel = height/2;
  extension = height/34;
  /*println(displayHeight + " :Height");
  println(displayWidth + " :width");*/
}

void draw()
{
  background(color_num);
  drawShip();
}

/***************************************************************************************************************************************
Drawing the outline of the system of the ship. This will include a lot of buttons and the system of the ship to be draw
***************************************************************************************************************************************/
void drawShip()
{
  //drawing the panels at the side and below window
  stroke(50);
  fill(50);
  rect(0,height  * 2/3 ,width,height/3);
  rect(0,extension * 1/10,width,height/4);
  //drawing the placeholder for the buttons
  stroke(100);
  fill(100);
  arc(Xcordinates_of_arc1,Ycordinates_of_arc1,size_of_place,size_of_place,PI + 0.4f,TWO_PI + 0.8f);
  arc(width - Xcordinates_of_arc1,Ycordinates_of_arc1,size_of_place,size_of_place,PI - 0.8f,TWO_PI - 0.4f);
  ellipse(width/2,Ycordinates_of_arc1-(width/30),width_of_control_panel,width_of_control_panel/2);
}
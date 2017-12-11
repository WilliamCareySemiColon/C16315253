/********************************************************************
Buttons to control what to do on the ship - used for more UI
********************************************************************/

class Button extends Ship
{
  //variabes to control the programme
  float topLeftCornerX,topLeftCornerY;
  String name;
  float buttonSize;
  boolean flag;
  color track;
  
  //constructor to give each button an unique feature
  Button(float x, float y, String n, color c)
  {
    super(c);
    topLeftCornerX = x;
    topLeftCornerY = y;
    name = n;
    flag = false;
    track = c;
    buttonSize = border/1.75;
  }
  
  //drawing the button to the screen
  void buttonDraw()
  {
    stroke(0);
    fill(shipColour);
    rect(topLeftCornerX,topLeftCornerY,buttonSize,buttonSize);
    if (shipColour < 255/2)
    fill(255);
    else
    fill(0);
    textSize(height/60);
    textAlign(CENTER);
    text(name,topLeftCornerX+buttonSize/2,topLeftCornerY +buttonSize/2);
  }
  
  //updateing the buttons and checking if they have been clicked
  void update()
  {
    //checking where the mouse x location and making sure it is inside the buttons location
    boolean checkX1 = (mouseX - halfWidth  > topLeftCornerX  ? true: false);
    boolean checkX2 = (mouseX - halfWidth < topLeftCornerX + buttonSize ? true: false);
    boolean checkX = checkX1 && checkX2;
    //checking where the y location
    boolean checkY1 = (mouseY - halfHeight >  topLeftCornerY ? true: false);
    boolean checkY2 = (mouseY - halfHeight <  topLeftCornerY + buttonSize ? true: false);
    boolean checkY = checkY1 && checkY2;
    
    boolean overall = checkX && checkY;
    //giving a function to each button by checking its name and changes its colour so we know it has been pressed
    if (mousePressed && overall)
    {
      shipColour = 0;
      //all the buttons functions
      switch(name)
      {
        case "Slow Down": 
          if (speed1 > 0)
          speed1 -= 10;
          break;
          
        case "Speed Up":
          if (speed1 < width)
          speed1 += 10;
          break;
          
        case "Turn Left":
        case "Turn Right":
          for(Stars s: stars)
          {
            s.buttonPressed(name);
          }
          break;
          
       case "Load Bomb":
          Bullet b = new Bomb();
          bullets.add(b);
          break;
          
       case "Load Bullet":
          b = new Bullet();
          bullets.add(b);
          break;
          
       case "Warp":
         warp.buttonPressed();
         break;
         
       case "Reset":
         warp.reset();
         break;
      }//end switch statement
    }
    //reset the button to its original colour
    else
    shipColour = track;
  }//end update()
}//end class button
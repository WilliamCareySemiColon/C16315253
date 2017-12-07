class Button extends Ship
{
  float topLeftCornerX,topLeftCornerY;
  String name;
  float buttonSize;
  boolean flag;
  color track;
  
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
  
  void update()
  {
    //checking where the mouse x location
    boolean checkX1 = (mouseX - halfWidth  > topLeftCornerX  ? true: false);
    boolean checkX2 = (mouseX - halfWidth < topLeftCornerX + buttonSize ? true: false);
    boolean checkX = checkX1 && checkX2;
    //checking where the y location
    boolean checkY1 = (mouseY - halfHeight >  topLeftCornerY ? true: false);
    boolean checkY2 = (mouseY - halfHeight <  topLeftCornerY + buttonSize ? true: false);
    boolean checkY = checkY1 && checkY2;
    
    boolean overall = checkX && checkY;
    if (mousePressed && overall)
    {
      shipColour = 0;
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
          for(Stars s: stars)
          {
            s.buttonPressed(name);
       }
          break;
          
        case "Turn Right":
          for(Stars s: stars)
          {
            s.buttonPressed(name);
          }
          break;
      }
    }
    else
    shipColour = track;
  }
}
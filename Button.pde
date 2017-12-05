class Button extends Ship
{
  float topLeftCornerX,topLeftCornerY;
  String name;
  float buttonSize = border/2;
  
  Button(float x, float y, String n, color c)
  {
    super(c);
    topLeftCornerX = x;
    topLeftCornerY = y;
    name = n;
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
    textSize(10);
    textAlign(CENTER);
    text(name,topLeftCornerX+buttonSize/2,topLeftCornerY +buttonSize/2);
  }
  
  void update()
  {
    if (mousePressed)
    {
      if ((mouseX > topLeftCornerX || mouseX < topLeftCornerX + buttonSize) && (mouseY > topLeftCornerY || mouseY < topLeftCornerY + buttonSize))
      {
        shipColour =0;
      }
      
      else
      {
        shipColour = 100;
      }
      
    }
  }
}
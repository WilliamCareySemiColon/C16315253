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
    fill((shipColour*6)%255);
    else
    fill((shipColour/6)%255);
    textSize(28);
    text(name,topLeftCornerX,topLeftCornerY +buttonSize/2);
  }
}
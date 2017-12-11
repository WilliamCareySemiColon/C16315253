class Warp
{
  color spaceBackGround =  0;
  
  
  void buttonPressed()
  {
    spaceBackGround = color(0,0,255);
    speed1 = width;
  }
  
  void reset()
  {
    spaceBackGround = color(0);
    speed1 = 0;
  }
}
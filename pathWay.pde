class pathWay extends Space
{
  ArrayList<Float> xcords = new ArrayList<Float>();
  ArrayList<Float> ycords = new ArrayList<Float>();
  
  
  float endPointX, endPointY;
  
  pathWay(float originx, float originy, float targetx, float targety)
  {
    
  }
  
  void render()
  {
    //noCursor();
    endPointX = mouseX-halfWidth;
    endPointY = mouseY-halfHeight;
    stroke(255);
    fill(255);
    ellipse(endPointX,endPointY,5,5);
  }
}
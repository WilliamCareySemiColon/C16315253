//The render of where the person is going to shoot. 

class pathWay extends Space
{ 
  float endPointX, endPointY;
  
  void render()
  {
    endPointX = mouseX-halfWidth;
    endPointY = mouseY-halfHeight;
    stroke(255);
    fill(255);
    if(endPointY > height/4 || endPointY <  -height/4)
    {
      cursor();
    }
    else
    {
      noCursor();
      line(endPointX-20,endPointY-20,endPointX-20,endPointY+20);
      line(endPointX+20,endPointY-20,endPointX+20,endPointY+20);
      line(endPointX-20,endPointY-20,endPointX+20,endPointY-20);
      line(endPointX-20,endPointY+20,endPointX+20,endPointY+20);
      ellipse(endPointX,endPointY,5,5);
    }
  }
}
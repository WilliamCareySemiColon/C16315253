class Histogram
{
  float maxsize, staticsize;
  float centerx, centery;
  
  Histogram()
  {
    centery = height/4.75;
    centerx = height/4;
  }
  
  //drawing the ship 
  void drawBar()
  {
      staticsize = map(speed,0,50,centerx + centery,centerx);
      maxsize = map(speed,0,50,0,centery);
      stroke(0);
      fill(0);
      rect(width/10,centerx,width/10, centery);
      //stroke(255,0,0);
      noStroke();
      fill(255,0,0);
      rect(width/10,staticsize,width/10, maxsize);
      
      textSize(10);
      
      int temp = (int)(maxsize * 100);
      fill(255);
      text(Integer.toString(temp)+"M/P",width/10,centerx + centery - 5);
  }
}
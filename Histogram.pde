/******************************************************************************************************
The class to give a visual aspect of the speed through the space which is also reflected by the stars
*******************************************************************************************************/
class Histogram
{
  //fields to control the histogramme
  float maxsize, staticsize;
  float centerx, centery;
  float widthOfBar;
  
  //constructor to set the position of the bar
  Histogram()
  {
    centery = height/4.75;
    centerx = height/4;
    widthOfBar = width/11;
  }
  
  //drawing the ship speed bar
  void drawBar()
  {
      //mapping the position of two variables acccording to the speed so we can adjust the bar for visual effect
      staticsize = map(speed,0,50,centerx + centery,centerx);
      maxsize = map(speed,0,50,0,centery);
      //drawing the fixed bar
      stroke(0);
      fill(0);
      rect(width/10,centerx,widthOfBar, centery);
      //drawing the adjustable bar
      noStroke();
      fill(255,0,0);
      rect(width/10,staticsize,widthOfBar, maxsize);
      //displaying the speed in text format for more visual effect
      textSize(10);
      int temp = (int)(maxsize * 10);
      fill(255);
      text(Integer.toString(temp)+"M/P",width/10,centerx + centery - 5);
  }
}
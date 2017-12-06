/***************************************************************************************
The stars in the background. as you go faster and faster, they would appear as lines.
****************************************************************************************/
class Stars extends Space
{
  //variables to control thed stars location
  float centerX,centerY,distance, pdistance;
  color star;
  
  //The constructor to intialise each star location
  Stars(float centerX, float centerY)
  {
    this.centerX = centerX;
    this.centerY = centerY;
    star = 255;
    pdistance = distance = width;
  }
  
  //The method to display each star to the user
  void render()
  {
    //gettig the current loction
    float sx = map(centerX/distance,0,1,0,width);
    float sy = map(centerY/distance,0,1,0,height);
    //gettig the previous loction
    float tx = map(centerX/pdistance,0,1,0,width);
    float ty = map(centerY/pdistance,0,1,0,height);
    //updating the preious distance location
    pdistance = distance;
    //drawing the stars now
    stroke(star);
    strokeWeight(2);
    line(sx,sy,tx,ty);
  }
  
  //metod to update the stars
  void update()
  {
    //using speed as a way to control how fast you are going
    distance -=  speed;
    
    //to ensure we are never deviding by zero in the render() method
    //also making the stars reappear
    if (distance < 2)
    {
      distance = width;
      centerX = random(-width/2,width/2);
      centerY = random(-height/2,height/2);
    } 
    
    //Allow us to move the stars and wrap them around the screen, giving us a feel of turing the ship
    if(keyPressed)
    {
      if (keyCode == LEFT)
      centerX++;
      
      if (keyCode == RIGHT)
       centerX--;
    }
    
    if (centerX > width/2)
    centerX = -width/2;
    
    if (centerX < -width/2)
    centerX = width/2; 
  }
  
  
  void buttonPressed(String name)
  {
    if(name == "Turn Left")
    {
      centerX++;
    }
    if(name == "Turn Right")
    {
      centerX--;
    }
    if (centerX > width/2)
    centerX = -width/2;
    
    if (centerX < -width/2)
    centerX = width/2; 
  }
}
class Spaceship extends Floater  
{   
  double ro = (Math.random()*12)-6;
     public void hyperspace (){
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*400);
    myCenterY = (int)(Math.random()*400);
    f.turn(ro);
  }
  public void pause (){
    myXspeed = 0;
    myYspeed = 0;
  }
    Spaceship () {
    corners= 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;
    myColor = (#FFFFFF);
    myCenterX  = 200;
    myCenterY = 200;
    myXspeed = 0;
    myYspeed = 0;
  }
  public void setX(int x){myCenterX = x;}
  public int getX(){return (int)myCenterX;}
  public void setY(int y){myCenterY = y;}   
  public int getY(){return (int)myCenterY;}

}

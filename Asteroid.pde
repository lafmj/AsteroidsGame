class Asteroids extends Floater {
  private double rotSpeed;
  Asteroids()
  {
    corners = 8;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -22;
    yCorners[0] = 10;
    xCorners[1] = -16;
    yCorners[1] = 20;
    xCorners[2] = -6;
    yCorners[2] = 16;
    xCorners[3] = 8;
    yCorners[3] = 20;
    xCorners[4] = 26;
    yCorners[4] = 2;
    xCorners[5] = 8;
    yCorners[5] = -6;
    xCorners[6] = 10;
    yCorners[6] = -20;
    xCorners[7] = -14;
    yCorners[7] = -14;
    myColor = (#D1D1D1);
    myCenterX = (Math.random()*width);
    myCenterY = (Math.random()*height);
    myPointDirection = (Math.random()*360);
    myXspeed = myYspeed = (int)(Math.random()*2)+1;
    rotSpeed = (int)(Math.random()*5)+1;
  }
  public void move() {
    turn(rotSpeed);
    super.move();
   
  }
  public void setX(int x){myCenterX = x;}
  public int getX(){return (int)myCenterX;}
  public void setY(int y){myCenterY = y;}   
  public int getY(){return (int)myCenterY;}

}

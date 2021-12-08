class Asteroids extends Floater {
  private double rotSpeed;
  Asteroids()
  {
    corners = 8;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -20;
    yCorners[0] = 12;
    xCorners[1] = -14;
    yCorners[1] = 18;
    xCorners[2] = -4;
    yCorners[2] = 18;
    xCorners[3] = 10;
    yCorners[3] = 22;
    xCorners[4] = 28;
    yCorners[4] = 4;
    xCorners[5] = 10;
    yCorners[5] = -4;
    xCorners[6] = 12;
    yCorners[6] = -18;
    xCorners[7] = -12;
    yCorners[7] = -12;
    myColor = (#90A4AE);
    myCenterX = (Math.random()*width);
    myCenterY = (Math.random()*height);
    myPointDirection = (Math.random()*360);
    myXspeed = myYspeed = (int)(Math.random()*2)+1;
    rotSpeed = (int)(Math.random()*5)+1;
  }
  public void setX(int x){myCenterX = x;}
  public int getX(){return (int)myCenterX;}
  public void setY(int y){myCenterY = y;}  
  public int getY(){return (int)myCenterY;}
  public void move() {
    turn(rotSpeed);
    super.move();
  }
}

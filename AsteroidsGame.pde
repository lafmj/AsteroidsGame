Star [] s;
Spaceship f;
ArrayList <Asteroids> a = new ArrayList <Asteroids>();

public void setup()
{
  size (400, 400);
  background (0);
  s = new Star [100];
  for (int i = 0; i <s.length; i++) {
    s[i] = new Star();
  }
  for (int i = 0; i < 22; i ++)
    a.add(new Asteroids());
  f =  new Spaceship();
}
public void draw()
{
  background (0);
  for (int i = 0; i <s.length; i++) {
    s[i].show();
  }
  for (int i = 0; i < a.size(); i ++)
  {
    a.get(i).show();
    a.get(i).move();
    float d = dist(f.getX(), f.getY(), a.get(i).getX(), a.get(i).getY());
    if (d < 10)
      a.remove(i);
  }
   f.show();
   f.move();
}

public void keyPressed() {
  if (key == 'a'|| key == 'A') {
    f.turn(-6);
  }
  if (key == 'd'|| key == 'D') {
    f.turn(6);
  }
  if (key == 'w'|| key== 'W') {
    f.accelerate(0.6);
  }
  if (key == 's'|| key == 'S') {
    f.accelerate(-0.6);
  }
  if (key == ' ') {
    f.pause();
  }
  if (key == 'h' || key == 'H') {
    f.hyperspace();
  }
}

}

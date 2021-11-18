Star [] s;
Spaceship f;
public void setup() 
{
  size (400, 400);
  background (0);
  s = new Star [100];
  for (int i = 0; i <s.length; i++) {
    s[i] = new Star();
  }
  f = new Spaceship();
}
public void draw() 
{
  background (0);
  for (int i = 0; i <s.length; i++) {
    s[i].show();
  }
  if (keyPressed) {
    if (key == 'a'|| key == 'A') {
      f.turn(-6);
    }
    if (key == 'f'|| key== 'F') {
      f.accelerate(0.6);
    }
    if (key == 'b'|| key == 'B') {
      f.accelerate(-0.6);
    }
    if (key == 'h' || key == 'H'){
    f.hyperspace();
    }
    
  }
  f.show();
  f.move();
}

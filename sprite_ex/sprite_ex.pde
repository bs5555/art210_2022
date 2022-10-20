int count = 0;
Sprite s;
void setup()
{
  size(800,600);
  s = new Sprite(50,150,120,200);
  s.velocity.x=2;
  String[] files = {"zombie1.svg","zombie2.svg"};
  s.ani = new Animation(files);
  s.ani.speed = 10;
}

void draw()
{
  background(255);
  translate(width/2,height/2);
  s.update();
  s.check();
  s.display();
}

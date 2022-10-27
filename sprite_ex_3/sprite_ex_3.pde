int count = 0;
Sprite s;
Sprite g1;
Sprite g2;
Sprite g3;

void setup()
{
  size(1200,800);
  fullScreen();
  s = new Zombie(50,150,120,200);
  String[] files = {"zombie1.svg","zombie2.svg"};
  s.addAnimation(new Animation(files));
  String[] files1 = {"zombie1a.svg","zombie2a.svg"};
  s.addAnimation(new Animation(files1));
  String[] files2 = {"zombieup.svg"};
  s.addAnimation(new Animation(files2));
  String[] files3 = {"zombiefall1.svg","zombiefall2.svg"};
  s.addAnimation(new Animation(files3));
  s.currentAni=0;
  
  g1 = new Ground(0,0,1000,300);
  g1.location.x = -width/2;
  String[] files4 = {"ground1.svg"};
  g1.addAnimation(new Animation(files4));
  
  g2 = new Ground(0,0,1000,300);
  g2.location.x = (-width/2)+1000;
  g2.addAnimation(new Animation(files4));
  
  g3 = new Ground(0,0,1000,300);
  g3.location.x = (-width/2)+2000;
  g3.addAnimation(new Animation(files4));
}

void draw()
{
  background(255);
  translate(width/2,height/2);
  
  g1.update();
  g1.check();
  g1.display();
  
  g2.update();
  g2.check();
  g2.display();
  
  g3.update();
  g3.check();
  g3.display();
  
  s.update();
  s.check();
  s.display();
  
}

void keyPressed()
{
  s.jump();
}

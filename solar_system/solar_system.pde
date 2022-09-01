float _angle = 0;

void setup()
{
  size(800,600);
}

void draw()
{
  clearScreen();
  translate(width/2,height/2);
  scale(0.5);
  
  aCircle(0,0,200,255,255,255);
  
  pushMatrix();
    rotate(radians(_angle));
    translate(250,0);
    aCircle(0,0,100,0,100,255);
    pushMatrix();
      rotate(radians(_angle/2));
      translate(150,0);
      aCircle(0,0,20,255,200,0);
    popMatrix();
    rotate(radians(_angle/3));
    translate(150,0);
    aCircle(0,0,30,55,200,50);
  popMatrix();
  
  pushMatrix();
    rotate(radians(_angle/2));
    translate(150,0);
    aCircle(0,0,50,255,100,0);
  popMatrix();
  
  pushMatrix();
    rotate(radians(_angle/-2));
    translate(400,0);
    aCircle(0,0,150,255,80,0);
  popMatrix();
  
  _angle = _angle + 1;
}

void aCircle(float x, float y, float d,int red, int green, int blue)
{
  noStroke();
  fill(color(red,green,blue,50));
  circle(x,y,d);
}

void clearScreen()
{
  noStroke();
  fill(color(0,0,0,6));
  rect(0,0,width,height);
}

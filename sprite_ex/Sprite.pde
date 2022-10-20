class Sprite
{
  Animation ani;
  PVector location = new PVector(0,0);
  PVector velocity = new PVector(0,0);
  PVector reg = new PVector(0,0);
  float boxx = 10;
  float boxy = 30;
  
  Sprite(float xreg, float yreg, float bx, float by)
  {
    this.reg.x=xreg;
    this.reg.y=yreg;
    this.boxx = bx;
    this.boxy = by;
  }
  
  void update()
  {
    this.location.add(this.velocity);
  }
  
  void display()
  {
    pushMatrix();
      translate(this.location.x,this.location.y);
      noStroke();
      fill(0,200,255);
      circle(0,0,10);
      translate(-this.reg.x,-this.reg.y);
      fill(color(0,100,250,20));
      rect(0,0,boxx,boxy);
      if(this.ani != null) ani.display();
    popMatrix();
    
  }
  
  void check()
  {
    if(this.location.x > (width/2)+this.reg.x) 
    this.location.x = -(width/2)-this.reg.x;
  }
  
}

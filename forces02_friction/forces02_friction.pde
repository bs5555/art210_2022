int nMover  = 20;
Mover[] m = new Mover[nMover];


void setup()
{
  size(800,600);
  for(int i=0; i<nMover; i=i+1)
  {  
    m[i] = new Mover();
    m[i].mass=random(0.5,3);
  }  
}

void draw()
{
  background(255);
  
  PVector wind = new PVector(0.02,0);
  for(int i=0; i<nMover; i=i+1)
  { 
    float c = 0.01;
    PVector friction = m[i].velocity.get();
    friction.mult(-1);
    friction.normalize();
    friction.mult(c);
   
    
    PVector gravity = new PVector(0,0.7*m[i].mass);
    m[i].applyForce(friction);
    m[i].applyForce(gravity);
    m[i].applyForce(wind);
    m[i].update();
    m[i].checkEdges();
    m[i].display();
  }  
}

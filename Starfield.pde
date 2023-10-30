int particles = (int)((Math.random()*400)+200);
Particle[] atom = new Particle [particles];
PImage connor;

void setup()
{
  frameRate(70);
  size(500, 500);
  connor = loadImage("UFO.png");
  for (int i = 0; i < atom.length; i++)
  {
    atom[i] = new Particle();
    for (int x = 0; x < 10; x++)
  {
    atom[x] = new OddballParticle();
  }
  }
  
}
void draw()
{
  background(0);
  for (int i = 0; i < atom.length; i++)
  {
    atom[i].move();
    atom[i].show();
  }
}

 void mousePressed()
 {
   for(int i = 0; i < atom.length; i++)
  {
    atom[i].repeat();
  }
 }
 
class Particle
{
  double myX, myY, Speed, Angle;
  int Color;

  Particle ()
  {
    Color = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myX = 250;
    myY = 250;
    Angle = Math.random()*2*PI;
    Speed = Math.random()*8;
  }
  void move() {
    myX = myX + Math.cos(Angle) * Speed;
    myY = myY + Math.sin(Angle) * Speed;
  }
  void show() {
    fill(Color);
    stroke(Color);
    ellipse((float)myX,(float)myY,5,5);
  }
  void repeat()
   {
     myX = 250;
     myY = 250;
   }
}

class OddballParticle extends Particle
{
  OddballParticle()
  {
    Speed = Math.random()*3;
    myX=250;
    myY=250;
  }
   void move()
   {
     myX = myX + Math.cos(Angle) * Speed;
     myY = myY + Math.sin(Angle) * Speed;
   }
   
  void show()
   {
    image(connor,(float)myX,(float)myY,(float)150,(float)150);
   } 
  void repeat()
   {
     myX = (int)((Math.random()*5)+250);
     myY = (int)((Math.random()*5)+250);
   }
}




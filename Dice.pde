void setup()
{
  noLoop();
  size (500, 500);
  background(237,237,146);
}
void draw()
{
  for (int y = 0; y<=500; y+=50)
  {
    for (int x = 0; x<=500; x+=50)
    {
      Die Jas = new Die (x,y);
      Jas.show();
    }
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, num;//variable declarations here
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    num = (int)(Math.random()*6)+1;//variable initializations here
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    fill((int)(Math.random()*255+1),(int)(Math.random()*255+1),(int)(Math.random()*255)+1);
    rect(myX,myY,30,30,10);//your code here
    fill(0);
    if (num==1)
    {
      ellipse (myX+15,myY+15,5,5);
    }
    if (num==2)
    {
      ellipse (myX+10,myY+20,5,5);
      ellipse (myX+20,myY+10,5,5);
    }
    if( num==3)
    {
      ellipse (myX+5,myY+25,5,5);
      ellipse (myX+15,myY+15,5,5);
      ellipse (myX+25,myY+5,5,5);
    }
    if (num==4)
    {
      ellipse (myX+6,myY+6,5,5);
      ellipse (myX+24,myY+24,5,5);
      ellipse (myX+6,myY+24,5,5);
      ellipse (myX+24,myY+6,5,5);
    }
    if (num==5)
    {
      ellipse (myX+6,myY+6,5,5);
      ellipse (myX+24,myY+24,5,5);
      ellipse (myX+6,myY+24,5,5);
      ellipse (myX+24,myY+6,5,5);
      ellipse (myX+15,myY+15,5,5);
    }
    if (num==6)
    {
      ellipse (myX+6,myY+6,5,5);
      ellipse (myX+24,myY+24,5,5);
      ellipse (myX+6,myY+24,5,5);
      ellipse (myX+24,myY+6,5,5);
      ellipse (myX+6,myY+15,5,5);
      ellipse (myX+24,myY+15,5,5);
    }
  }
}

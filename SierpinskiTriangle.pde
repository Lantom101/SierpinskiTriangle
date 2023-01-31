int i = 400;
public void setup()
{
  size(700, 500);
  background(0);
}
public void draw()
{
  background(0);
  fill(255);
  sierpinski(0,500,i);
}

public void sierpinski(int x, int y, int len) 
{
  if (len <= 20) {
      triangle(x, y, x + len, y, x + len/2, y - len);
    } else {
      sierpinski(x,y,len/2);
      sierpinski(x+len/2,y,len/2);
      sierpinski(x+len/4,y-len/2,len/2);
    }
}

public void mouseDragged(){
  i-=2;
}

public void mouseMoved(){
  i+=2;
}

public void setup()
{
size(1000,1000);
}
public void draw()
{
background(255,255,255);  
sierpinski(mouseX-mouseY,mouseY,mouseX+mouseY+250);
}
public void sierpinski(int x, int y, int len) 
{
  if(len < 20)
    triangle(x, y, x + len, y, x + len/2, y - len);
  else{
    fill(255, 0, 0);
    sierpinski(x, y, len/2);
    fill(0, 255, 0);
    sierpinski(x + len/2, y, len/2);
    fill(0, 0, 255);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}

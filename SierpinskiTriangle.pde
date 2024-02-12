
public void setup()
{
  size(1200,1000);
  background(0);
  strokeWeight(1);
  noFill();
  sierpinski(500,500,400);

}
public void draw()
{  
  
}
public void mouseClicked()//optional
{
  int x = 0;
  int y = 0;
  int a = (int)(Math.random()*1000);
  int b = (int)(Math.random()*1000);
  if(b%2 == 0){
    x = b;
  }
  if(a%2 == 0){
    y = a;
  }  
  sierpinski(x,y,400);
}



public void sierpinski(int x, int y, int len) 
{  
  
  triangle(x,y-len/2, x-len/2, y+len/2, x+len/2, y+len/2);
  if(len >=2){
      noFill();
      stroke(255);
      strokeWeight(0.1);
    sierpinski(x-len/4,y+len/4,len/2);
    sierpinski(x+len/4,y+len/4,len/2);
    sierpinski(x,y-len/4,len/2);
  }

}

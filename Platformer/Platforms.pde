public class Platforms {
  float x,y,sizeX,sizeY,xSpeed,ySpeed;
  color rgb;
  boolean move;
  
  public Platforms(float xpos, float ypos, float w, float h, color c) {
    x = xpos;
    y = ypos;
    sizeX = w;
    sizeY = h;
    rgb = c;
    move = false;
    xSpeed = 0;
    ySpeed = 0;
  }
  
  public void display() {
    fill(rgb);
    noStroke();
    rect(x,y,sizeX,sizeY);
  }
}

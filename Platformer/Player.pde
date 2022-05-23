public class Player {
  float x,y,size,xSpeed,ySpeed,points;
  color rgb;
  boolean onGround, alive;
  
  public Player(float xpos, float ypos, color col) {
    x = xpos;
    y = ypos;
    xSpeed = 1;
    ySpeed = 1;
    points = 0;
    rgb = col;
    onGround = true;
    alive = true;
    size = 25;
  }
  
  public void display() {
    fill(rgb);
    noStroke();
    rect(x,y,size,size);
  }
}

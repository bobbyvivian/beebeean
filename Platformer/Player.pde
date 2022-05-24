public class Player {
  float x,y,size,xSpeed,ySpeed,points;
  color rgb;
  boolean onGround, alive, left, right, up;
  
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
    left = false;
    right = false;
  }
  
  public void display() {
    fill(rgb);
    noStroke();
    rect(x,y,size,size);
  }
  
  public void move() {
    if (right) {
      x+=xSpeed;
    }
    else if (left) {
      y+=ySpeed;
    }
    //not moving
    else {
    }
    
    if (up) {
    }
  }
}

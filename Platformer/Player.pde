public class Player {
  boolean alive, onGround;
  float x, y, size, xSpeed, ySpeed;
  color col;
  
  public Player(int size, color c) {
    this.size = size;
    x =  (width*.9);
    y =  (height*.9);
    col = c;
    alive = true;
    onGround = true;
    xSpeed  = 1;
    ySpeed = 3;
  }
  
  void display() {
    fill(col);
    rect(x,y,size,size);
  }
  
  void jump() {
    if (onGround) {
        y-=ySpeed;
    }
    else {
      ySpeed+=.15;
      y+=ySpeed;
    }
  }
  
  
}

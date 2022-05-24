public class Player {
  float x, y, xSpeed, ySpeed, points, gravity;
  color rgb;
  boolean onGround, alive, left, right, up;

  public Player(float xpos, float ypos, color col) {
    x = xpos;
    y = ypos;
    xSpeed = 2;
    ySpeed = 0;
    gravity = .25;
    points = 0;
    rgb = col;
    onGround = true;
    alive = true;
    left = false;
    right = false;
    up = false;
  }

  public void display() {
    fill(rgb);
    noStroke();
    rect(x, y, playerSize, playerSize);
  }

  public void move() {
    if (right) {
      // borders
      if (x+xSpeed+playerSize < width) {
        x+=xSpeed;
      }
    }
    if (left) {
      if (x-xSpeed > 0) {
        x-=xSpeed;
      }
    }

    // jump
    if (up) {
      if (ySpeed > 0) {
        if (y-ySpeed>0) {
          y-=ySpeed;
        }
        ySpeed-=gravity;
      }

      if (ySpeed <= 0 && !onGround) {
        if (y+ySpeed<height) {
          y+=ySpeed;
        }        
        ySpeed+=gravity;
      }
    }
  }


  public void onGround() {
    onGround = false;
    for (Platforms p : platforms) {
      if (y+playerSize==p.y) {
        onGround = true;
      }
    }
  }
}

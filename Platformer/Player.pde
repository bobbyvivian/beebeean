public class Player {
  float x, y, xSpeed, ySpeed, points, gravity;
  color rgb;
  boolean onGround, alive, left, right, up, hitUp;

  public Player(float xpos, float ypos, color col) {
    x = xpos;
    y = ypos;
    xSpeed = 2;
    ySpeed = 1;
    gravity = 1;
    points = 0;
    rgb = col;
    onGround = true;
    hitUp = false;
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
    onGround();
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
    if (onGround) {
      ySpeed = 1;
    }
    if (!onGround) {
        if (y+ySpeed<750) {
          y+=ySpeed;
          ySpeed+=gravity;
        }   
    }
    if (up) {
        if (y-ySpeed>0) {
          y-=ySpeed;
          ySpeed-=gravity;
      }
    }
    //if (ySpeed <= 1 && !onGround) {
    //    if (y+ySpeed<height) {
    //      y+=ySpeed;
    //    }        
    //    ySpeed+=gravity;
    //}    
    if (hitUp) {
        if (y+ySpeed<750) {
          y+=ySpeed;
          ySpeed+=gravity;
        }           
    }    
  }


  public void onGround() {
    onGround = false;
    hitUp = false;
    for (Platforms p : platforms) {
      if (y+playerSize==p.y && x<=p.x+p.sizeX && x+playerSize>=p.x) {
        onGround = true;
      }
      if (y+playerSize>p.y&&y+playerSize<p.y+p.sizeY&&x<=p.x+p.sizeX && x+playerSize>=p.x) {
        onGround = true;
      }
      //if (x+playerSize>=p.x && x<=p.x+p.sizeX && y<=p.y+p.sizeY && y+playerSize>=p.y){
      //  hitBound = true;
      //}
      if ((y<=p.y+p.sizeY && y>=p.y && x<=p.x+p.sizeX && x+playerSize>=p.x)) {
        hitUp = true;
      }
    }
  }
  
}

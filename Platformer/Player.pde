public class Player {
  float x, y, xSpeed, ySpeed, points, gravity;
  color rgb;
  boolean onGround, alive, left, right, up, hitUp, jump;
  int countdown;

  public Player(float xpos, float ypos, color col) {
    x = xpos;
    y = ypos;
    xSpeed = 2;
    ySpeed = 2;
    gravity = .5;
    points = 0;
    rgb = col;
    onGround = true;
    hitUp = false;
    alive = true;
    left = false;
    right = false;
    up = false;
    countdown = 0;
    jump = false;
  }

  public void display() {
    fill(rgb);
    noStroke();
    rect(x, y, playerSize, playerSize);
  }

  public void move() {
    onGround();
    
    if (countdown>0) {
      jump = true;
    }
    else {
      jump = false;
    }
    
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

    if (onGround) {
      ySpeed = 2;
      gravity = 1;
    }
    //falling
    if (!onGround) {
        if (y+ySpeed<750) {
          y+=ySpeed;
          ySpeed+=gravity;
        }   
    }
    // initiation of jumping (button is pressed)
    if (up) {
      if (player.countdown==0) {
        player.countdown+=120;
      }      
    }
    // actually jumping
    if (jump) {
        if (countdown >= 60) {
          if (y-ySpeed>0) {
            if (ySpeed<0) {
              y+=ySpeed;
            }
            else {
              y-=ySpeed;
            }
            ySpeed-=gravity;          
          }                
        }
      if(countdown > 0){
        countdown --;
      }
    }
 


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

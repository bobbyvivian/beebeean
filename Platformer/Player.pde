public class Player {
  float x, y, xSpeed, ySpeed, points, gravity, acceleration;
  color rgb;
  boolean onGround, alive, left, right, up, hitUp, jump;
  int countdown;

  public Player(float xpos, float ypos, color col) {
    x = xpos;
    y = ypos;
    xSpeed = 2;
    ySpeed = 0;
    gravity = .5;
    acceleration = 0;
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
    
    if (countdown>30) {
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
    
    // jump
    if (!onGround) {
      acceleration = 0.2;
    }
    else {
      ySpeed = 0;
      acceleration = 0;
    }
    
    if (up&&onGround) {
      if (player.countdown==0) {
        player.countdown+=60;
      }      
    }    
    if (jump) {
      acceleration = -0.2;
    }
    if (hitUp) {
      acceleration = 0.2;
    } 
    
    ySpeed += acceleration;
    y+=ySpeed;
    
    if(countdown > 0){
      countdown --;
    }   
      
   
    //if (onGround) {
    //  ySpeed = 2;
    //  gravity = 1;
    //}
    ////falling
    //if (!onGround) {
    //    if (y+ySpeed<750) {
    //      ySpeed = Math.abs(ySpeed);
    //      y+=ySpeed;
    //      ySpeed+=gravity;
    //    }   
    //}
    //// initiation of jumping (button is pressed)
    //if (up) {
    //  if (player.countdown==0) {
    //    player.countdown+=120;
    //  }      
    //}
    //// actually jumping
    //if (jump) {
    //    if (countdown >= 60) {
    //      ySpeed = Math.abs(ySpeed)*-1;
    //      if (y+ySpeed>0&&y+ySpeed<750) {
    //          y+=ySpeed;
    //          ySpeed+=gravity;
            
    //      }                
    //    }
      //if(countdown > 0){
      //  countdown --;
      //}
    //}   
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

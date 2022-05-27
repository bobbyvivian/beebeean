public class Player {
  float x, y, xSpeed, ySpeed, points, acceleration;
  color rgb;
  boolean onGround, alive, left, right, up, hitUp, jump, win;
  int countdown;

  public Player(float xpos, float ypos, color col) {
    x = xpos;
    y = ypos;
    xSpeed = 2;
    ySpeed = 0;
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
    win = false;
  }

  public void display(boolean a) {
    if (a) {
      fill(rgb);
      noStroke();
      rect(x, y, playerSize, playerSize);
    }
  }

  public void move() {
    onGround();
    //check to see if player dead
    player.dead();    
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
      ySpeed += acceleration;
      y+=ySpeed;            
    }
    else {
      ySpeed += acceleration;
      
      // make sure it doesn't fall in ground
      int pInd = fallInGround(y+ySpeed+playerSize); 
      if (pInd==-1) {
        y+=ySpeed;
      }
      else {
        y = platforms.get(pInd).y - playerSize;
      }
      
      if(countdown > 0){
        countdown --;
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
      if ((y+ySpeed<=p.y+p.sizeY && y+ySpeed>=p.y && x<=p.x+p.sizeX && x+playerSize>=p.x)) {
        hitUp = true;
      }
    }
  }
  
  public int fallInGround(float ypos) {
    Platforms p;
    for (int i = 0; i<platforms.size(); i++) {
      p = platforms.get(i);
      if (ypos>p.y&&ypos<p.y+p.sizeY&&x<=p.x+p.sizeX && x+playerSize>=p.x) {
        return i;
      }
    }
    return -1;
  }
  
  public void dead() {
    for (Spikes s : spikes) {
      //coming from right
      if (y+playerSize<=s.y+50&&y+playerSize>=s.y&&x+playerSize>=s.x&&x+playerSize<=s.x+90) {
        alive = false;        
      }
      if (y<=s.y+50&&y>=s.y&&x+playerSize>=s.x&&x+playerSize<=s.x+90) {
        alive = false;        
      }     
      //coming from left
      if (y+playerSize<=s.y+50&&y+playerSize>=s.y&&x>=s.x&&x<=s.x+90) {
        alive = false;        
      }
      if (y<=s.y+50&&y>=s.y&&x>=s.x&&x<=s.x+90) {
        alive = false;        
      }      
    }
  }
  
  public void win() {
    //coming from right
    if (y<=door.y+door.sizeY&&y>=door.y&&x<=door.x+door.sizeX&&x>=door.x) {
      win = true;
    }
  }
  
}

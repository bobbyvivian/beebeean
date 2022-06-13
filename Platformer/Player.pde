public class Player {
  float x, y, xSpeed, ySpeed, acceleration;
  color rgb;
  boolean onGround, alive, left, right, up, jump, win, allBerries;
  int countdown, points, level;

  public Player(float xpos, float ypos, color col) {
    x = xpos;
    y = ypos;
    xSpeed = 2;
    ySpeed = -8;
    acceleration = 0.2;
    points = 0;
    rgb = col;
    onGround = true;
    alive = false;
    left = false;
    right = false;
    up = false;
    countdown = 0;
    jump = false;
    win = false;
    allBerries = false;
    level = 1;
  }

  public void display() {
    if (alive) {
      fill(rgb);
      noStroke();
      rect(x, y, playerSize, playerSize);
    }
    else {
      x = 0;
      y = height;
    }
  }

  public void move() {
    int indMP = onGround();
    //check to see if player dead
    player.dead();    
    //check to see if player won
    player.win();
    //check to see if player got a strawberry
    int indB = player.getPoint();
    if (indB!=-1) {
      strawberries.get(indB).display = false;
    }
    
    int indP = hitUp(x+xSpeed);
    int hitWall = hitWall(x+xSpeed);
    if (indP!=-1&&hitWall!=-1) {
      hitWall = -1;
    }
    
    if (right) {
      xSpeed=abs(xSpeed);  
      if (x+xSpeed>=0 && x+xSpeed <=width-playerSize && hitWall==-1) {
        x+=xSpeed;
      }
    }
    if (left) {
      xSpeed=abs(xSpeed)*-1;  
      if (x+xSpeed>=0 && x+xSpeed <=width-playerSize && hitWall==-1) {
        x+=xSpeed;
      }
    }
   
    
    if (indMP!=-1) {
      Platforms p = platforms.get(indMP);              
      if (p.move) {
        p = (MovePlat)p;
        hitWall = hitWall(x+p.xSpeed);
        if (indP!=-1&&hitWall!=-1) {
          hitWall = -1;
        }         
        if (x+p.xSpeed>=0&&x+p.xSpeed<=width-playerSize&&hitWall==-1) {
          x+=p.xSpeed;
        }
      }
    }
    
    // jump
    if (!onGround) {
      acceleration = 0.2;
    }
    else {
      if (!up) {
        ySpeed = 0;
        acceleration = 0;
      }
      up=false;
    }
    
    
    if (indP>-1&&hitWall==-1) {
      y = platforms.get(indP).y+ platforms.get(indP).sizeY;
      ySpeed = .5;
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
    }
    
  }


  public int onGround() {
    onGround = false;
    Platforms p;        
    for (int i = 0; i<platforms.size(); i++) {
      p = platforms.get(i);          
      if (y+playerSize==p.y && x<p.x+p.sizeX && x+playerSize>p.x) {
        onGround = true;
        return i;
      }
      if (y+playerSize>p.y&&y+playerSize<p.y+p.sizeY&&x<p.x+p.sizeX && x+playerSize>p.x) {
        onGround = true;
        return i;
      }
    }
    return -1;
  }
  
  public int hitUp(float xPos) {
    Platforms p;    
    for (int i = 0; i<platforms.size(); i++) {
      p = platforms.get(i);    
      if ((y+ySpeed<p.y+p.sizeY && y+ySpeed>p.y && xPos<p.x+p.sizeX && xPos+playerSize>p.x)) {
        return i;
      }  
    }
    return -1;
  }
  
  public int fallInGround(float ypos) {
    Platforms p;
    for (int i = 0; i<platforms.size(); i++) {
      p = platforms.get(i);
      if (ypos>p.y&&ypos<p.y+p.sizeY&&x<p.x+p.sizeX && x+playerSize>p.x) {
        return i;
      }
    }
    return -1;
  }

  public int hitWall(float xPos) {
    Platforms p;
    for (int i = 0; i<platforms.size(); i++) {
      p = platforms.get(i);
      if (xPos>=p.x&&xPos<=p.x+p.sizeX && ((y+playerSize>p.y&&y+playerSize<p.y+p.sizeY) || (y<p.y+p.sizeY&&y>p.y))) {
        return i;
      }
      if (xPos+playerSize>=p.x&&xPos+playerSize<=p.x+p.sizeX&& ((y+playerSize>p.y&&y+playerSize<p.y+p.sizeY) || (y<p.y+p.sizeY&&y>p.y))) {
        return i;
      }      
    }
    return -1;    
  }
  
  public void dead() {
    for (Spikes s : spikes) {
      //coming from right
      if (!s.wall) {
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
      else {
        if (y+playerSize<=s.y+50&&y+playerSize>=s.y&&x+playerSize>=s.x&&x+playerSize<=s.x+16) {
          alive = false;        
        }
        if (y<=s.y+50&&y>=s.y&&x+playerSize>=s.x&&x+playerSize<=s.x+16) {
          alive = false;        
        }     
        //coming from left
        if (y+playerSize<=s.y+50&&y+playerSize>=s.y&&x>=s.x&&x<=s.x+16) {
          alive = false;        
        }
        if (y<=s.y+50&&y>=s.y&&x>=s.x&&x<=s.x+16) {
          alive = false; 
        }
      }
    }
  }
  
  public void win() {
    //coming from right
    if (y<=door.y+door.sizeY&&y>=door.y&&x<=door.x+door.sizeX&&x>=door.x) {
      if (points==strawberries.size()) {
        allBerries = true;
      }      
      win = true;
    }
    //coming from left
    if (y<=door.y+door.sizeY&&y>=door.y&&x+playerSize>=door.x&&x+playerSize<=door.x+door.sizeX) {
      if (points==strawberries.size()) {
        allBerries = true;
      }        
      win = true;
    } 
    //coming from right and up
    if (y+playerSize<=door.y+door.sizeY&&y+playerSize>=door.y&&x<=door.x+door.sizeX&&x>=door.x) {
      if (points==strawberries.size()) {
        allBerries = true;
      }        
      win = true;
    }
    //coming from left and up
    if (y+playerSize<=door.y+door.sizeY&&y+playerSize>=door.y&&x+playerSize>=door.x&&x+playerSize<=door.x+door.sizeX) {
      if (points==strawberries.size()) {
        allBerries = true;
      }        
      win = true;
    }
  }
  
  public int getPoint() {
      Strawberries s;
      for (int i = 0; i<strawberries.size(); i++) {
        s = strawberries.get(i);       
        if (s.display) {
          //coming from right      
          if (y+playerSize<=s.y+30&&y+playerSize>=s.y&&x+playerSize>=s.x&&x+playerSize<=s.x+80) {
            points++;        
            return i;
          }
          if (y<=s.y+30&&y>=s.y&&x+playerSize>=s.x&&x+playerSize<=s.x+80) {
            points++;               
            return i;
          }     
          //coming from left
          if (y+playerSize<=s.y+30&&y+playerSize>=s.y&&x>=s.x&&x<=s.x+80) {
            points++;               
            return i;
          }
          if (y<=s.y+30&&y>=s.y&&x>=s.x&&x<=s.x+80) {
            points++;               
            return i;
          }      
        }
    }
    return -1;
  }
  
  public void retry() {
    x = playerSize;
    y = 750-playerSize;
    xSpeed = 2;
    ySpeed = 0;
    acceleration = 0;
    points = 0;
    alive = true;
    allBerries = false;
    jump = false;
    win = false; 
    for (int i = 0; i<strawberries.size(); i++) {
      strawberries.get(i).display = true;
    }
  }
  
  public void winCheat() {
    if (level>=1&&level<=8||level==7||level==8) {
      x = door.x + 100;
    }
    else if (level==5) {
      x = door.x - 100;
    }
    else if (level==6) {
      x = door.x - playerSize-10;
    }
    y = door.y+100-playerSize;
  }  
  
  public void berryCheat() {
    winCheat();
    if (!allBerries) {
      for (int i = 0; i<strawberries.size(); i++) {
        strawberries.get(i).display = false;
        points++;
      }
    }
  }
}

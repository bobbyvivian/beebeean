public class WallSpike extends MoveSpike {  
  boolean left;
  public WallSpike(float xPos, float yPos, float d, boolean l) {
    super(xPos,yPos,true,d);
    //original position
    super.oX = xPos;
    super.oY = yPos;
    super.xSpeed = 2;
    super.ySpeed = 1;
    super.vertical = false;
    super.displace = d;
    super.wall = true;
    left = l;
  }
  public void display() {
    fill(super.rgb);
    noStroke();    
    if (left) {
      triangle(x,y,x+16,y,x+16,y+16);
      triangle(x,y+25,x+16,y+16,x+16,y+34);
      triangle(x,y+50,x+16,y+34,x+16,y+50);  
    }
    else {
      triangle(x,y,x-16,y,x-16,y+16);
      triangle(x,y+25,x-16,y+16,x-16,y+34);
      triangle(x,y+50,x-16,y+34,x-16,y+50);       
    }
    move();
  }
  public void move() {
    if (vertical) {
      if (y+ySpeed>=oY&&y+ySpeed<=oY+displace) {
        y+=ySpeed;
      }
      else {
        ySpeed*=-1;
      }
    }
    else {
      if (x+xSpeed>=oX&&x+xSpeed<=oX+displace) {
        x+=xSpeed;
      }
      else {
        xSpeed*=-1;
      }
    }
  }
  
}

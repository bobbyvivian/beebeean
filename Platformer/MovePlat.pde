public class MovePlat extends Platforms{
  float displace,oX,oY;
  boolean vertical;
  
  public MovePlat(float xPos, float yPos, float w, float h, color c, boolean v, float d) {
    super(xPos,yPos,w,h,c);
    //original position
    oX = xPos;
    oY = yPos;
    xSpeed = 2;
    ySpeed = 1;
    vertical = v;
    displace = d;
    move = true;
  }
  public void display() {
    super.display();
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

public class MoveSpike extends Spikes{
  float xSpeed,ySpeed,displace,oX,oY;
  boolean vertical;
  
  public MoveSpike(float xPos, float yPos, boolean v, float d) {
    super(xPos,yPos);
    //original position
    oX = xPos;
    oY = yPos;
    xSpeed = 2;
    ySpeed = 1;
    vertical = v;
    displace = d;
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

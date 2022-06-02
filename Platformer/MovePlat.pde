public class MovePlat extends Platforms{
  float xSpeed,ySpeed,displace;
  boolean vertical;
  
  public MovePlat(float xPos, float yPos, float w, float h, color c, boolean v, float d) {
    super(xPos,yPos,w,h,c);
    vertical = v;
    displace = d;

  }
  public void move() {
    if (vertical) {
      y+=ySpeed;
    }
    else {
      x+=xSpeed;
    }
  }
  
}

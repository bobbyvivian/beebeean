public class MovePlat extends Platforms{
  float xSpeed,ySpeed;
  public MovePlat(float xPos, float yPos, float w, float h, color c) {
    super(xPos,yPos,w,h,c);
  }
  public void move() {
    x+=xSpeed;
    y+=ySpeed;
  }
  
}

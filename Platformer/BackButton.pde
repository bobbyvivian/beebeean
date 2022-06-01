public class BackButton {
  boolean clicked;
  float x,y,size;
  
  public BackButton() {
    clicked = false;
    size = 30;    
    x = 10;
    y = 10;
  }
  public void display() {
    fill(206, 190, 230);
    square(x,y,size);
    
    fill(113, 105, 140);
    rect(x+size/4,y+size/3,size/2,size/4);
    //triangle();
    
  }
  public boolean clicked(float xPos, float yPos) {
    if (xPos>=x&&xPos<=x+size&&yPos>=y&&yPos<=y+size) {
      clicked = true;
      return true;
    }
    clicked = false;
    return false;
  }
}

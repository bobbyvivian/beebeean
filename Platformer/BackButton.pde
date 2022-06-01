public class BackButton {
  boolean clicked;
  float x,y,size;
  
  public BackButton() {
    clicked = false;
    x = width-20;
    y = 20;
    size = 20;
  }
  public void display() {
    fill(206, 190, 230);
    square(x,y,size);
    
    fill(113, 105, 140);
    rect(x+size/4,y+size/2,size/2,size/4);
    //triangle();
    
  }
  public void clicked(float xPos, float yPos) {
    if (xPos>=x&&xPos<=x+size&&yPos>=y&&yPos<=y+size) {
      clicked = true;
    }
  }
}

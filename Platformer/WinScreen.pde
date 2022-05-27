public class WinScreen {
  public void display() {
    PImage img = loadImage("clouds.png");
    image(img, 0 , 0);
    fill(71, 51, 82);
    textSize(128);
    text("VICTORY", 215, height/2);     
  }
}

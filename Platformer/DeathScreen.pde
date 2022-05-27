public class DeathScreen {
  public void display() {
    PImage img = loadImage("death.jpg");
    image(img, 0 , 0);
    fill(232, 233, 252);
    textSize(128);
    text("DIED", 350, height/2+50);     
  }
}

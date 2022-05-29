public class StartScreen {
  public void display() {
    PImage img = loadImage("start.png");
    img.resize(1000,800);
    image(img, 0 , 0);
    fill(#FFCBF6);
    rect(250, 250, 500, 200);
    fill(255);
    textSize(128);
    text("START", 300, height/2);     
  }
}

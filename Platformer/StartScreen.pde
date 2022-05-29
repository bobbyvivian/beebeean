public class StartScreen {
  boolean buttonClicked;
  float x,y;
  
  public StartScreen() {
    buttonClicked = false;
    x = width/2-200;
    y = height/2-100;
  }
  
  public void display() {
    PImage img = loadImage("start.png");
    image(img, 0 , 0);    
    
    noStroke();
    fill(255, 215, 201);
    rect(x,y,400,200);
    
    
  }
  
  public void mouseClicked() {
    if (!buttonClicked) {
      if (mouseX>x&&mouseX<x+400&&mouseY>y&&mouseY<y+200) {
        buttonClicked = true;
      }
    }
  }
}

public class StartScreen {
  boolean clicked;
  float x,y;
  
  public StartScreen() {
    clicked = false;
    x = width/2-200;
    y = height/2-100;
  }
  
  public void display() {
    PImage img = loadImage("start.png");
    img.resize(1136, 800);    
    image(img, -100 , 0);    
    
    
  } 
}

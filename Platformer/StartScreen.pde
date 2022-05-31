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
    fill(128, 50, 63);
    textSize(40);
    text("click to start game!", width/2-170, 100);
    
    fill(250, 185, 185);
    rect(100,300,150,100);
    fill(128, 50, 63);    
    textSize(40);
    text("level 1", 115, 350);    
  } 
}

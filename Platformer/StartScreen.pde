public class StartScreen {
  boolean buttonClicked;
  
  public void display() {
    PImage img = loadImage("start.png");
    image(img, 0 , 0);    
    
    noStroke();
    fill(255, 215, 201);
    rect(width/2-200,height/2-100,400,200);
    
    
  }
  
  public void mouseClicked() {
    if (mouseX>x&&mouseX<x+400&&mouseY>y&&mouseY<y+200) {
      
    }
  }
}

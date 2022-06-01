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
    text("click level to start game!", width/2-240, 100);
    
    //level 1 button
    fill(250, 185, 185);
    rect(100,300,150,100);
    fill(128, 50, 63);    
    textSize(40);
    text("level 1", 115, 350);   
    
    //level 2 button    
    fill(250, 185, 185);
    rect(width/2-75,300,150,100);
    fill(128, 50, 63);    
    textSize(40);
    text("level 2", width/2-60, 350); 
    
    //level 3 button    
    fill(250, 185, 185);
    rect(width-250,300,150,100);
    fill(128, 50, 63);    
    textSize(40);
    text("level 3", width-250+15, 350);     
  } 
}

public class WinScreen {
  public void display() {
    PImage img;    
    if (player.allBerries) {
      background(255,240,243);
      img = loadImage("berries.gif");
      img.resize(width+170,750);
      image(img, -90 , 0); 
      fill(176, 53, 98);     
      textSize(40);
      text("collected all berries!", width/2-200, 50);        
    }
    else { 
      img = loadImage("clouds.png");
      image(img, 0 , 0);      
    }
    
    textSize(128);
    text("VICTORY", 215, height/2+50);     
    
    textSize(40);
    text("click to retry!", width/2-125, height-40);         
  }
}

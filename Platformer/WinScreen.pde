public class WinScreen {
  public void display() {
    PImage img;    
    if (player.allBerries) {
      img = loadImage("berries.png");
      
    }
    else { 
      img = loadImage("clouds.png");
    }
    
    image(img, 0 , 0);
    fill(110, 75, 115);
    textSize(128);
    text("VICTORY", 215, height/2+50);     
    
    textSize(40);
    text("click to retry!", width/2-125, 500);         
  }
}

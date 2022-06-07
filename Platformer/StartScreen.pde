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
    rect(100,200,150,100);
    fill(128, 50, 63);    
    textSize(40);
    text("level 1", 115, 250);   
    
    //level 2 button    
    fill(250, 185, 185);
    rect(width/2-75,200,150,100);
    fill(128, 50, 63);    
    textSize(40);
    text("level 2", width/2-60, 250); 
    
    //level 3 button    
    fill(250, 185, 185);
    rect(width-250,200,150,100);
    fill(128, 50, 63);    
    textSize(40);
    text("level 3", width-250+15, 250);  
    
    //level 4 button
    fill(250, 185, 185);
    rect(100,400,150,100);
    fill(128, 50, 63);    
    textSize(40);
    text("level 4", 115, 450);      

    //level 5 button
    fill(250, 185, 185);
    rect(width/2-75,400,150,100);
    fill(128, 50, 63);    
    textSize(40);
    text("level 5", width/2-60, 450);   

    //level 6 button
    fill(250, 185, 185);
    rect(width-250,400,150,100);
    fill(128, 50, 63);    
    textSize(40);
    text("level 6", width-235, 450);   
    
    //level 7 button
    fill(250, 185, 185);
    rect(100,600,150,100);
    fill(128, 50, 63);    
    textSize(40);
    text("level 7", 115, 650);    
  } 
  
  public int whichLevel(float xPos, float yPos) {
    //level 1
    if (xPos>=100&&xPos<=250&&yPos>=200&&yPos<=300) {
      player.retry();      
      return 1;
    }
    //level 2
    if (xPos>=width/2-75&&xPos<=width/2+75&&yPos>=200&&yPos<=300) {
      player.retry();            
      return 2;
    } 
    //level 3
    if (xPos>=width-250&&xPos<=width-100&&yPos>=200&&yPos<=300) {
      player.retry();            
      return 3;
    }  
    //level 4
    if (xPos>=100&&xPos<=250&&yPos>=400&&yPos<=500) {
      player.retry();            
      return 4;
    }   
    //level 5
    if (xPos>=width/2-75&&xPos<=width/2+75&&yPos>=400&&yPos<=500) {
      player.retry();            
      return 5;
    }  
    //level 6
    if (xPos>=width-250&&xPos<=width-100&&yPos>=400&&yPos<=500) {
      player.retry();            
      return 6;
    }
    //level 7
    if (xPos>=100&&xPos<250&&yPos>=600&&yPos<=700) {
      player.retry();            
      return 7;
    }  
    
    return -1;
  }
}

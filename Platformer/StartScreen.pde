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
    
    //level 4 button
    fill(250, 185, 185);
    rect(100,500,150,100);
    fill(128, 50, 63);    
    textSize(40);
    text("level 4", 115, 550);      

    //level 5 button
    fill(250, 185, 185);
    rect(width/2-75,500,150,100);
    fill(128, 50, 63);    
    textSize(40);
    text("level 5", width/2-60, 550);   

    //level 6 button
    fill(250, 185, 185);
    rect(width-250,500,150,100);
    fill(128, 50, 63);    
    textSize(40);
    text("level 6", width-235, 550);       
  } 
  
  public int whichLevel(float xPos, float yPos) {
    //level 1
    if (xPos>=100&&xPos<=250&&yPos>=300&&yPos<=400) {
      player.retry();      
      return 1;
    }
    //level 2
    if (xPos>=width/2-75&&xPos<=width/2+75&&yPos>=300&&yPos<=400) {
      player.retry();            
      return 2;
    } 
    //level 3
    if (xPos>=width-250&&xPos<=width-100&&yPos>=300&&yPos<=400) {
      player.retry();            
      return 3;
    }  
    //level 4
    if (xPos>=100&&xPos<=250&&yPos>=500&&yPos<=600) {
      player.retry();            
      return 4;
    }   
    //level 5
    if (xPos>=width/2-75&&xPos<=width/2+75&&yPos>=500&&yPos<=600) {
      player.retry();            
      return 5;
    }  
    //level 6
    if (xPos>=width-250&&xPos<=width-100&&yPos>=500&&yPos<=600) {
      player.retry();            
      return 6;
    }      
    return -1;
  }
}

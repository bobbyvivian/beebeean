public class Spikes {
  float x,y,sizeX,sizeY;
  color rgb;
  
  public Spikes(float xpos, float ypos, float w, float h) {
    x = xpos;
    y = ypos;
    sizeX = w;
    sizeY = h;
    rgb = color(205, 191, 222);
  }
  
  public void display() {
    fill(rgb);
    noStroke();
    triangle(x+15,y,x,y+50,x+30,y+50);
    triangle(x+45,y,x+30,y+50,x+60,y+50);
    triangle(x+75,y,x+60,y+50,x+90,y+50);
    
  }  
}

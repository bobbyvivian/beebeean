public class Platforms {
  float x,y,sizeX,sizeY;
  color rgb;
  
  public Platforms(color c, float xpos, float ypos, float w, float h) {
    x = xpos;
    y = ypos;
    sizeX = w;
    sizeY = h;
    rgb = c;
  }
  
  public void display() {
    fill(rgb);
    noStroke();
    rect(x,y,sizeX,sizeY);
  }
}

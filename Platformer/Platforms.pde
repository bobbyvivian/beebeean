public class Platforms {
  float x,y,sizeX,sizeY;
  color rgb;
  
  public Platforms(float xpos, float ypos, float w, float h, color c) {
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

public class Door {
  float x, y, sizeX, sizeY;
  color rgb;
  
  public Door(float xpos, float ypos, float w, float h, color c) {
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
    fill(93, 32, 97);
    circle(x+sizeX/4,y+sizeY/2,sizeX/4);
  }
}

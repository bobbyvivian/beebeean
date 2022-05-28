public class Strawberries {
  float x,y;
  color rgb;
  boolean display;
  
  public Strawberries(float xpos, float ypos, boolean d) {
    x = xpos;
    y = ypos;
    rgb = color(239, 122, 133);
    display = d;
  }
  
  public void display() {
    if (display) {
      fill(rgb);
      noStroke();
      triangle(x,y,x+20,y+30,x+40,y);
      ellipse(x+20,y,40,14);
    }
  } 
}

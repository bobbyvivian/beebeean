public class Strawberries {
  float x,y;
  color rgb;
  
  public Strawberries(float xpos, float ypos) {
    x = xpos;
    y = ypos;
    rgb = color(224, 103, 121);
  }
  
  public void display() {
    fill(rgb);
    noStroke();
    triangle(x,y,x+15,y+30,x+30,y);
    ellipse(x+15,y,30,14);
  } 
}

public class Strawberries {
  float x,y;
  color rgb;
  boolean display;
  
  public Strawberries(float xpos, float ypos) {
    x = xpos;
    y = ypos;
    rgb = color(239, 122, 133);
    display = true;
  }
  
  public void display() {
    if (display) {
      // leaves
      fill(153, 207, 191);
      triangle(x+20,y-18,x+14,y-5,x+26,y-5);
      triangle(x+10,y-15,x+6,y-5,x+14,y-5);
      triangle(x+30,y-15,x+34,y-5,x+26,y-5);      
      fill(rgb);
      noStroke();
      triangle(x,y,x+20,y+30,x+40,y);
      ellipse(x+20,y,40,14);
    }
  } 
}

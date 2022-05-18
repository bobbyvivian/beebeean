public class Player {
  boolean alive, onGround;
  int x, y, size;
  color col;
  
  public Player(int size, color c) {
    this.size = size;
    x = int (width*.9);
    y = int (height*.9);
    col = c;
  }
  
  void display() {
    fill(col);
    rect(x,y,size,size);
  }
  
  
}

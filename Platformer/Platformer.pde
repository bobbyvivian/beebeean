ArrayList<Platforms> platforms;
Player player;

void setup() {
        size(1000, 800);
        platforms = new ArrayList<Platforms>();
        
        player = new Player(width/2,height/2,color(random(255),random(255),random(255)));
}

void draw() {
        background(242, 225, 252);
        for (Platforms p : platforms) {
          p.display();
        }
        player.display();
        player.move();
}

void keyPressed() {
  switch (keyCode) {
    case RIGHT:
      player.right = true;
    case LEFT:
      player.left = true;
    case UP:
      player.up = true;
   }
}

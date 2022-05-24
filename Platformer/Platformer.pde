ArrayList<Platforms> platforms;
Player player;
float playerSize;

void setup() {
        size(1000, 800);
        platforms = new ArrayList<Platforms>();
        playerSize = 25;
        player = new Player(playerSize/2,750-playerSize/2,color(random(255),random(255),random(255)));
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

void keyReleased() {
    switch (keyCode) {
    case RIGHT:
      player.right = false;
    case LEFT:
      player.left = false;
    case UP:
      player.up = false;
   }
}

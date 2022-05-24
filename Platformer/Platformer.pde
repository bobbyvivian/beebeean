ArrayList<Platforms> platforms;
Player player;
float playerSize;

void setup() {
  size(1000, 800);
  platforms = new ArrayList<Platforms>();
  playerSize = 35;
  player = new Player(playerSize,750-playerSize,color(random(255),random(255),random(255)));

  //creating all the platforms in list
  Platforms plat1 = new Platforms(0, 750, 1000, 75, color(random(255), random(255), random(255))); // ground  
  platforms.add(plat1);
  
  Platforms plat2 = new Platforms(0, 600, 400, 75, color(random(255), random(255), random(255)));
  platforms.add(plat2);
} 

void draw() {
        background(242, 225, 252);
        
        //display platforms
        for (Platforms p : platforms) {
          p.display();
        }
        
        // display and move player
        player.display();
        player.move();
        
        //testing purposes, display status of onGround
        if (player.onGround) {text("TRUE",20,20);}
        else {text("FALSE",20,20);}
        text(player.x,20,40);
        text(player.y,20,60);
        text(platforms.get(0).y,20,80);
        
        
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

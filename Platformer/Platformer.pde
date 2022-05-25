ArrayList<Platforms> platforms;
ArrayList<Spikes> spikes;
Player player;
float playerSize;

void setup() {
  size(1000, 800);
  platforms = new ArrayList<Platforms>();
  spikes = new ArrayList<Spikes>();
  playerSize = 25;
  player = new Player(playerSize, 750-playerSize, color(random(255), random(255), random(255)));

  //creating all the platforms in list

  Platforms plat1 = new Platforms(0, 750, 1000, 50, color(random(255), random(255), random(255))); // ground  
  platforms.add(plat1);

  Platforms plat2 = new Platforms(0, 600, 400, 50, color(random(255), random(255), random(255))); //second
  platforms.add(plat2);

  Platforms plat3 = new Platforms(550, 600, 800, 50, color(random(255), random(255), random(255))); //second
  platforms.add(plat3);

  Platforms plat4 = new Platforms(0, 450, 700, 50, color(random(255), random(255), random(255))); //third
  platforms.add(plat4);

  Platforms plat5 = new Platforms(850, 450, 200, 50, color(random(255), random(255), random(255))); //third
  platforms.add(plat5);

  Platforms plat6 = new Platforms(150, 300, 900, 50, color(random(255), random(255), random(255))); //fourth
  platforms.add(plat6);
  
  Platforms plat7 = new Platforms(0, 150, 300, 50, color(random(255), random(255), random(255))); //fifth
  platforms.add(plat7);

  //Platforms plat8 = new Platforms(450, 150, 300, 50, color(random(255), random(255), random(255))); //fifth
  //platforms.add(plat8);
  
  //Platforms plat9 = new Platforms(900, 150, 300, 50, color(random(255), random(255), random(255))); //fifth
  //platforms.add(plat9); 
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
  if (player.onGround) {
    text("TRUE", 20, 20);
  } else {
    text("FALSE", 20, 20);
  }
  text(player.x, 20, 40);
  text(player.y, 20, 60);
  text(platforms.get(0).y, 20, 80);
}

void keyPressed() {
  switch (keyCode) {
  case RIGHT:
    player.right = true;
    break;
  case LEFT:
    player.left = true;
    break;
  case UP:
    player.up = true;
  }
}

void keyReleased() {
  switch (keyCode) {
  case RIGHT:
    player.right = false;
    break;
  case LEFT:
    player.left = false;
    break;
  case UP:
    player.up = false;
  }
}

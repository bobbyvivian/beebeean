ArrayList<Platforms> platforms;
ArrayList<Spikes> spikes;
ArrayList<Strawberries> strawberries;

Player player;
float playerSize;
Door door;
WinScreen winscreen;
DeathScreen deathscreen;

void setup() {
  size(1000, 800);
  platforms = new ArrayList<Platforms>();
  spikes = new ArrayList<Spikes>();
  strawberries = new ArrayList<Strawberries>();  
  playerSize = 30;
  player = new Player(playerSize, 750-playerSize, color(random(255), random(255), random(255)));
  winscreen = new WinScreen();
  deathscreen = new DeathScreen();
  
  //creating all the platforms in list
  Platforms plat1 = new Platforms(0, 750, 1000, 50, color(random(255), random(255), random(255))); // ground  
  platforms.add(plat1);
  
  Platforms plat2 = new Platforms(0, 600, 400, 50, color(random(255), random(255), random(255))); //second
  platforms.add(plat2);
  
  Platforms plat3 = new Platforms(600, 600, 800, 50, color(random(255), random(255), random(255))); //second
  platforms.add(plat3);
  
  Platforms plat4 = new Platforms(150, 450, 600, 50, color(random(255), random(255), random(255))); //third
  platforms.add(plat4);
  
  Platforms plat5 = new Platforms(850, 450, 200, 50, color(random(255), random(255), random(255))); //third
  platforms.add(plat5);
  
  Platforms plat6 = new Platforms(150, 300, 400, 50, color(random(255), random(255), random(255))); //fourth
  platforms.add(plat6);
  
  Platforms plat7 = new Platforms(0, 150, 280, 50, color(random(255), random(255), random(255))); //fifth
  platforms.add(plat7);
  
  Platforms plat8 = new Platforms(450, 150, 300, 50, color(random(255), random(255), random(255))); //fifth
  platforms.add(plat8);
    
  Platforms plat9 = new Platforms(900, 150, 300, 50, color(random(255), random(255), random(255))); //fifth
  platforms.add(plat9); 
  
  Spikes spike1 = new Spikes(width/2-50,700);
  spikes.add(spike1);

  Spikes spike2 = new Spikes(10,550);
  spikes.add(spike2);
  
  Spikes spike3 = new Spikes(width-200,550);
  spikes.add(spike3);
  
  Spikes spike4 = new Spikes(width/2-200,250);
  spikes.add(spike4);  
  
  Spikes spike5 = new Spikes(width-400,400);
  spikes.add(spike5);  
  
  Spikes spike6 = new Spikes(width-100,400);
  spikes.add(spike6);
  
  Strawberries berry1 = new Strawberries(width/2+100,710,true);
  strawberries.add(berry1);    
  
  door = new Door(0, 50, 75, 100, color(143, 92, 84)); 
} 

void draw() {
  background(242, 225, 252);

  //display platforms
  for (Platforms p : platforms) {
    p.display();
  }
  
  //display spikes
  for (Spikes s : spikes) {
    s.display();
  }
  
  //display strawberries
  for (Strawberries b : strawberries) {
    b.display();
  }  

  // display and move player
  player.display();
  player.move();
  
  //display door
  door.display();

  // if player wins, will display victory screen
  if (player.win) {
    winscreen.display();
  }
  if (!player.alive) {
    deathscreen.display();
  }
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

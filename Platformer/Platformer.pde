ArrayList<Platforms> platforms;
ArrayList<Spikes> spikes;
ArrayList<Strawberries> strawberries;

Player player;
float playerSize;
Door door;
WinScreen winscreen;
DeathScreen deathscreen;
StartScreen startscreen;
Level1 level1;
Level2 level2;
Level3 level3;

import processing.sound.*;
SoundFile audio;

void setup() {
  size(1000, 800);
  platforms = new ArrayList<Platforms>();
  spikes = new ArrayList<Spikes>();
  strawberries = new ArrayList<Strawberries>();  
  playerSize = 30;
  player = new Player(playerSize, 750-playerSize, color(104, 19, 150));
  startscreen = new StartScreen();
  winscreen = new WinScreen();
  deathscreen = new DeathScreen();
  startscreen = new StartScreen();
  level1 = new Level1();
  level2 = new Level2();
  level3 = new Level3();  


  audio = new SoundFile(this, "bbkk.wav");
  //audio.loop();
} 

void draw() {
  background(242, 225, 252);

  int l = player.level;
  if (l==1) {
    platforms = level1.platforms1;
    spikes = level1.spikes1;
    strawberries = level1.strawberries1;
    door = level1.door1;
  }
  if (l==2) {
    platforms = level2.platforms2;
    spikes = level2.spikes2;
    strawberries = level2.strawberries2;
    door = level2.door2;
  }
  if (l==3) {
    platforms = level3.platforms3;
    spikes = level3.spikes3;
    strawberries = level3.strawberries3;
    door = level3.door3;
  }

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
  if (startscreen.clicked) {  
    player.move();
  }

  //display door
  door.display();

  textSize(24);
  text("POINTS: "+player.points, width-125, 30);
  text("LEVEL: "+player.level, width-125, 50);     


  //DONT PUT ANYTHING BELOW THIS
  // if player wins, will display victory screen
  if (player.win) {
    winscreen.display();
  }
  if (!player.alive) {
    deathscreen.display();
  }
  if (!startscreen.clicked) {
    startscreen.display();
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

public void mouseClicked() {
  if (!startscreen.clicked) {
    int l = startscreen.whichLevel(mouseX, mouseY);
    if (l!=-1) {
      startscreen.clicked = true;
      if (l==1) {
        player.level = 1;
      }
      if (l==2) {
        player.level = 2;
      }
      if (l==3) {
        player.level = 3;
      }
    }
  }

  if (!player.alive) {
    player.retry(playerSize, 750-playerSize);
  }
  if (player.win) {
    player.retry(playerSize, 750-playerSize);
  }
}

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
Level4 level4;
Level5 level5;
Level6 level6;
Level7 level7;
Level8 level8;
BackButton back;

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
  level4 = new Level4();
  level5 = new Level5();
  level6 = new Level6();
  level7 = new Level7();
  level8 = new Level8();  
  back = new BackButton();


  audio = new SoundFile(this, "bbkk.wav");
  audio.loop();
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
  if (l==4) {
    platforms = level4.platforms4;
    spikes = level4.spikes4;
    strawberries = level4.strawberries4;
    door = level4.door4;
  }
  if (l==5) {
    platforms = level5.platforms5;
    spikes = level5.spikes5;
    strawberries = level5.strawberries5;
    door = level5.door5;
  }   
  if (l==6) {
    platforms = level6.platforms6;
    spikes = level6.spikes6;
    strawberries = level6.strawberries6;
    door = level6.door6;
  }   
  if (l==7) {
    platforms = level7.platforms7;
    spikes = level7.spikes7;
    strawberries = level7.strawberries7;
    door = level7.door7;
  }   
  if (l==8) {
    platforms = level8.platforms8;
    spikes = level8.spikes8;
    strawberries = level8.strawberries8;
    door = level8.door8;
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
  text("LEVEL: "+player.level, width-125, 55);     


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
  else {
    back.display();
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
  //make jump function, if jump true, nothing happens, landing makes it false, if jump false change yspeed
    if (player.onGround) {
      player.ySpeed = -8;
      player.acceleration = 0.2;
      player.up = true;
    }
    break;
  case 'v':
  case 'V':
    player.winCheat();
    break;
  case 's':
  case'S':
    player.berryCheat();
    break;
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
      if (l==4) {
        player.level = 4;
      }      
      if (l==5) {
        player.level = 5;
      }  
      if (l==6) {
        player.level = 6;
      } 
      if (l==7) {
        player.level = 7;
      }    
      if (l==8) {
        player.level = 8;
      }       
    }
  }

  if (!player.alive) {
    player.retry();
  }
  if (player.win) {
    player.retry();
  }
  if (back.clicked(mouseX,mouseY)) {
    startscreen.clicked = false;
  }
}

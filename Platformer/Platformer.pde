ArrayList<Platforms> platforms;
Player player;

void setup() {
<<<<<<< HEAD
  size(1000, 800);
  platforms = new ArrayList<Platforms>();

  // random platforms, testing purposes, will revamp later
  Platforms plat1 = new Platforms(0, 750, 1000, 75, color(random(255), random(255), random(255))); // ground  
  platforms.add(plat1);
  
  Platforms plat2 = new Platforms(0, 600, 400, 75, color(random(255), random(255), random(255)));
  platforms.add(plat2);
} 

void draw() {
  background(242, 225, 252);
  for (Platforms p : platforms) {
    p.display();
  }
=======
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
>>>>>>> c14d21c9699bcd1862a927cc64be7f63c6df6beb
}

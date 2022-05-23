ArrayList<Platforms> platforms;

void setup() {
  size(1000, 800);
  platforms = new ArrayList<Platforms>();

  // random platforms, testing purposes, will revamp later
  Platforms plat1 = new Platforms(0, 750, 1000, 75, color(random(255), random(255), random(255))); // ground
  platforms.add(plat1);
} 

void draw() {
  background(242, 225, 252);
  for (Platforms p : platforms) {
    p.display();
  }
}

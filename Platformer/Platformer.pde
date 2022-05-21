ArrayList<Platforms> platforms;

void setup() {
        size(1000, 800);
        platforms = new ArrayList<Platforms>();
        
        // random platforms, testing purposes, will revamp later
        for (int i = 0;i<10;i++) {
          Platforms temp = new Platforms(random(width),random(height),random(200),random(100),color(random(255), random(255), random(255)));
          platforms.add(temp);
        }
}

void draw() {
        background(242, 225, 252);
        for (Platforms p : platforms) {
          p.display();
        }
}

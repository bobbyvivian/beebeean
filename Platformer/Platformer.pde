ArrayList<Platforms> platforms;
Player player;

void setup() {
        size(1000, 800);
        platforms = new ArrayList<Platforms>();
        
        player = new Player(width/2,height/2,color(random(255),random(255),random(255)));
        player.up = true;
}

void draw() {
        background(242, 225, 252);
        for (Platforms p : platforms) {
          p.display();
        }
        player.display();
        player.move();
}

ArrayList<Platforms> platforms;

void setup() {
        size(1000, 800);
        platforms = new ArrayList<Platforms>();
        

}

void draw() {
        background(242, 225, 252);
        for (Platforms p : platforms) {
          p.display();
        }
}

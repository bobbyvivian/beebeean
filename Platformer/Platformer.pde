Platforms test1;
void setup() {
        size(1000, 800);
        // testing Platforms
        test1 = new Platforms(width/2,height/2,100,40,color(random(255), random(255), random(255)));
}

void draw() {
        background(242, 225, 252);
        test1.display();
}

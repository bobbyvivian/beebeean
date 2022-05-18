      Player player1;
      
      void setup() {
        size(1000, 800);
        player1 = new Player(25,0);
      }
      void draw() {
        background(242, 225, 252);
        player1.display();
      }
      
      void keyPressed() {
        if (key==UP) {
          player1.jump();
        }
      }
      

public class Level8 {
  ArrayList<Platforms> platforms8 = new ArrayList<Platforms>();
  ArrayList<Spikes> spikes8 = new ArrayList<Spikes>();
  ArrayList<Strawberries> strawberries8 = new ArrayList<Strawberries>();
  Door door8 = new Door(450, 50, 75, 100);

  public Level8() {
    Platforms plat1 = new Platforms(0, 750, 1000, 50, color(249, 146, 173)); // ground  
    platforms8.add(plat1);

    Platforms plat2 = new MovePlat(0, 620, 200, 50, color(250, 180, 200), false, 400); //second
    platforms8.add(plat2);

    Platforms plat3 = new MovePlat(750, 500, 800, 50, color(247, 142, 207), false, 100); 
    platforms8.add(plat3);

    Platforms plat4 = new Platforms(0, 470, 350, 50, color(251, 188, 238)); 
    platforms8.add(plat4);

    Platforms plat5 = new Platforms(850, 350, 200, 50, color(207, 185, 247)); 
    platforms8.add(plat5);

    Platforms plat6 = new Platforms(250, 320, 200, 50, color(212, 176, 249)); 
    platforms8.add(plat6);

    Platforms plat7 = new Platforms(400, 150, 350, 50, color(197, 128, 237)); 
    platforms8.add(plat7);

    Platforms plat8 = new MovePlat(600, 450, 90, 50, color(220, 170, 241), true, 50); 
    platforms8.add(plat8);

    Platforms plat9 = new Platforms(900, 150, 300, 50, color(255, 144, 179)); 
    platforms8.add(plat9); 

    Platforms plat10 = new Platforms(0, -50, width, 50, color(255, 144, 179)); 
    platforms8.add(plat10);   

    Platforms plat11 = new Platforms(700, 600, 100, 50, color(212, 176, 249)); 
    platforms8.add(plat11);   

    Platforms plat12 = new Platforms(600, 300, 200, 50, color(212, 176, 249)); 
    platforms8.add(plat12);    

    Platforms plat13 = new Platforms(200, 200, 50, 50, color(212, 176, 249)); 
    platforms8.add(plat13);      

    Spikes spike1 = new MoveSpike(200, 700, false, 200);
    spikes8.add(spike1);

    Spikes spike2 = new MoveSpike(50, 570, false, 400);
    spikes8.add(spike2);

    Spikes spike3 = new MoveSpike(800, 450, false, 100);
    spikes8.add(spike3);

    Spikes spike4 = new Spikes(width/2-175, 270);
    spikes8.add(spike4);  

    Spikes spike5 = new MoveSpike(50, 420, false, 100);
    spikes8.add(spike5);  

    Spikes spike6 = new Spikes(width-100, 300);
    spikes8.add(spike6);

    Spikes spike7 = new MoveSpike(600, 400, true, 50);
    spikes8.add(spike7);    

    Spikes spike8 = new WallSpike(0-16, 620, 400, true);
    spikes8.add(spike8);
    Spikes spike9 = new WallSpike(200+16, 620, 400, false);
    spikes8.add(spike9);    

    Spikes spike10 = new WallSpike(750-16, 500, 100, true);
    spikes8.add(spike10);

    Strawberries berry3 = new Strawberries(width/2+200, 560);
    strawberries8.add(berry3);  

    Strawberries berry4 = new Strawberries(width-100, 110);
    strawberries8.add(berry4);  

    Strawberries berry5 = new Strawberries(width/2-100, 410);
    strawberries8.add(berry5);  

    Strawberries berry6 = new Strawberries(width/2, 260);
    strawberries8.add(berry6); 

    Strawberries berry7 = new Strawberries(800, height-90);
    strawberries8.add(berry7);
  }
}

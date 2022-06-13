public class Level4 {
  ArrayList<Platforms> platforms4 = new ArrayList<Platforms>();
  ArrayList<Spikes> spikes4 = new ArrayList<Spikes>();
  ArrayList<Strawberries> strawberries4 = new ArrayList<Strawberries>();
  Door door4 = new Door(0, 50, 75, 100);

  public Level4() {
    Platforms plat1 = new Platforms(0, 750, 1000, 50, color(249, 146, 173)); // ground  
    platforms4.add(plat1);

    Platforms plat2 = new MovePlat(20, 600, 200, 50, color(250, 180, 200), false, 100); //second
    platforms4.add(plat2);

    Platforms plat3 = new Platforms(600, 600, 800, 50, color(247, 142, 207)); 
    platforms4.add(plat3);

    Platforms plat4 = new Platforms(150, 450, 500, 50, color(251, 188, 238)); 
    platforms4.add(plat4);

    Platforms plat5 = new Platforms(850, 450, 200, 50, color(207, 185, 247)); 
    platforms4.add(plat5);

    Platforms plat6 = new Platforms(250, 300, 200, 50, color(212, 176, 249)); 
    platforms4.add(plat6);

    Platforms plat7 = new Platforms(0, 150, 280, 50, color(197, 128, 237)); 
    platforms4.add(plat7);

    Platforms plat8 = new MovePlat(500, 120, 90, 50, color(220, 170, 241), true, 50); 
    platforms4.add(plat8);

    Platforms plat9 = new Platforms(900, 150, 300, 50, color(255, 144, 179)); 
    platforms4.add(plat9); 

    Platforms plat10 = new Platforms(0, -50, width, 50, color(255, 144, 179)); 
    platforms4.add(plat10);   

    Platforms plat11 = new Platforms(700, 300, 100, 50, color(212, 176, 249)); 
    platforms4.add(plat11);    


    Spikes spike1 = new MoveSpike(300, 700, false, 200);
    spikes4.add(spike1);

    Spikes spike2 = new MoveSpike(100, 550, false, 100);
    spikes4.add(spike2);

    Spikes spike3 = new Spikes(width-180, 550);
    spikes4.add(spike3);

    Spikes spike4 = new Spikes(width/2-175, 250);
    spikes4.add(spike4);  

    Spikes spike5 = new MoveSpike(500, 400, false, 50);
    spikes4.add(spike5);  

    Spikes spike6 = new Spikes(width-100, 400);
    spikes4.add(spike6);

    Spikes spike7 = new MoveSpike(500, 70, true, 50);
    spikes4.add(spike7);    

    Spikes spike8 = new WallSpike(20-16, 600, 100, true);
    spikes4.add(spike8);  

    Spikes spike9 = new WallSpike(220+16, 600, 100, false);
    spikes4.add(spike9);        

    Strawberries berry3 = new Strawberries(width/2+250, 560);
    strawberries4.add(berry3);  

    Strawberries berry4 = new Strawberries(width-100, 110);
    strawberries4.add(berry4);  

    Strawberries berry5 = new Strawberries(width/2-100, 410);
    strawberries4.add(berry5);  

    Strawberries berry6 = new Strawberries(width/2, 260);
    strawberries4.add(berry6); 

    Strawberries berry7 = new Strawberries(800, height-90);
    strawberries4.add(berry7);
  }
} 

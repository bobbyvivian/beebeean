public class Level5 {
  ArrayList<Platforms> platforms5 = new ArrayList<Platforms>();
  ArrayList<Spikes> spikes5 = new ArrayList<Spikes>();
  ArrayList<Strawberries> strawberries5 = new ArrayList<Strawberries>();
  Door door5 = new Door(width-100, 50, 75, 100);

  public Level5() {
    Platforms plat1 = new Platforms(0, 750, 1000, 50, color(249, 146, 173)); // ground  
    platforms5.add(plat1);

    Platforms plat2 = new MovePlat(100, 550, 90, 50, color(250, 180, 200), true, 100); //second
    platforms5.add(plat2);

    Platforms plat3 = new Platforms(600, 600, 800, 50, color(247, 142, 207)); 
    platforms5.add(plat3);

    Platforms plat4 = new Platforms(300, 450, 450, 50, color(251, 188, 238)); 
    platforms5.add(plat4);

    Platforms plat5 = new Platforms(850, 450, 220, 50, color(207, 185, 247)); 
    platforms5.add(plat5);

    Platforms plat7 = new Platforms(0, 300, 200, 50, color(197, 128, 237)); 
    platforms5.add(plat7);

    Platforms plat8 = new MovePlat(250, 190, 250, 50, color(220, 170, 241), false, 100); 
    platforms5.add(plat8);

    Platforms plat9 = new Platforms(730, 150, 300, 50, color(255, 144, 179)); 
    platforms5.add(plat9); 

    Platforms plat10 = new Platforms(0, -50, width, 50, color(255, 144, 179)); 
    platforms5.add(plat10);   

    Spikes spike1 = new MoveSpike(300, 700, false, 200);
    spikes5.add(spike1);

    Spikes spike11 = new MoveSpike(600, 700, false, 100);
    spikes5.add(spike11);    

    Spikes spike2 = new MoveSpike(100, 500, true, 100);
    spikes5.add(spike2);

    Spikes spike3 = new Spikes(width-180, 550);
    spikes5.add(spike3);

    Spikes spike4 = new MoveSpike(0, 250, false, 75);
    spikes5.add(spike4);  

    Spikes spike5 = new MoveSpike(400, 400, false, 200);
    spikes5.add(spike5);  

    Spikes spike6 = new Spikes(width-100, 400);
    spikes5.add(spike6);

    Spikes spike7 = new WallSpike(250-16, 190, 100, true);
    spikes5.add(spike7);  
    Spikes spike8 = new WallSpike(500+16, 190, 100, false);
    spikes5.add(spike8);      


    Strawberries berry1 = new Strawberries(450, 650);
    strawberries5.add(berry1);    

    Strawberries berry2 = new Strawberries(170, 450);
    strawberries5.add(berry2);  

    Strawberries berry3 = new Strawberries(width/2+250, 560);
    strawberries5.add(berry3);  

    Strawberries berry4 = new Strawberries(100, 100);
    strawberries5.add(berry4);  

    Strawberries berry6 = new Strawberries(width/2, 260);
    strawberries5.add(berry6);
  }
} 

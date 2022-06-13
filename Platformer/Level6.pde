public class Level6 {
  ArrayList<Platforms> platforms6 = new ArrayList<Platforms>();
  ArrayList<Spikes> spikes6 = new ArrayList<Spikes>();
  ArrayList<Strawberries> strawberries6 = new ArrayList<Strawberries>();
  Door door6 = new Door(width/2-37.5, height/2-100, 75, 100);
  public Level6() {
    Platforms plat1 = new Platforms(0, 750, 1000, 50, color(249, 146, 173)); // ground  
    platforms6.add(plat1);

    Platforms plat2 = new MovePlat(650, 540, 100, 50, color(250, 180, 200), false, 100); //second
    platforms6.add(plat2);    

    Platforms plat3 = new Platforms(300, 600, 300, 50, color(247, 142, 207)); //second
    platforms6.add(plat3);  

    Platforms plat4 = new Platforms(120, 550, 100, 50, color(212, 176, 249)); //second
    platforms6.add(plat4);  

    Platforms plat5 = new Platforms(width/2-300, height/2, 600, 50, color(255, 144, 179)); //second
    platforms6.add(plat5);   

    Platforms plat9 = new Platforms(750, 200, 250, 50, color(251, 188, 238)); 
    platforms6.add(plat9);

    Platforms plat10 = new Platforms(0, -50, width, 50, color(197, 128, 237)); //ceiling
    platforms6.add(plat10);       

    Platforms plat11 = new MovePlat(100, 200, 200, 50, color(220, 170, 241), false, 100); 
    platforms6.add(plat11);  

    Platforms plat12 = new Platforms(625, 250, 50, 50, color(255, 144, 179)); 
    platforms6.add(plat12);    

    Platforms plat13 = new Platforms(100, 300, 50, 50, color(197, 128, 237)); 
    platforms6.add(plat13);         

    Spikes spike2 = new Spikes(250, 700);
    spikes6.add(spike2);  

    Spikes spike3 = new MoveSpike(250, height/2-50, false, 75);
    spikes6.add(spike3);  

    Spikes spike4 = new MoveSpike(600, height/2-50, false, 75);
    spikes6.add(spike4); 

    Spikes spike5 = new MoveSpike(700, 700, false, 100);
    spikes6.add(spike5);  

    Spikes spike6 = new MoveSpike(790, 700, false, 100);
    spikes6.add(spike6);        

    Spikes spike7 = new Spikes(820, 150);
    spikes6.add(spike7);   

    Spikes spike8 = new WallSpike(100-16, 200, 100, true);
    spikes6.add(spike8);     

    Spikes spike9 = new WallSpike(300+16, 200, 100, false);
    spikes6.add(spike9);         

    Spikes spike10 = new WallSpike(650-16, 540, 100, true);
    spikes6.add(spike10);     

    Spikes spike11 = new WallSpike(750+16, 540, 100, false);
    spikes6.add(spike11);         

    Strawberries berry1 = new Strawberries(width/2-20, height/2-150);
    strawberries6.add(berry1);     

    Strawberries berry2 = new Strawberries(850, 400);
    strawberries6.add(berry2);    

    Strawberries berry3 = new Strawberries(900, 140);
    strawberries6.add(berry3);

    Strawberries berry4 = new Strawberries(150, 510);
    strawberries6.add(berry4);  

    Strawberries berry5 = new Strawberries(200, 100);
    strawberries6.add(berry5);
  }
}

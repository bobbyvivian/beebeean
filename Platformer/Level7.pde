public class Level7 {
  ArrayList<Platforms> platforms7 = new ArrayList<Platforms>();
  ArrayList<Spikes> spikes7 = new ArrayList<Spikes>();
  ArrayList<Strawberries> strawberries7 = new ArrayList<Strawberries>();
  Door door7 = new Door(width/2-37.5, 100, 75, 100);
  public Level7() {
    Platforms plat1 = new Platforms(0, 750, 1000, 50, color(249, 146, 173)); // ground  
    platforms7.add(plat1);

    Platforms plat2 = new MovePlat(240, 550, 90, 50, color(250, 180, 200), false, 100); //second
    platforms7.add(plat2);

    Platforms plat3 = new Platforms(400, 200, 400, 50, color(247, 142, 207)); 
    platforms7.add(plat3);

    Platforms plat11 = new Platforms(900, 200, 200, 50, color(247, 142, 207)); 
    platforms7.add(plat11);      

    Platforms plat4 = new MovePlat(370, 450, 250, 50, color(251, 188, 238), false, 50); 
    platforms7.add(plat4);      

    Platforms plat5 = new Platforms(50, 600, 150, 50, color(247, 142, 207)); 
    platforms7.add(plat5);

    Platforms plat6 = new MovePlat(100, 330, 150, 50, color(247, 142, 207), false, 100); 
    platforms7.add(plat6);      

    Platforms plat7 = new Platforms(700, 350, 200, 50, color(251, 188, 238)); 
    platforms7.add(plat7);   

    Platforms plat10 = new Platforms(0, -50, width, 50, color(255, 144, 179)); //ceiling
    platforms7.add(plat10);   


    Spikes spike3 = new MoveSpike(400, 700, false, 200);
    spikes7.add(spike3);

    Spikes spike4 = new MoveSpike(100, 280, false, 100);
    spikes7.add(spike4);  

    Spikes spike5 = new MoveSpike(450, 400, false, 50);
    spikes7.add(spike5);  

    Spikes spike6 = new MoveSpike(800, 700, false, 50);
    spikes7.add(spike6);  

    Spikes spike7 = new Spikes(100, 550);
    spikes7.add(spike7);          

    Spikes spike8 = new WallSpike(240-16, 550, 100, true);
    spikes7.add(spike8);   
    Spikes spike9 = new WallSpike(330+16, 550, 100, false);
    spikes7.add(spike9);        

    Spikes spike10 = new WallSpike(370-16, 450, 50, true);
    spikes7.add(spike10);   
    
    Spikes spike11 = new WallSpike(620+16, 450, 50, false);
    spikes7.add(spike11);         

    Spikes spike12 = new WallSpike(100-16, 330, 100, true);
    spikes7.add(spike12);   
    
    Spikes spike13 = new WallSpike(250+16, 330, 100, false);
    spikes7.add(spike13);  

    Strawberries berry1 = new Strawberries(700, 690);
    strawberries7.add(berry1);     

    Strawberries berry2 = new Strawberries(850, 300);
    strawberries7.add(berry2);    

    Strawberries berry3 = new Strawberries(900, 140);
    strawberries7.add(berry3);

    Strawberries berry4 = new Strawberries(130, 450);
    strawberries7.add(berry4);  

    Strawberries berry5 = new Strawberries(240, 120);
    strawberries7.add(berry5);
  }
}

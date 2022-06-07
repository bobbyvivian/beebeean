public class Level7 {
  ArrayList<Platforms> platforms7 = new ArrayList<Platforms>();
  ArrayList<Spikes> spikes7 = new ArrayList<Spikes>();
  ArrayList<Strawberries> strawberries7 = new ArrayList<Strawberries>();
  Door door7 = new Door(width/2-37.5, 100, 75, 100);
  public Level7() {
      Platforms plat1 = new Platforms(0, 750, 1000, 50, color(249, 146, 173)); // ground  
      platforms7.add(plat1);
      
      Platforms plat2 = new MovePlat(220, 550, 90, 50, color(250, 180, 200),false,100); //second
      platforms7.add(plat2);
      
      Platforms plat3 = new Platforms(400, 200, 800, 50, color(247, 142, 207)); 
      platforms7.add(plat3);
      
      Platforms plat4 = new MovePlat(350, 450, 200, 50, color(251, 188, 238),false,50); 
      platforms7.add(plat4);      
      
      Platforms plat5 = new Platforms(50, 600, 150, 50, color(247, 142, 207)); 
      platforms7.add(plat5);
      
      Platforms plat10 = new Platforms(0, -50, width, 50, color(255, 144, 179)); //ceiling
      platforms7.add(plat10);       
      
      Spikes spike3 = new Spikes(400,700);
      spikes7.add(spike3);
      
      Spikes spike4 = new MoveSpike(0,250,false,100);
      spikes7.add(spike4);  
      
      Spikes spike5 = new MoveSpike(400,400,false,50);
      spikes7.add(spike5);  
      
      Spikes spike6 = new Spikes(width-100,700);
      spikes7.add(spike6);  
      
      Spikes spike7 = new Spikes(100,550);
      spikes7.add(spike7);          
  }
}

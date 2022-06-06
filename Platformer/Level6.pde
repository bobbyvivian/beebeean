public class Level6 {
  ArrayList<Platforms> platforms6 = new ArrayList<Platforms>();
  ArrayList<Spikes> spikes6 = new ArrayList<Spikes>();
  ArrayList<Strawberries> strawberries6 = new ArrayList<Strawberries>();
  Door door6 = new Door(width/2-37.5, height/2-100, 75, 100);
  public Level6() {
      Platforms plat1 = new Platforms(0, 750, 1000, 50, color(249, 146, 173)); // ground  
      platforms6.add(plat1);
      
      Platforms plat2 = new MovePlat(700, 520, 100, 50, color(250, 180, 200), false, 100); //second
      platforms6.add(plat2);    
      
      Platforms plat3 = new Platforms(width/2-100, 600, 200, 50, color(250, 180, 200)); //second
      platforms6.add(plat3);  
      
      Platforms plat4 = new Platforms(120, 550, 100, 50, color(250, 180, 200)); //second
      platforms6.add(plat4);  
      
      Platforms plat5 = new Platforms(width/2-300, height/2, 600, 50, color(250, 180, 200)); //second
      platforms6.add(plat5);        
      
      Spikes spike2 = new Spikes(200,700);
      spikes6.add(spike2);  
      
      Spikes spike3 = new Spikes(320,height/2-50);
      spikes6.add(spike3);  
      
      Spikes spike4 = new Spikes(600,height/2-50);
      spikes6.add(spike4); 
      
      Spikes spike5 = new Spikes(800,700);
      spikes6.add(spike5);  
      Spikes spike6 = new Spikes(890,700);
      spikes6.add(spike6);        
      
      Strawberries berry1 = new Strawberries(width/2-20,height/2-150);
      strawberries6.add(berry1);     
      
      Strawberries berry2 = new Strawberries(850,400);
      strawberries6.add(berry2);          
  }
}

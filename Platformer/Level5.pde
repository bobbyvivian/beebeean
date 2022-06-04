public class Level5 {
  ArrayList<Platforms> platforms5 = new ArrayList<Platforms>();
  ArrayList<Spikes> spikes5 = new ArrayList<Spikes>();
  ArrayList<Strawberries> strawberries5 = new ArrayList<Strawberries>();
  Door door5 = new Door(0, 50, 75, 100);
  
  public Level5() {
    Platforms plat1 = new Platforms(0, 750, 1000, 50, color(249, 146, 173)); // ground  
    platforms5.add(plat1);
    
    Platforms plat2 = new Platforms(0, 600, 200, 50, color(250, 180, 200)); //second
    platforms5.add(plat2);
    
    Platforms plat3 = new Platforms(600, 600, 800, 50, color(247, 142, 207)); 
    platforms5.add(plat3);
    
    Platforms plat4 = new Platforms(150, 450, 625, 50, color(251, 188, 238)); 
    platforms5.add(plat4);
    
    Platforms plat5 = new Platforms(850, 450, 200, 50, color(207, 185, 247)); 
    platforms5.add(plat5);
    
    Platforms plat6 = new Platforms(150, 300, 400, 50, color(212, 176, 249)); 
    platforms5.add(plat6);
    
    Platforms plat7 = new Platforms(0, 150, 280, 50, color(197, 128, 237)); 
    platforms5.add(plat7);
    
    Platforms plat8 = new Platforms(450, 150, 300, 50, color(220, 170, 241)); 
    platforms5.add(plat8);
      
    Platforms plat9 = new Platforms(900, 150, 300, 50, color(255, 144, 179)); 
    platforms5.add(plat9); 
    
    Platforms plat10 = new Platforms(0, -50, width, 50, color(255, 144, 179)); 
    platforms5.add(plat10);   
    
    Spikes spike1 = new Spikes(width/2-50,700);
    spikes5.add(spike1);
  
    Spikes spike2 = new Spikes(10,550);
    spikes5.add(spike2);
    
    Spikes spike3 = new Spikes(width-180,550);
    spikes5.add(spike3);
    
    Spikes spike4 = new Spikes(width/2-175,250);
    spikes5.add(spike4);  
    
    Spikes spike5 = new Spikes(width-400,400);
    spikes5.add(spike5);  
    
    Spikes spike6 = new Spikes(width-100,400);
    spikes5.add(spike6);
    
    Strawberries berry1 = new Strawberries(width/2+100,710);
    strawberries5.add(berry1);    
    
    Strawberries berry2 = new Strawberries(170,560);
    strawberries5.add(berry2);  
  
    Strawberries berry3 = new Strawberries(width/2+250,560);
    strawberries5.add(berry3);  
    
    Strawberries berry4 = new Strawberries(width-100,110);
    strawberries5.add(berry4);  
    
    Strawberries berry5 = new Strawberries(width/2-100,410);
    strawberries5.add(berry5);  
    
    Strawberries berry6 = new Strawberries(width/2,260);
    strawberries5.add(berry6);    
  }
} 

public class Level6 {
  ArrayList<Platforms> platforms6 = new ArrayList<Platforms>();
  ArrayList<Spikes> spikes6 = new ArrayList<Spikes>();
  ArrayList<Strawberries> strawberries6 = new ArrayList<Strawberries>();
  Door door6 = new Door(0, 50, 75, 100);
  public Level6() {
      Platforms plat1 = new Platforms(0, 750, 1000, 50, color(249, 146, 173)); // ground  
      platforms6.add(plat1);
      
      Platforms plat2 = new Platforms(0, 600, 200, 50, color(250, 180, 200)); //second
      platforms6.add(plat2);  
      
      Strawberries berry1 = new Strawberries(width/2+100,710);
      strawberries6.add(berry1);         
  }
}

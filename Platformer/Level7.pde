public class Level7 {
  ArrayList<Platforms> platforms7 = new ArrayList<Platforms>();
  ArrayList<Spikes> spikes7 = new ArrayList<Spikes>();
  ArrayList<Strawberries> strawberries7 = new ArrayList<Strawberries>();
  Door door7 = new Door(width/2-37.5, height/2-100, 75, 100);
  public Level7() {
      Platforms plat1 = new Platforms(0, 750, 1000, 50, color(249, 146, 173)); // ground  
      platforms7.add(plat1);
      
      Platforms plat10 = new Platforms(0, -50, width, 50, color(255, 144, 179)); //ceiling
      platforms7.add(plat10);       
  }
}

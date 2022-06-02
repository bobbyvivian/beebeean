public class Level1 {
  ArrayList<Platforms> platforms1 = new ArrayList<Platforms>();
  ArrayList<Spikes> spikes1 = new ArrayList<Spikes>();
  ArrayList<Strawberries> strawberries1 = new ArrayList<Strawberries>();
  Door door1 = new Door(0, 50, 75, 100);

  public Level1() {
    Platforms plat1 = new Platforms(0, 750, 1000, 50, color(249, 146, 173)); // ground  
    platforms1.add(plat1);

    Platforms plat2 = new Platforms(0, 600, 200, 50, color(250, 180, 200)); // 2
    platforms1.add(plat2);

    Platforms plat3 = new Platforms(300, 600, 800, 50, color(247, 142, 207)); // 2
    platforms1.add(plat3);

    Platforms plat4 = new Platforms(0, 450, 700, 50, color(251, 188, 238)); // 3 
    platforms1.add(plat4);

    Platforms plat5 = new Platforms(850, 450, 250, 50, color(255, 144, 179)); // 3
    platforms1.add(plat5);

    Platforms plat6 = new Platforms(550, 300, 900, 50, color(212, 176, 249)); // 4
    platforms1.add(plat6); 

    Platforms plat7 = new Platforms(0, 300, 350, 50, color(220, 170, 241));  // 4
    platforms1.add(plat7);

    Platforms plat8 = new Platforms(0, 150, 700, 50, color(197, 128, 237)); // door platform
    platforms1.add(plat8);

    Platforms plat9 = new Platforms(850, 150, 250, 50, color(207, 185, 247)); // 5
    platforms1.add(plat9);

    Platforms plat10 = new Platforms(0, -50, width, 50, color(255, 144, 179)); //ceiling
    platforms1.add(plat10);   

    Spikes spike2 = new Spikes(10, 550);
    spikes1.add(spike2);

    Spikes spike3 = new Spikes(width-200, 550);
    spikes1.add(spike3);

    Spikes spike4 = new Spikes(200, 250);
    spikes1.add(spike4);  

    Spikes spike5 = new Spikes(width-600, 400);
    spikes1.add(spike5);  

    Spikes spike6 = new Spikes(width-100, 400);
    spikes1.add(spike6);

    Spikes spike7 = new Spikes(width-200, 250);
    spikes1.add(spike7);

    Strawberries berry1 = new Strawberries(900, 710);
    strawberries1.add(berry1);    

    Strawberries berry2 = new Strawberries(140, 560);
    strawberries1.add(berry2);   

    Strawberries berry3 = new Strawberries(width/2+220, 560);
    strawberries1.add(berry3);  

    //Strawberries berry3 = new Strawberries(width/2+250,560);
    //strawberries1.add(berry3);  

    Strawberries berry4 = new Strawberries(width-400, 410);
    strawberries1.add(berry4);  

    Strawberries berry5 = new Strawberries(width/2-300, 410);
    strawberries1.add(berry5);  

    Strawberries berry6 = new Strawberries(950, 100);
    strawberries1.add(berry6);  

    //Strawberries berry6 = new Strawberries(width/2,260);
    //strawberries1.add(berry6);
  }
}  

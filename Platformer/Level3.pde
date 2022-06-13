public class Level3 {
  ArrayList<Platforms> platforms3 = new ArrayList<Platforms>();
  ArrayList<Spikes> spikes3 = new ArrayList<Spikes>();
  ArrayList<Strawberries> strawberries3 = new ArrayList<Strawberries>();
  Door door3 = new Door(0, 50, 75, 100);

  public Level3() {
    Platforms p1 = new Platforms(0, 750, 1000, 50, color(249, 146, 173)); // ground  
    platforms3.add(p1);

    Platforms p2 = new Platforms(200, 600, 200, 50, color(250, 180, 200));
    platforms3.add(p2);

    Platforms p3 = new Platforms(600, 600, 200, 50, color(247, 142, 207));
    platforms3.add(p3);

    Platforms p4 = new MovePlat(400, 480, 200, 50, color(251, 188, 238), false, 100);
    platforms3.add(p4);

    Platforms p5 = new MovePlat(200, 340, 200, 50, color(255, 194, 252), false, 400);
    platforms3.add(p5);

    Platforms p6 = new Platforms(0, 150, 200, 50, color(255, 144, 179));
    platforms3.add(p6);

    Platforms p7 = new Platforms(800, 150, 200, 50, color(207, 185, 247));
    platforms3.add(p7);

    Platforms p8 = new MovePlat(300, 200, 200, 50, color(197, 128, 237), false, 200);
    platforms3.add(p8);

    Platforms plat10 = new Platforms(0, -50, width, 50, color(255, 144, 179)); //ceiling
    platforms3.add(plat10);  

    Spikes s1 = new Spikes(width/2-100, 700);
    spikes3.add(s1);

    Spikes s2 = new Spikes(width/2, 700);
    spikes3.add(s2);

    Spikes s3 = new Spikes(width-100, 100);
    spikes3.add(s3);

    Spikes s4 = new WallSpike(400-16,480,100,true);
    spikes3.add(s4);
    
    Spikes s5 = new WallSpike(600+16,480,100,false);
    spikes3.add(s5);    
    
    Spikes s6 = new WallSpike(200-16,340,400,true);
    spikes3.add(s6);
    
    Spikes s7 = new WallSpike(400+16,340,400,false);
    spikes3.add(s7); 
    
    Spikes s8 = new WallSpike(300-16,200,200,true);
    spikes3.add(s8);
    
    Spikes s9 = new WallSpike(500+16,200,200,false);
    spikes3.add(s9);     

    Strawberries b1 = new Strawberries(width-175, 100);
    strawberries3.add(b1);

    Strawberries b2 = new Strawberries(150, 100);
    strawberries3.add(b2);
    
    Strawberries b3 = new Strawberries(285, 560);
    strawberries3.add(b3);
    
    Strawberries b4 = new Strawberries(680, 560);
    strawberries3.add(b4);
    //Strawberries berry1 = new Strawberries(width/2+100,710);
    //strawberries3.add(berry1);     

    //Strawberries berry3 = new Strawberries(width/2+250,560);
    //strawberries3.add(berry3);  

    //Strawberries berry4 = new Strawberries(width-100,110);
    //strawberries3.add(berry4);  

    //Strawberries berry5 = new Strawberries(width/2-100,410);
    //strawberries3.add(berry5);  

    //Strawberries berry6 = new Strawberries(width/2,260);
    //strawberries3.add(berry6);
  }
} 

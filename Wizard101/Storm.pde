Card ThunderSnake = new ThunderSnake();
public class Storm extends School{
  public Storm(Gear gear){
    //gear.balanced();
    super(gear);
    schoolType = "Storm";
    health = 800 + gear.getHealth();
    damage = 1.3 + gear.getDamage();
    resistance = 1.0 + gear.getResistance();
    deck = createDeck();
    pipChance = .2 + gear.getPipChance();
  }
  
  public ArrayList<Card> createDeck(){
    ArrayList<Card> newDeck = new ArrayList<Card>();
    for(int i = 0; i < 60; i++){
      newDeck.add(new ThunderSnake());
    }
    for(int i = 0; i < 50; i++){
      newDeck.add(new LightningBats());
    }
    for(int i = 0; i < 40; i++){
      newDeck.add(new StormShark());
    }
    for(int i = 0; i < 20; i++){
      newDeck.add(new Kraken());
    }
    for(int i = 0; i < 30; i++){
      newDeck.add(new Stormzilla());
    }  
    for(int i = 0; i < 10; i++){
      newDeck.add(new Triton());
    }
    Collections.shuffle(newDeck);
    return newDeck;
  }
  
}

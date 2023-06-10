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
    for(int x = 0; x < 4; x++){
      newDeck.add(new ThunderSnake());
    }
    for(int x = 0; x < 3; x++){
      newDeck.add(new LightningBats());
    }
    for(int x = 0; x < 2; x++){
      newDeck.add(new StormShark());
    }
    for(int x = 0; x < 2; x++){
      newDeck.add(new Stormzilla());
    }
    for(int x = 0; x < 3; x++){
      newDeck.add(new Kraken());
    }  
    for(int x = 0; x < 1; x++){
      newDeck.add(new Triton());
    }
    for(int x = 0; x < 2; x++){
      newDeck.add(new Shield());
    }
    for(int x = 0; x < 5; x++){
      newDeck.add(new Blade());
    }
    Collections.shuffle(newDeck);
    return newDeck;
  }
  
}

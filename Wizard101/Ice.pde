public class Ice extends School{
  public Ice(Gear gear){
    //gear.balanced();
    super(gear);
    schoolType = "Ice";
    health = 1200 + gear.getHealth();
    damage = 1.0 + gear.getDamage();
    resistance = 1.2 + gear.getResistance();
    deck = createDeck();
    pipChance = .3 + gear.getPipChance();
  }
  
  public ArrayList<Card> createDeck(){
    ArrayList<Card> newDeck = new ArrayList<Card>();
    for(int i = 0; i < 60; i++){
      newDeck.add(new FrostBeetle());
    }
    for(int i = 0; i < 50; i++){
      newDeck.add(new SnowSerpent());
    }
    for(int i = 0; i < 40; i++){
      newDeck.add(new EvilSnowman());
    }
    for(int i = 0; i < 20; i++){
      newDeck.add(new IcyWyvern());
    }
    for(int i = 0; i < 30; i++){
      newDeck.add(new Colossus());
    }  
    Collections.shuffle(newDeck);
    return newDeck;
  }
  
}

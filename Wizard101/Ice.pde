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
    for(int x = 0; x < 4; x++){
      newDeck.add(new FrostBeetle());
    }
    for(int x = 0; x < 3; x++){
      newDeck.add(new SnowSerpent());
    }
    for(int x = 0; x < 3; x++){
      newDeck.add(new EvilSnowman());
    }
    for(int x = 0; x < 2; x++){
      newDeck.add(new IcyWyvern());
    }  
    for(int x = 0; x < 1; x++){
      newDeck.add(new Colossus());
    }
    for(int x = 0; x < 5; x++){
      newDeck.add(new Shield());
    }
    for(int x = 0; x < 2; x++){
      newDeck.add(new Blade());
    }
    Collections.shuffle(newDeck);
    return newDeck;
  }
  
}

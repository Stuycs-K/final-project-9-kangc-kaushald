Card imp = new Imp();
public class Life extends School{
  public Life(Gear gear){
    //gear.balanced();
    super(gear);
    schoolType = "Life";
    health = 1000 + gear.getHealth();
    damage = 1.05 + gear.getDamage();
    resistance = 1.05 + gear.getResistance();
    deck = createDeck();
  }
  
  public ArrayList<Card> createDeck(){
    ArrayList<Card> newDeck = new ArrayList<Card>();
    for(int x = 0; x < 5; x++){
      newDeck.add(new Imp());
    }
    return newDeck;
  }
  
}

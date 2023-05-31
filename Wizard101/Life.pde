Card imp = new Imp();
Card leprechaun = new Leprechaun();
Card naturesWrath = new NaturesWrath();
Card seraph = new Seraph();
Card earthWalker = new EarthWalker();
Card centaur = new Centaur();

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
    return newDeck;
  }
  
}

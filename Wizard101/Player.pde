public class Player{
  int health;
  int pips = 1;
  float damage;
  float resistance;
  Gear gear;
  String schoolType;
  ArrayList<Card> deck = new ArrayList<Card>();
  float pipChance;
  
  public Player(){
    
  }
  public Player(Gear gear) {
    this.gear = gear;
  }
  
  public int getHealth() {
    return health;
  }
  
  public int getPips() {
    return pips;
  }
  
  public float getDamage() {
    return damage;
  }
  
  public float getResistance() {
    return resistance;
  }
  
  public float getPipChance() {
    return pipChance;
  }
  
  public int deckSize() {
    return deck.size();
  }
  
  public Card showCard(int index) {
    return deck.get(index);
  }
  
  public Card getCard(int index) {
    return deck.remove(index);
  }
  
  public void setHealth(int newHealth){
    health = newHealth;
  }
  
  public void setDamage(float newDamage){
    damage = newDamage;
  }
  
  public void setResistance(float newResistance){
    resistance = newResistance;
  }
  
  public void setPips(int amount){
    pips = amount;
  }
  
  public void addPip(){
    pips += 1;
  }
  
    public void removePip(){
    pips -= 1;
  }
  
public String healthbar(int current , int health){
  String result = "";
  result += "" + current + "/" + health;
  return result;
}
}
  

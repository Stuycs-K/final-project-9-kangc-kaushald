public class Player{
  int health;
  int pips;
  float damage;
  float resistance;
  Gear gear;
  String schoolType;
  ArrayList<Card> deck;
  
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
  
  public Card getCard() {
    return deck.get(0);
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
  

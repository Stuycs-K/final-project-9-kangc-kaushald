import java.util.*;

public class Player{
  int health = 100;
  int pips = 0;
  float damage = 1.0;
  float resistance = 1.0;
  ArrayList<Card> deck = new ArrayList<Card>(20);
  School school;
  Gear gear;
  
  public Player(School school, Gear gear , ArrayList<Card> newDeck) {
    this.school = school;
    this.gear = gear;
    deck = newDeck;
  }
  
  public Player(){
    
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
  
  
  public void setHealth(int newHealth){
    health = newHealth;
  }
  
  public void setDamage(float newDamage){
    damage = newDamage;
  }
  
  public void setResistance(float newResistance){
    resistance = newResistance;
  }
  
public String healthbar(int current , int health){
  String result = "";
  result += "" + current + "/" + health;
  return result;
}
}
  

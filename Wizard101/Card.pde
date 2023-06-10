public class Card extends CardSuperClass{
  int damage;
  int pips;
  String name;
  PImage image;
  float accuracy;
  float multiplier;
  
  Card(int damage, int pips, float accuracy){
    this.damage = damage;
    this.pips = pips;
    this.accuracy = accuracy;
  }
  public int getDamage() {
    return damage;
  }
  public int pips() {
    return pips;
  }
  public String getName() {
    return name;
  }
  public float getAccuracy() {
    return accuracy;
  }
  void boostDamage(int buff){
    damage += buff;
  }
  public float getMultiplier() {
    return multiplier;
  }
}

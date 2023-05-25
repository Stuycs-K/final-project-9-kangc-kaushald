public class Player{
  int health = 100;
  int pips = 0;
  float damage = 1.0;
  float resistance = 1.0;
  School school;
  Gear gear;
  
  public Player(School school, Gear gear) {
    this.school = school;
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
  
public String healthbar(int current , int health){
  String result = "";
  result += "" + current + "/" + health;
  return result;
}
}
  

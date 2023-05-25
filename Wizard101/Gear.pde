public class Gear{
  int health;
  float damage;
  float resistance;
  
  public Gear(int newhealth, int newdamage, int newresistance){
    health = newhealth;
    damage = newdamage;
    resistance = newresistance;
  }
  
  public int getHealth(){
    return health;
  }
  
  public float getDamage(){
    return damage;
  }
  
  public float getResistance(){
    return resistance;
  }
  
  public void test(){
  }
}

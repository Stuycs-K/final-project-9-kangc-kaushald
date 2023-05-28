public class Gear{
  int health;
  float damage;
  float resistance;
  //String[] type = {"damage" , "resistance" , "balanced"};
  
  public Gear(int newhealth, float newdamage, float newresistance){
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
 
}

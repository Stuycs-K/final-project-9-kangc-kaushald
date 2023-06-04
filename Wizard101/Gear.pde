public class Gear{
  int health;
  float damage;
  float resistance;
  float pipChance;
  //String[] type = {"damage" , "resistance" , "balanced"};
  
  public Gear(int newhealth, float newdamage, float newresistance, float newpipChance){
    health = newhealth;
    damage = newdamage;
    resistance = newresistance;
    pipChance = newpipChance;
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
  
  public float getPipChance(){
    return pipChance;
  }
 
}

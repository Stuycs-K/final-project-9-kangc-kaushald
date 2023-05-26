public class Gear{
  int health;
  float damage;
  float resistance;
  String[] type = {"damage" , "resistance" , "balanced"};
  
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
  
  public void damageBoost(){
    damage *= 3.0;
  }
  
  public void resistanceBoost(){
    resistance*=3.0;
  }
  
  public void balanced(){
    damage*= 1.5;
    resistance*=1.5;
  }
}

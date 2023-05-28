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
    damage += .1;
  }
  
  public void resistanceBoost(){
    resistance+=.1;
  }
  
  public void balanced(){
    damage+=.05;
    resistance+=.05;
  }
}

public class Gear{
  int health;
  int damage;
  int resistance;
  
  public Gear(int newhealth, int newdamage, int newresistance){
    health = newhealth;
    damage = newdamage;
    resistance = newresistance;
  }
  
  public void sethealth(int newhealth){
    health = newhealth;
  }
  
  public void setdamage(int newdamage){
    damage = newdamage;
  }
  
  public void setresistance(int newresistance){
    resistance = newresistance;
  }
  
  public void test(){
  }
}

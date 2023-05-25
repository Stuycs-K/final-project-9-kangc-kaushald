public class School {
  String schoolType;
  Card cards;
  int health;
  float damage;
  float resistance;
  
  public School(String school) {
    schoolType = school;
  }
  
  public String getSchoolType(){
    return schoolType;
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

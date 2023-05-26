public class School extends Player{
  
  public School(Gear gear) {
    super(gear);
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

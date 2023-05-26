public class School extends Player{
  String schoolType;
  ArrayList<Card> deck;
  
  public School(Gear gear) {
    super();
  }
  
  public School() {
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

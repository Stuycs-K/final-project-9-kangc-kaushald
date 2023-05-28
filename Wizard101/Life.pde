public class Life extends School{
  public Life(Gear gear){
    //gear.balanced();
    super(gear);
    schoolType = "Life";
    health = 1000 + gear.getHealth();
    damage = 1.05 + gear.getDamage();
    resistance = 1.05 + gear.getResistance();
  }
}

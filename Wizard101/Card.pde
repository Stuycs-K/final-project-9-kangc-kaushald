public class Card extends CardSuperClass{
  int damage;
  int pips;
  String name;
  Card(int damage, int pips){
    this.damage = damage;
    this.pips = pips;
  }
  public int getDamage() {
    return damage;
  }
  public int pips() {
    return pips;
  }
  public String getName() {
    return name;
  }
}

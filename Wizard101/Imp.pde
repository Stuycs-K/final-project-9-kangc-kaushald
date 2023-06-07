public class Imp extends Card{
  int boost = (int)(Math.random() * 40);
  public Imp() {
    super(65, 1, .9);
    boostDamage(boost);
    name = "Imp";
  }
}

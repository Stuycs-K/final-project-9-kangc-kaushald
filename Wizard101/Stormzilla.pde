public class Stormzilla extends Card{
  int boost = (int)(Math.random() * 80);
  public Stormzilla() {
    super(650, 5, .7);
    boostDamage(boost);
    name = "Stormzilla";
  }
}

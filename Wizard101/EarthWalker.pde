public class EarthWalker extends Card{
  int boost = (int)(Math.random() * 80);
  public EarthWalker() {
    super(420, 5);
    boostDamage(boost);
    name = "Earth Walker";
  }
}

public class LightningBats extends Card{
  int boost = (int)(Math.random() * 40);
  public LightningBats() {
    super(245, 2, .7);
    boostDamage(boost);
    name = "Lightning Bats";
  }
}

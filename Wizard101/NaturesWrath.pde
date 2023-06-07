public class NaturesWrath extends Card{
  int boost = (int)(Math.random() * 60);
  public NaturesWrath() {
    super(240, 3, .9);
    boostDamage(boost);
    name = "Nature's Wrath";
  }
}

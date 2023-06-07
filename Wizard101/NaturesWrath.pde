public class NaturesWrath extends Card{
  int boost = (int)(Math.random() * 60);
  public NaturesWrath() {
    super(240, 3);
    boostDamage(boost);
    name = "Nature's Wrath";
  }
}

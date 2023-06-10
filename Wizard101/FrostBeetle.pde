public class FrostBeetle extends Card{
  int boost = (int)(Math.random() * 40);
  public FrostBeetle() {
    super(65, 1, .8);
    boostDamage(boost);
    name = "Frost Beetle";
  }
}

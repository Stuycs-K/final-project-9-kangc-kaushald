public class Leprechaun extends Card{
  int boost = (int)(Math.random() * 40);
  public Leprechaun() {
    super(155, 2, .9);
    boostDamage(boost);
    name = "Leprechaun";
  }
}

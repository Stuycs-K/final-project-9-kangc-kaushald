public class Kraken extends Card{
  int boost = (int)(Math.random() * 60);
  public Kraken() {
    super(520 , 4, .7);
    boostDamage(boost);
    name = "Kraken";
  }
}

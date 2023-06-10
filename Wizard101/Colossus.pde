public class Colossus extends Card{
  int boost = (int)(Math.random() * 80);
  public Colossus() {
    super(515, 6, .8);
    boostDamage(boost);
    name = "Colossus";
  }
}

public class Centaur extends Card{
  int boost = (int)(Math.random() * 80);
  public Centaur() {
    super(515, 6);
    boostDamage(boost);
    name = "Centaur";
  }
}

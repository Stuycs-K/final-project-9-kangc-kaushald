public class Seraph extends Card{
  int boost = (int)(Math.random() * 60);
  public Seraph() {
    super(335, 4, .9);
    boostDamage(boost);
    name = "Seraph";
  }
}

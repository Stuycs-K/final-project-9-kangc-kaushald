public class Triton extends Card{
  int boost = (int)(Math.random() * 80);
  public Triton() {
    super(795, 6, .7);
    boostDamage(boost);
    name = "Triton";
  }
}

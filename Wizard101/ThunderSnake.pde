public class ThunderSnake extends Card{
  int boost = (int)(Math.random() * 40);
  public ThunderSnake() {
    super(105, 1, .7);
    boostDamage(boost);
    name = "Thunder Snake";
  }
}

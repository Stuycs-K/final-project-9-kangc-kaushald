public class SnowSerpent extends Card{
  int boost = (int)(Math.random() * 40);
  public SnowSerpent() {
    super(155, 2, .8);
    boostDamage(boost);
    name = "Snow Serpent";
  }
}

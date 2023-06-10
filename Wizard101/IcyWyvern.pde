public class IcyWyvern extends Card{
  int boost = (int)(Math.random() * 60);
  public IcyWyvern() {
    super(335, 4, .8);
    boostDamage(boost);
    name = "Icy Wyvern";
  }
}

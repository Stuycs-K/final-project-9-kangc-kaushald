public class EvilSnowman extends Card{
  int boost = (int)(Math.random() * 60);
  public EvilSnowman() {
    super(240, 3, .8);
    boostDamage(boost);
    name = "Evil Snowman";
  }
}

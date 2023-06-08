public class StormShark extends Card{
  int boost = (int)(Math.random() * 60);
  public StormShark() {
    super(375, 3, .7);
    boostDamage(boost);
    name = "Storm Shark";
  }
}

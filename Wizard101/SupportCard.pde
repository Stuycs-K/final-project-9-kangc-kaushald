public class SupportCard extends CardSuperClass{
  float multiplier;
  int pips = 0;
  public SupportCard(float multiplier){
    this.multiplier = multiplier;
  }
  public float getMultiplier(){
    return multiplier;
  }
}

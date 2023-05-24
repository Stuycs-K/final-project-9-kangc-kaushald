void setup(){
  size(640 , 360);
}

public String healthbar(int current , int health){
  String result = "";
  result += "" + current + "/" + health;
  return result;
}

void draw(){

  text(healthbar(100 , 100) , 0, 0 );
}

void setup(){
  size(640 , 360);
}

public String healthbar(int current , int health){
  String result = "";
  result += "" + current + "/" + health;
  return result;
}

void draw(){
  background(255);
  rect(0 , height-30 , 100 , 10);
  fill(0 , 255 , 0);
  rect(0 , height-30 , 100 - 20, 10);
  fill(255 , 0 , 0);
  text(healthbar(100 , 100) , 30, height-20);
  fill(0);
 
}

  Player test = new Player();
void setup(){
  keyboardInput = new Controller();
  size(640 , 360);
}

public String healthbar(int current , int health){
  String result = "";
  result += "" + current + "/" + health;
  return result;
}

void draw(){
  background(255);
  text(""+test.getHealth() , 20 , 20);
  rect(0 , height-30 , 100 , 10);
  fill(0 , 255 , 0);
  rect(0 , height-30 , 100 - 20, 10);
  fill(255 , 0 , 0);
  text(healthbar(100 , 100) , 30, height-20);
  fill(0);
   if (keyboardInput.isPressed(Controller.P1)) {
   text("The Key is 1" , 10 , 10);
  }
  //check if the button P1_RIGHT is being pressed:
  if (keyboardInput.isPressed(Controller.P2)) {
   text("The Key is 2" , 10 , 10);
  }if (keyboardInput.isPressed(Controller.P3)) {
    text("The Key is 3" , 10 , 10);
  }
  //check if the button P1_RIGHT is being pressed:
  if (keyboardInput.isPressed(Controller.P4)) {
    text("The Key is 4" , 10 , 10);
  }
  if (keyboardInput.isPressed(Controller.P5)) {
    text("The Key is 5" , 10 , 10);
  }
  fill(0);
  Card card = new Imp();
  text("" + card.getDamage() , 10 , 10);
  test.setHealth(test.getHealth() - card.getDamage() );
}


Controller keyboardInput;

void keyPressed() {
  keyboardInput.press(keyCode);
}

void keyReleased() {
  keyboardInput.release(keyCode);
}




/**************CONTROLLER TAB************/
class Controller {
  static final int P1 = 0;
  static final int P2 = 1;
  static final int P3 = 2;
  static final int P4 = 3;
  static final int P5 = 4;
  boolean [] inputs;

  public Controller() {
    inputs = new boolean[5];//2 valid buttons
  }

  /**@param code: a valid constant e.g. P1_LEFT
  */
  boolean isPressed(int code) {
    return inputs[code];
  }

  void press(int code) {
    if(code == '1')
      inputs[P1] = true;
    if(code == '2')
      inputs[P2] = true;
    if(code == '3')
      inputs[P3] = true;
    if(code == '4')
      inputs[P4] = true;
    if(code == '5')
      inputs[P5] = true;
  }
  void release(int code) {
     if(code == '1')
      inputs[P1] = false;
    if(code == '2')
      inputs[P2] = false;
    if(code == '3')
      inputs[P3] = false;
    if(code == '4')
      inputs[P4] = false;
    if(code == '5')
      inputs[P5] = false;
  }
}

  Gear test1 = new Gear(100 , 1  , 1);
  Player test = new Player(test1);
  boolean done = true;
void setup(){
  keyboardInput = new Controller();
  size(640 , 360);
}



void draw(){
  background(255);
  text(""+test.getHealth() , 20 , 20);
  rect(0 , height-30 , 100 , 10);
  fill(0 , 255 , 0);
  rect(0 , height-30 , 100 - 20, 10);
  fill(255 , 0 , 0);
  text(test.healthbar(100 , 100) , 30, height-20);
  fill(0);
  float base = test1.getDamage();
  key = 1;
   if (keyPressed) {
     while(base+0.1 > test1.getDamage()){
     test1.damageBoost();
     }
  }
  //check if the button P1_RIGHT is being pressed:
  if (keyboardInput.isPressed(Controller.P2)) {
    test1.resistanceBoost();
  }if (keyboardInput.isPressed(Controller.P3)) {
    test1.balanced();
  }
  //check if the button P1_RIGHT is being pressed:
  if (keyboardInput.isPressed(Controller.P4)) {
    text(""+test1.getDamage() , 200, 100);
    text(""+test1.getResistance() , 300, 100);
  }
  if (keyboardInput.isPressed(Controller.P5)) {
    text("The Key is 5" , 10 , 10);
  }
  fill(0);
  Card card = new Imp();
  text("" + card.getDamage() , 10 , 10);
  if(done && keyboardInput.isPressed(Controller.P5)){
  test.setHealth(test.getHealth() - card.getDamage());
  done = false;
  }
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

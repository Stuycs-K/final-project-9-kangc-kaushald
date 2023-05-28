  Gear test1 = new Gear(100 , 1  , 1);
  Player test = new Player(test1);
void setup(){
  keyboardInput = new Controller();
  size(640 , 360);
}


//actual methods//
void draw(){
  background(255);
  //healthbar setup//
  text(""+test.getHealth() , 20 , 20);
  rect(0 , height-30 , 100 , 10);
  fill(0 , 255 , 0);
  rect(0 , height-30 , 100 - 20, 10);
  fill(255 , 0 , 0);
  text(test.healthbar(100 , 100) , 30, height-20);
  fill(0);
  float base = test1.getDamage();
  //key 1 is damage key 2 is resistance key 3 is balanced//
   if (keyboardInput.isPressed(Controller.P1)) {
     Gear damage = new Gear(100 , 1.1 , 1.0);
     text("Done" , 0 , 100);
  }
  if (keyboardInput.isPressed(Controller.P2)) {
    Gear resistance = new Gear(100 , 1.0 , 1.1);
  }if (keyboardInput.isPressed(Controller.P3)) {
    Gear balanced = new Gear(100 , 1.05 , 1.05);
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

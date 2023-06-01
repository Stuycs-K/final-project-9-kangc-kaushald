  import java.util.*;
  Gear gear1 = new Gear(0, 0, 0);
  Gear gear2 = new Gear(0, 0, 0);
  boolean gearFlag1 = true;
  boolean gearFlag2 = false;
  boolean statusFlag1 = true;
  boolean statusFlag2 = true;
  boolean clickFlag = true;
  int countdown;
  boolean createPlayer = false;
  Player player1 = new Life(gear1);
  Player player2 = new Life(gear2);
  boolean turn1 = true;
  boolean play = false;

void setup(){
  keyboardInput = new Controller();
  size(1080 , 720);
  textSize(32);
  countdown = 0;
}


//actual methods//
void draw(){
  
  if(countdown > 0){
    countdown --;
  }
  
  background(255);
  fill(0);
  
  if(!play){
    if(gearFlag1 && keyPressed){
      gear1 = assignGear();
      gearFlag1 = false;
      gearFlag2 = true;
      countdown += 120;
    }
    
    if(gearFlag2 && keyPressed && countdown == 0){
      gear2 = assignGear();
      gearFlag2 = false;
      createPlayer = true;
    }
    
    if(createPlayer && !gearFlag1 && !gearFlag2 && !play){
      player1 = new Life(gear1);
      player2 = new Life(gear2);
      play = true;
    }
    
    if(!gearFlag2 && statusFlag1){
      text("Player 1 select gear" , 100 , 100); 
      displayGear();
    }
    
    if(gearFlag2 && statusFlag2){
      text("Player 2 select gear" , 100 , 100); 
      displayGear();
      statusFlag1 = true;
    }
    
  } else {
      
    if(clickFlag) {
       displayCards(player1);
       if(countdown == 0){
         attack(player1, player2);
         clickFlag = false;
       }
    }
    if(!clickFlag) {
      displayCards(player2);
      if(countdown == 0){
        attack(player2, player1);
        clickFlag = true;
      }
    }
    
    text(""+player1.getHealth(), width/2+100, height/2+100);
    text(""+player1.getDamage(), width/2+200, height/2+100);
    text(""+player1.getResistance(), width/2+300, height/2+100);
    
    text(""+player2.getHealth(), width/2+100, height/2+200);
    text(""+player2.getDamage(), width/2+200, height/2+200);
    text(""+player2.getResistance(), width/2+300, height/2+200);
  
  }
}

public Gear assignGear(){
  Gear gear = new Gear(0, 0, 0); //base gear with no added stats
  if (keyboardInput.isPressed(Controller.P1)) {
    gear = new Gear(100 , .2 , .05);//damage heavy gear
  }
  if (keyboardInput.isPressed(Controller.P2)) {
    gear = new Gear(300 , .05 , .2);//resistance heavy gear
  }
  if (keyboardInput.isPressed(Controller.P3)) {
    gear = new Gear(200 , .1 , .1);//balanced gear
  } 
  return gear;
}

void attack(Player player1, Player player2){
  int i = 0;
  if (keyboardInput.isPressed(Controller.P1)) {
    i = 0;
  }
  if (keyboardInput.isPressed(Controller.P2)) {
    i = 1;
  }
  if (keyboardInput.isPressed(Controller.P3)) {
    i = 2;
  } 
  if (keyboardInput.isPressed(Controller.P4)) {
    i = 3;
  }
  if (keyboardInput.isPressed(Controller.P5)) {
    i = 4;
  }
  Card spell = player2.showCard(i);
  player1.setHealth(player1.getHealth() - spell.getDamage());
  countdown += 120;
}

void displayGear(){
      text("Health" , 350 , 200);
      text("100" , 375 , 250);
      text("Damage" , 350 , 300);
      text(".2" , 375 , 350);
      text("Resistance" , 350 , 400);
      text(".05" , 375 , 450);
      text("Health" , 500 , 200);
      text("300" , 525 , 250);
      text("Damage" , 500 , 300);
      text(".05" , 525 , 350);
      text("Resistance" , 500 , 400);
      text(".2" , 525 , 450);
      text("Health" , 650 , 200);
      text("200" , 675 , 250);
      text("Damage" , 650 , 300);
      text(".1" , 675 , 350);
      text("Resistance" , 650 , 400);
      text(".1" , 675 , 450);
      fill(0);
}

void displayCard(Card card){
      //text(Card , 100 , 100); 
      text(card.getDamage() , 350 , 200);
      text(card.pips() , 350 , 300);
      fill(0);
}

void displayCards(Player player) {
  for(int x = 0; x < 5; x++){
    Card current = player.showCard(x);
    text(current.getDamage() , width/6 * (x+1), height/2);
    text(current.pips() , width/6 * (x+1) , height/2+50);
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
  static final int P6 = 5;
  boolean [] inputs;

  public Controller() {
    inputs = new boolean[6];//2 valid buttons
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
    if(code == '6')
      inputs[P6] = true;
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
    if(code == '6')
      inputs[P6] = false;
  }
}

 import java.util.*;
  Gear gear1 = new Gear(0, 0, 0);
  Gear gear2 = new Gear(0, 0, 0);
  boolean gearFlag1 = true;
  boolean gearFlag2 = false;
  boolean statusFlag1 = true;
  boolean statusFlag2 = true;
  boolean clickFlag = true;
  int countdown;
  int countdown1;
  boolean createPlayer = false;
  Player player1 = new Life(gear1);
  Player player2 = new Life(gear2);
  boolean turn1 = true;
  boolean play = false;

void setup(){
  keyboardInput = new Controller();
  size(1080 , 720);
  textSize(24);
  countdown = 0;
}


//actual methods//
void draw(){
  
  if(countdown > 0){
    countdown --;
  }
  
  if(countdown1 > 0){
    countdown1 --;
  }
  
  background(255);
  fill(0);
  
  if(!play){
    //message for Player 1 to select gear
    if(!gearFlag2 && statusFlag1){
      text("Player 1 select gear" , 100 , 100); 
      displayGear();
    }
    //Player 1 selects gear
    if(gearFlag1 && keyPressed){
      gear1 = assignGear();
      gearFlag1 = false;
      gearFlag2 = true;
      countdown += 120;
    }
    //message for Player 2 to select gear
    if(gearFlag2 && statusFlag2){
      text("Player 2 select gear" , 100 , 100); 
      displayGear();
      statusFlag1 = true;
    }
    //Player 2 selects gear
    if(gearFlag2 && keyPressed && countdown == 0){
      gear2 = assignGear();
      gearFlag2 = false;
      createPlayer = true;
    }
    //create the players with gear they chose
    if(createPlayer && !gearFlag1 && !gearFlag2 && !play){
      player1 = new Life(gear1);
      player2 = new Life(gear2);
      play = true;
      countdown += 120;
    }
  } else {
      
    if(!clickFlag) {
       displayCards(player2);
       text("Player 2's turn", width/2, height/2 - 150);
       text("Pips: " + player2.getPips(), width/2, height/2 - 100);
       if(countdown == 0){
         attack(player1, player2);
       }
       
    }
    if(clickFlag) {
      text("Player 1's turn", width/2, height/2 - 150);
      text("Pips: " + player1.getPips(), width/2, height/2 - 100);
      displayCards(player1);
      if(countdown == 0){
        attack(player2, player1);
      }
    }
    
    text("Player 1 Health: "+player1.getHealth(), 100, 100);
    text("Player 1 Damage: "+player1.getDamage(), 100, 150);
    text("Player 1 Resistance: "+player1.getResistance(), 100, 200);
    
    text("Player 2 Health: "+player2.getHealth(), width - 300, height - 200);
    text("Player 2 Damage: "+player2.getDamage(), width - 300, height - 150);
    text("Player 2 Resistance: "+player2.getResistance(), width - 300, height - 100);
  
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
  if (keyboardInput.isPressed(Controller.P4)) {
    i = 0;
  }
  if (keyboardInput.isPressed(Controller.P5)) {
    i = 1;
  }
  if (keyboardInput.isPressed(Controller.P6)) {
    i = 2;
  } 
  if (keyboardInput.isPressed(Controller.P7)) {
    i = 3;
  }
  if (keyboardInput.isPressed(Controller.P8)) {
    i = 4;
  }
  if(keyPressed) {
    Card spell = player2.showCard(i);
    if(spell.pips() <= player2.getPips()){
      spell = player2.getCard(i);
      player1.setHealth(player1.getHealth() - spell.getDamage());
      clickFlag = !clickFlag;
      countdown += 120;
      player2.setPips(player2.getPips() - spell.pips());
      player2.addPip();
    }
  }
}

void displayGear(){
      text("Health" , 350 , 200);
      text("100" , 375 , 250);
      text("Damage" , 350 , 300);
      text(".2" , 375 , 350);
      text("Resistance" , 325 , 400);
      text(".05" , 375 , 450);
      text("Press D", 375, 500);
      text("Health" , 500 , 200);
      text("300" , 525 , 250);
      text("Damage" , 500 , 300);
      text(".05" , 525 , 350);
      text("Resistance" , 475 , 400);
      text(".2" , 525 , 450);
      text("Press R" , 525, 500);
      text("Health" , 650 , 200);
      text("200" , 675 , 250);
      text("Damage" , 650 , 300);
      text(".1" , 675 , 350);
      text("Resistance" , 625 , 400);
      text(".1" , 675 , 450);
      text("Press E", 675, 500);
      fill(0);
      line(325 , 150 , 475 , 150);
      line(325 , 150 , 325 , 500);
      line(325 , 500 , 475 , 500);
      line(475 , 150 , 475 , 500);
      line(475 , 150 , 625 , 150);
      line(475 , 150 , 475 , 500);
      line(475 , 500 , 625 , 500);
      line(625 , 150 , 625 , 500);
      line(625 , 150 , 775 , 150);
      line(625 , 150 , 625 , 500);
      line(625 , 500 , 775 , 500);
      line(775 , 150 , 775 , 500);
}

void displayCards(Player player) {
  for(int x = 0; x < 5; x++){
    Card current = player.showCard(x);
    text(current.getName() , width/6 * (x+1), height/2-50);
    text("Damage: " + current.getDamage() , width/6 * (x+1), height/2);
    text("Pips: " + current.pips() , width/6 * (x+1) , height/2+50);
  }
}


//Keyboard Setup
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
  static final int P7 = 6;
  static final int P8 = 7;
  static final int P9 = 8;
  boolean [] inputs;

  public Controller() {
    inputs = new boolean[9];//2 valid buttons
  }

  /**@param code: a valid constant e.g. P1_LEFT
  */
  boolean isPressed(int code) {
    return inputs[code];
  }

  void press(int code) {
    if(code == 'D')
      inputs[P1] = true;
    if(code == 'R')
      inputs[P2] = true;
    if(code == 'E')
      inputs[P3] = true;
    if(code == '1')
      inputs[P4] = true;
    if(code == '2')
      inputs[P5] = true;
    if(code == '3')
      inputs[P6] = true;
     if(code == '4')
      inputs[P7] = true;
     if(code == '5')
      inputs[P8] = true;
     if(code == 'P')
      inputs[P9] = true;
  }
  void release(int code) {
    if(code == 'D')
      inputs[P1] = false;
    if(code == 'R')
      inputs[P2] = false;
    if(code == 'E')
      inputs[P3] = false;
    if(code == '1')
      inputs[P4] = false;
    if(code == '2')
      inputs[P5] = false;
    if(code == '3')
      inputs[P6] = false;
    if(code == '4')
      inputs[P7] = false;
    if(code == '5')
      inputs[P8] = false;
    if(code == 'P')
      inputs[P9] = false;
  }
}

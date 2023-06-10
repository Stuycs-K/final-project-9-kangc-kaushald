  import java.util.*;
  Gear gear1 = new Gear(0, 0, 0, 0);
  Gear gear2 = new Gear(0, 0, 0, 0);
  boolean gearFlag1 = true;
  boolean gearFlag2 = false;
  boolean statusFlag1 = true;
  boolean statusFlag2 = true;
  boolean clickFlag = true;
  boolean schoolFlag = true;
  boolean schoolFlag2 = false;
  boolean statusFlag3 = true;
  boolean statusFlag4 = true;
  int countdown;
  int countdown1;
  boolean createPlayer = false;
  Player player1 = new Storm(gear1);
  Player player2 = new Storm(gear2);
  boolean turn1 = true;
  boolean play = false;
  boolean done = false;
  boolean done1 = false;
  boolean done2 = false;
  PImage load;
  boolean school1 = true;
  boolean school2 = true;
  boolean done3 = false;
  PImage damage;
  PImage health;
  PImage resistance;
  PImage pipchance;
  PImage accuracy;
  PImage gameover;
  boolean cast = false;
  boolean one = true;
  boolean two = true;
  boolean three = true;
  boolean four = true;
  boolean five = true;
  int counter1 = 0;
  int counter2 = 0;
  int counter3 = 0;
  int counter4 = 0;
  boolean life1 = false;
  boolean life2 = false;
  boolean storm1 = false;
  boolean storm2 = false;
  boolean ice1 = false;
  boolean ice2 = false;
  
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
  
  if(play){
    if(player1.getHealth() < 0 || player2.getHealth() < 0) {
      done = true;
    }
    
    if(player1.deckSize() < 6) {
      done1 = true;
    }
    
    if(player2.deckSize() < 6) {
      done2 = true;
    }  
  }
  background(255);
  fill(0);
  
  if(!done && !done1 && !done2 && !done3) {
    if(!play){
      if(!gearFlag2 && statusFlag1){
        if(school1){
          textSize(48);
          text("Player 1 select school", 100, 100);
          displaySchool();
          if (keyboardInput.isPressed(Controller.P10)) {
            life1 = true;
            school1 = false;
            countdown += 60;
          }
          if (keyboardInput.isPressed(Controller.P11)) {
            storm1 = true;
            school1 = false;
            countdown += 60;
          }
          if (keyboardInput.isPressed(Controller.P17)) {
            ice1 = true;
            school1 = false;
            countdown += 60;
          }
        } else {
          textSize(48);
          text("Player 1 select gear" , 100 , 100); 
          textSize(24);
          displayGear();
        }
      }
      if(gearFlag1 && keyPressed && !school1 && countdown == 0){
        gear1 = assignGear();
        gearFlag1 = false;
        gearFlag2 = true;
        countdown += 120;
      }
      if(gearFlag2 && statusFlag2){
        if(school2){
          textSize(48);
          text("Player 2 select school", 100, 100);
          displaySchool();
          if (keyboardInput.isPressed(Controller.P10)) {
            life2 = true;
            school2 = false;
            countdown += 60;
          }
          if (keyboardInput.isPressed(Controller.P11)) {
            storm2 = true;
            school2 = false;
            countdown += 60;
          }
          if (keyboardInput.isPressed(Controller.P17)) {
            ice2 = true;
            school2 = false;
            countdown += 60;
          }
        } else {
        textSize(48);
        text("Player 2 select gear" , 100 , 100); 
        textSize(24);
        displayGear();
        statusFlag1 = true;
        }
      }
      if(gearFlag2 && keyPressed && countdown == 0 && !school2){
        gear2 = assignGear();
        gearFlag2 = false;
        createPlayer = true;
      }
      if(createPlayer && !gearFlag1 && !gearFlag2 && !play){
        if(life1)
          player1 = new Life(gear1);
        if(storm1)
          player1 = new Storm(gear1);
        if(ice1)
          player1 = new Ice(gear1);
        if(life2)
          player2 = new Life(gear2);
        if(storm2)
          player2 = new Storm(gear2);
        if(ice2)
          player2 = new Ice(gear2);
        play = true;
        countdown += 120;
      }
   } else { 
      if(!clickFlag) {
         displayCards(player2);
         fill(255,0,255);
         text("Player 2's turn", width/2, height/2 - 150);
         text("Pips: " + player2.getPips(), width/2, height/2 - 125);
         text("Press P to pass", width/2, height/2 + 150);
         fill(0);
         if(countdown == 0){
           attack(player1, player2);
         }
      }
      if(clickFlag) {
        fill(255,0,255);
        text("Player 1's turn", width/2, height/2 - 150);
        text("Pips: " + player1.getPips(), width/2, height/2 - 125);
        text("Press P to pass", width/2, height/2 + 150);
        fill(0);
        displayCards(player1);
        if(countdown == 0){
          attack(player2, player1);
        }
      }
      
      text("Player 1", 175, 50);
      text(": "+player1.getHealth(), 175, 100);
      health = loadImage("Health.png");
      image(health , 100 , 50);
      text(": "+player1.getDamage(), 175, 150);
      damage = loadImage("Damage.png");
      image(damage , 100 , 115);
      text(": "+player1.getResistance(), 150, 215);
      resistance = loadImage("Resistance1.png");
      image(resistance , 100 , 190);
      text(": "+player1.getPipChance(), 150, 250);
      pipchance = loadImage("PipChance.png");
      image(pipchance , 100 , 220);
      
      text("Player 2", width-100, 50);
      text(": "+player2.getHealth(), width - 100, 100);
      image(health , width - 175 , 50);
      text(": "+player2.getDamage(), width - 100, 150);;
      image(damage , width - 175 , 115);
      text(": "+player2.getResistance(), width - 150, 215);
      image(resistance , width - 190 , 190);
      text(": "+player2.getPipChance(), width - 150, 250);  
      image(pipchance , width - 190 , 220);
    }
  } else {
    gameover = loadImage("Game Over.png");
    image(gameover , width/2 - 128 , height/2 - 128);
    if(done){
      if(player1.getHealth() < player2.getHealth()) {
        text("Player 1 has no health", width/2-120, height/2 + 150);
      } else {
        text("Player 2 has no health", width/2-120, height/2 + 150);
      }
    }
    if(done1){
      //text("Player 2 Wins", width/2, height/2 - 50);
      text("Player 1 ran out of cards", width/2 - 120, height/2 + 150);
    }
    if(done2){
      //text("Player 1 Wins", width/2, height/2 - 50);
      text("Player 2 ran out of cards", width/2 - 120, height/2 + 150);
    }
  }
}

public Gear assignGear(){
  Gear gear = new Gear(0, 0, 0, 0); //base gear with no added stats
  if (keyboardInput.isPressed(Controller.P1)) {
    gear = new Gear(100 , .2 , .05, .3);//damage heavy gear
  }
  if (keyboardInput.isPressed(Controller.P2)) {
    gear = new Gear(300 , .05 , .2, .1);//resistance heavy gear
  }
  if (keyboardInput.isPressed(Controller.P3)) {
    gear = new Gear(200 , .1 , .1, .2);//balanced gear
  } 
  return gear;
}

public School assignSchool(Gear gear){
  School school = new School(); //base gear with no added stats
  if (keyboardInput.isPressed(Controller.P10)) {
    school = new Life(gear);//damage heavy gear
  }
  if (keyboardInput.isPressed(Controller.P11)) {
    school = new Storm(gear);//resistance heavy gear
  }
  return school;
}

void attack(Player player1, Player player2){
  int i = 0;
  if (keyboardInput.isPressed(Controller.P4)) {
    i = 0;
    cast = true;
  }
  if (keyboardInput.isPressed(Controller.P5)) {
    i = 1;
    cast = true;
  }
  if (keyboardInput.isPressed(Controller.P6)) {
    i = 2;
    cast = true;
  } 
  if (keyboardInput.isPressed(Controller.P7)) {
    i = 3;
    cast = true;
  }
  if (keyboardInput.isPressed(Controller.P8)) {
    i = 4;
    cast = true;
  }
  if (keyboardInput.isPressed(Controller.P12) && five) {
    Card discard = player2.getCard(0);
    cast = false;
    counter1++;
    counter2++;
    counter3++;
    counter4++;
    five = false;

  }
  if (keyboardInput.isPressed(Controller.P13) && four) {
    Card discard = player2.getCard(1-counter4);
    cast = false;
    four = false;
    counter1++;
    counter2++;
    counter3++;
  }
  if (keyboardInput.isPressed(Controller.P14) && three) {
    Card discard = player2.getCard(2-counter3);
    cast = false;
    three = false;
    counter1++;
    counter2++;
  } 
  if (keyboardInput.isPressed(Controller.P15) && two) {
    Card discard = player2.getCard(3-counter2);
    cast = false;
    two = false;
    counter1++;
  }
  if (keyboardInput.isPressed(Controller.P16) && one) {
    Card discard = player2.getCard(4-counter1);
    cast = false;
    one = false;
  }
  if (keyboardInput.isPressed(Controller.P9)) {
      clickFlag = !clickFlag;
      countdown += 120;
      player2.addPip();
      double rand = Math.random();
      if(player2.getPipChance() > rand){
        player2.addPip();
      }
    one = true;
    two = true;
    three = true;
    four = true;
    five = true;
    counter1 = 0;
    counter2 = 0;
    counter3 = 0;
    counter4 = 0;
  }
  if(keyPressed && !keyboardInput.isPressed(Controller.P9) && cast) {
    Card spell = player2.showCard(i);
    if(spell.getDamage() < 0){
      spell = player2.getCard(i);
      player2.setHealth(player2.getHealth() - spell.getDamage());
      player2.setPips(player2.getPips() - spell.pips());
      if(player2.getHealth() > player2.maxHealth()){
        player2.setHealth(player2.maxHealth());
      }
    } else {
      if(spell.getDamage() == 0){
        if(spell.getMultiplier() == .5){
          player2.addShield();
        } else {
          player2.addBlade();
        }
      } else { 
        if(spell.pips() <= player2.getPips()){
          double rand1 = Math.random();
          if(spell.getAccuracy() > rand1){
            spell = player2.getCard(i);
            int damage = (int)(spell.getDamage() * player2.getDamage());
            damage /= player1.getResistance();
            if(player2.getBlade() > 0){
              damage *= 1.4;
              player2.removeBlade();
            }
            if(player1.getShield() > 0){
              damage *= .5;
              player1.removeShield();
            }
            player1.setHealth(player1.getHealth() - damage);
            player2.setPips(player2.getPips() - spell.pips());
          } else {
            background(255, 0, 0);
            spell = player2.getCard(i);
          }
        }
      }
    }
      clickFlag = !clickFlag;
      countdown += 120;
      player2.addPip();
      double rand = Math.random();
      if(player2.getPipChance() > rand){
        player2.addPip();
      }
    one = true;
    two = true;
    three = true;
    four = true;
    five = true;
    counter1 = 0;
    counter2 = 0;
    counter3 = 0;
    counter4 = 0;
  }
}

void displayGear(){
      text("Health" , 350 , 200);
      text("100" , 375 , 250);
      text("Damage" , 350 , 300);
      text(".2" , 375 , 350);
      text("Resistance" , 350 , 400);
      text(".05" , 375 , 450);
       text("PipChance" , 350 , 500);
      text(".3" , 375 , 550);
      text("Health" , 500 , 200);
      text("300" , 525 , 250);
      text("Damage" , 500 , 300);
      text(".05" , 525 , 350);
      text("Resistance" , 500 , 400);
      text(".2" , 525 , 450);
      text("PipChance" , 500 , 500);
      text(".1" , 525 , 550);
      text("Health" , 650 , 200);
      text("200" , 675 , 250);
      text("Damage" , 650 , 300);
      text(".1" , 675 , 350);
      text("Resistance" , 650 , 400);
      text(".1" , 675 , 450);
      text("PipChance" , 650 , 500);
      text(".2" , 675  , 550);
      fill(255, 0, 255);
      text("Press D", 350, 600);
      text("Press E", 650, 600);
      text("Press R" , 500, 600);
      fill(0);
      line(325 , 150 , 475 , 150);
      line(325 , 150 , 325 , 600);
      line(325 , 600 , 475 , 600);
      line(475 , 150 , 475 , 600);
      line(475 , 150 , 625 , 150);
      line(475 , 150 , 475 , 600);
      line(475 , 600 , 625 , 600);
      line(625 , 150 , 625 , 600);
      line(625 , 150 , 775 , 150);
      line(625 , 150 , 625 , 600);
      line(625 , 600 , 775 , 600);
      line(775 , 150 , 775 , 600);
      
}

void displayCards(Player player) {
  int counter = 0;
  if(one)
    counter++;
  if(two)
    counter++;
  if(three)
    counter++;
  if(four)
    counter++;
  if(five)
    counter++;
  for(int x = 0; x < counter; x++){
    Card current = player.showCard(x);
    load = loadImage(current.getName()+ ".png");
    image(load , width/6 * (x+1) , height/2-100);
    if(current.pips() > player.getPips()){
      fill(255,0,0);
    } else {
      fill(0,255,0);
    }
    text("Press " + (x+1) , width/6 * (x+1)+25 , height/2+125);
    fill(0);
  }
}

void displaySchool(){
      text("Life" , 350 , 150);
      text("Health" , 350 , 200);
      text("1000" , 375 , 250);
      text("Damage" , 350 , 300);
      text("1.05" , 375 , 350);
      text("Resistance" , 350 , 400);
      text("1.05" , 375 , 450);
      text("PipChance" , 350 , 500);
      text(".2" , 375 , 550);
      text("Storm" , 500 , 150);
      text("Health" , 500 , 200);
      text("800" , 525 , 250);
      text("Damage" , 500 , 300);
      text("1.3" , 525 , 350);
      text("Resistance" , 500 , 400);
      text("1.0" , 525 , 450);
      text("PipChance" , 500 , 500);
      text(".2" , 500  , 550);
      line(325 , 150 , 475 , 150);
      line(325 , 150 , 325 , 550);
      line(325 , 550 , 475 , 550);
      line(475 , 150 , 475 , 550);
      line(475 , 150 , 625 , 150);
      line(475 , 150 , 475 , 550);
      line(475 , 550 , 625 , 550);
      line(625 , 150 , 625 , 550);
      line(625 , 150 , 775 , 150);
      line(625 , 150 , 625 , 550);
      line(625 , 550 , 775 , 550);
      line(775 , 150 , 775 , 550);
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
  static final int P10 = 9;
  static final int P11 = 10;
  static final int P12 = 11;
  static final int P13 = 12;
  static final int P14 = 13;
  static final int P15 = 14;
  static final int P16 = 15;
  static final int P17 = 16;
  static final int P18 = 17;
  
  boolean [] inputs;

  public Controller() {
    inputs = new boolean[18];
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
     if(code == 'L')
      inputs[P10] = true;
     if(code == 'S')
      inputs[P11] = true;
     if(code == 'Z')
      inputs[P12] = true;
     if(code == 'X')
      inputs[P13] = true;
     if(code == 'C')
      inputs[P14] = true;
     if(code == 'V')
      inputs[P15] = true;
     if(code == 'B')
      inputs[P16] = true;
     if(code == 'I')
      inputs[P17] = true;
     if(code == 'M')
      inputs[P18] = true;
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
    if(code == 'L')
      inputs[P10] = false;
    if(code == 'S')
      inputs[P11] = false;
     if(code == 'Z')
      inputs[P12] = false;
     if(code == 'X')
      inputs[P13] = false;
     if(code == 'C')
      inputs[P14] = false;
     if(code == 'V')
      inputs[P15] = false;
     if(code == 'B')
      inputs[P16] = false;
     if(code == 'I')
      inputs[P17] = true;
     if(code == 'M')
      inputs[P18] = true;
  }
}

# Work Log

## Chanmin Kang
### date 5/22/23
info
//Created Gear(instance variables, constructors, accessor methods)
//Player instance variables
//Added getSchoolType accessor method for School class
//basic setup and draw methods so program compiles

### date 5/23/23
had the screen size set up and tried to add the health bar on screen but the health bar is not printing
must go back and make some revision

### date 5/24/23
created the method for button push as a test version to print out 5 different numbers depending on the number key pressed

### date 5/25/23
Updated player by a bit and mainly worked on fixing the stat application process and added gear types

### date 5/26/23
Tried to update the gear and understand the gear mechanism
info


## Dean Kaushal
### date 5/22/23
info
//Created the Player class(instance variables, constructors, accessor methods)
//Created the School class(instance variables, constructors, accessor methods)
//Created the Card class with basic instance variables damage and pips, but need to update it so spells can do other things than just damage

### date 5/23/23
info
//Created an Imp class, which is a spell that only does damage
//Brainstorming ways to create cards that do different things(like buff/debuff)
//Researching how to create a turn-based game

### date 5/24/23
info
//created a SupportCard class which should be a parent function for future buff/debuff cards added
//changed Player, Gear, and School classes to fit updated logic about Player stats

### date 5/25/23
info
//created a Life class which extends School and changed Player stats based on it
//came up with a new set of class relations. SchoolType extends School extends Player
//changed instance variables for Player accordingly

### date 5/26/23
info
//move instance variables from School to Player because the parent class should have all of the instance variables
//edited constructors in Player, School, and SchoolTypes to take in a piece of Gear and sets stats based off it
//looking into how to create a turn based game

### date 5/27/23 ### date 5/28/23 ### date 5/29/23
info
//successfully created two different pieces of gear based on user input
//added methods assignGear() and attack(Player, Card) to make code cleaner
//added flags for creating Gear and Player objects only once
//added a countdown variable to add the delay of button pressed
//added a mouseClicked() method that uses the attack method and does damage
//successfully created two different Players that can attack each other

### date 5/30/23
info
//changed the mouseClicked() action to mousePressed so it could be run every time inside of draw
//added a play flag that turns on when Player and Gear setup is done
//added cards of tier 2-6 with updated damage
//set the value of deck equal to a new method i wrote createDeck
//imported java.util.* to use features like Collections to shuffle the createDeck
//added accessor and mutator methods to Player that will be needed for turn based gameplay

## date 5/31/23
info
//changed the mousePressed action to keyPressed so the user has multiple things they can do
//Players are now able to attack each other with Cards from their createDeck
//added displayCard and showCard methods that allow the user to see what their card does before they use it
//added names to all of the Cards
//edited the getCard method to take an index and changed the keys that do damage

## date 6/1/23
info
//changed the attack method to take 2 Players as parameters and do damage based off of Player stats
//wrote a displayCards method that shows 5 cards in the Players hand and allows them to use it
//added the pip mechanic so that Players cant just use any card they want
//added a pass mechanic so that Players can build up pips
//added deckSize methods and flags to prevent index out of bounds errors
//edited the screen to make it more readible

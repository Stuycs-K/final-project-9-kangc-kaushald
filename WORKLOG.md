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

### date 5/27/23
Edited the wizard101 to create a new gear instead of editing the already existing Gear

### date 5/28/23
Added some description on the sections of code on Wizard101 to make it seem more organized

### date 5/29/23
Edited the logic of attacking to make sure the game is turn based game instead of one side attacking

### date 5/30/23
Edited the code to print the the status on screen for each players and gear selection page

### date 5/31/23
Got the feedback for why the mouseClicked method didn't worked

### date 6/1/23
The MVP was due so tested out our demo version by a little bit to see if everything worked

### date 6/3/23 date 6/4/23 date 6/5/23
Tried to import an image of cards to display instead of data table for card display but it didn't work out nicely

### date 6/6/23
Successfully imported an image to display for CardSuperClass

### date 6/7/23
Worked on the Storm School to completion


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

## date 6/2/23 ## date 6/3/23 ## date 6/4/23
info
//added another instance variable, pipChance, that will allow a Player to gain 2 pips after a round instead of 1 if they get lucky
//edited the Gear class, Player class, and assignGear class to use the pipChance variable to give Players power pips
//added the power pip mechanic to the attack method so that if a Player gets lucky, 2 pips will spawn instead of 1
//the pass feature also allows the Player to gain power pips

## date 6/5/23
info
//created the CardSuperClass class which will be a parent to Card and SupportCard so they can be added to the same deckSize
//edited the Card and SupportCard classes to be childs of CardSuperClass
//added a Blade class that boosts card damage by 40 percent
//added a Shield class that reduces incoming damage by 50 percent

## date 6/6/23
info
//added a boostDamage method in the Card class to give them a range of damage, like how the game works
//edited the base damage in all of the cards to match the card art
//implemented a random integer that will be generated for every new Card and add on to the base damage

## date 6/7/23
info
//added an accuracy instance variable which gives the card the ability to fizzle if the user get unlucky
//added accuracy stats to all Cards and changed Card constructor accordingly
//edited the displayCards method to highlight the Press prompts as green when the Card can be used and red when it cannot be used
//edited the attack method to use the accuracy stat and flash the screen red when a Player fizzles
//fixed the power pip random logic, it was doing the opposite as intended before

## date 6/8/23
info
//tried to add a feature where the user can select their Player's school(unsuccessful)
//added a displaySchool method that shows the stats of each SchoolType
//started to work on the discard feature which allows the user to get rid of Cards in the Player's hand

## date 6/9/23
info
//updated the logic for discard by adding the cast flag which changes as Cards are used/removed
//added counter variables to fix discard logic(works)
//added a support array instance variable to Player which keeps track of shields and blades
//edited the Card class to have multiplier instance variable, thinking of getting rid of the CardSuperClass
//added shield and blade accessor and mutator methods to test and use them in battle

## date 6/10/23
info
//added a new screen at the start of the game where both users can select what School they want their Player to be
//added the ability for a Player to heal themselves(pixie card)
//fixed minor code and logic issues
//changed the Cards in each School's deck to build school identity

## date 6/11/23
info
//updated the README file
//minor graphics changes and School stats

## Working features
//Both Players can select from 3 schools: Life, Gear, and Ice.
//Both Players can select a piece of Gear that alters their core stats
//Players can use number keys 1-5 to use Cards in their hand
//Players can use bottom row letter keys Z-B to discard Cards in their hand
//Players can press P to pass 
//The pip system works as well as the power pip chance
//The support card deck array works, allowing Players to use Shields and Blades
//Damage and resistance variables from Player stats and Shields/Blades effect damage accordingly
//Healing Cards work and don't push Player health over their max health
//Card art loads correctly for each Card
//Game over logic works

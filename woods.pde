import processing.sound.*;
SoundFile file;

PImage woods;
PImage river;
PImage bear;
PImage house;
PImage castel;
PImage grass;
PImage grave;

PFont font;


int stage = 0;


void setup(){
  size(600, 450);
  woods = loadImage ("woods.jpg");
  river = loadImage ("river.jpg");
  bear = loadImage ("bear.jpg");
  house = loadImage ("house.jpg");
  castel = loadImage ("castel.jpg");
  grass = loadImage ("grass.jpg");
  grave = loadImage ("grave.jpg");

  
  font = createFont("framd.ttf", 20);
  
  showImage(woods);
  showText("INTO THE WOODS", - 40, 60);
  showText("Go on the adventure, and Save the princess!", 10, 18);
  showText("Continue : press (c)", 30, 18);
  showText("Exit : press (e)", 50, 18);
  
  file = new SoundFile(this, "Fall_of_the_Solar_King.mp3");
  file.loop();

  

}

void draw(){
  
}

void keyPressed(){
  if(stage == 0){
    if(key == 'c' || key == 'C'){
      showImage(river);
      showText("You drop your axe when you cross the river.", - 30, 18);
      showText("The god of river has got your axe back. Which one is yours?", - 10, 18);
      showText("Gold Axe : press (1)", 30, 18);
      showText("Silver Axe : press (2)", 50, 18);
      showText("Neither of them : press (3)", 70, 18);

      stage = 1;
      
    }else if(key == 'e' || key == 'E'){
      showImage(grave);
      showText("INTO THE WOODS", - 40, 60);
      showText("Play the game : press (p)", 10, 14);
      
      stage = 5;
      
    }
  }
  
  if(stage == 1){
    if(key == '3'){
      showImage(bear);
      showText("You are honest. You can choose one of the axes with you.", - 50, 18);
      showText("You meet the bear afterwards, and use your axe to kill it.", - 30, 18);
      showText("SURVIVED!", - 5, 30);
      showText("Continue : press (c)", 30, 18);

      stage = 2;
      
    }else if(key == '2'){
      showImage(grave);
      showText("You are a liar!!! Your axe is made by iron.", - 50, 18);
      showText("You can't take your axe back.", - 30, 18);
      showText("You have nothing to fight with the bears, so you are killed.", - 10, 18);
      showText("DIE on the road!", 30, 30);
      showText("Play again : press (p)", 70, 14);
      
      stage = 5; 
      
    }else if(key == '1'){
      showImage(grave);
      showText("You are a liar!!! Your axe is made by iron.", - 50, 18);
      showText("You can't take your axe back.", - 30, 18);
      showText("You have nothing to fight with the bears, so you are killed.", - 10, 18);
      showText("DIE on the road!", 30, 30);
      showText("Play again : press (p)", 70, 14);
      
      stage = 5;
      
    }
  }
  
  if(stage == 2){
    if(key == 'c' || key == 'C'){
      showImage(house);
      showText("You just fought with a bear. You are STARVING!!!", - 170, 18);
      showText("You see a small house and smell the food.", - 150, 18);
      showText("You run to the house and knock on the door.", - 130, 18);
      showText("A woman opens the door, and invites you to have dinner together.", - 110, 18);
      showText("Go in and have dinner : press (g)", - 90, 18);
      showText("Refuse and keep on the adventure : press (r)", - 70, 18);
      
      stage = 3;
      
    }
  }
  
  if(stage == 3){
    if(key == 'r' || key == 'R'){
      showImage(castel);
      
      showText("The woman is a witch. She likes to eat people.", 40, 18);
      showText("She ate the person who knocked on her door last night.", 60, 18);
      showText("SURVIVED! But still very hungry.", 90, 24);
      showText("You see a castel and go asking for some food.", 130, 18);
      showText("They provide you some grapes and an apple.", 150, 18);
      showText("Choose the GRAPES : press (g)", 170, 18);
      showText("Choose the APPLE : press (a)", 190, 18);
      
      stage = 4;
      
    }else if(key == 'g' || key == 'G'){
      showImage(grave);
      showText("The woman is a witch. She likes to eat people.", - 50, 18);
      showText("You are poisoned to sleep and eaten by her.", - 30, 18);
      showText("DIE on the road!", 30, 30);
      showText("Play again : press (p)", 70, 14);
      
      stage = 5;
      
    }
  }
  
  if(stage == 4){
    if(key == 'g' || key == 'G'){
      showImage(grass);
      showText("The queen in the castel wants to be the prettiest woman in the world.", - 50, 17);
      showText("She knows you're going to save the pretty princess.", - 30, 17);
      showText("She's going to poison you to death.", - 10, 17);
      showText("SURVIVED and SAVED THE PRINCESS!", 30, 30);
      showText("Play again : press (p)", 70, 14);

      
      stage = 5;
      
    }else if(key == 'a'){
      showImage(grave);
      showText("The queen in the castel wants to be the prettiest woman in the world.", - 50, 17);
      showText("She knows you're going to save the pretty princess.", - 30, 17);
      showText("So, she poisoned you to death.", - 10, 17);
      showText("DIE on the road!", 30, 30);
      showText("Play again : press (p)", 70, 14);
      
      stage = 5;
      
    }
  }
  
  if(stage == 5){
    if(key == 'p' || key == 'P'){
      showImage(woods);
      showText("INTO THE WOODS", - 40, 60);
      showText("Go on the adventure, and Save the princess!", 10, 18);
      showText("Press (c) to Continue", 30, 18);
      showText("Press (e) to Exit", 50, 18);
      
      stage = 0;
      
    }
  }

 
}

void showImage(PImage showImage){
  image(showImage, 0, 0, 600, 450);
}

void showText(String text, int yPosMov, int size){
  textSize(size);
  fill(255);
  textAlign(CENTER, CENTER);
  text(text, width/2, height/2 + yPosMov);
}
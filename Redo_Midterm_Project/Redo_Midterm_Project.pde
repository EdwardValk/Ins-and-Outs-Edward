

//creating a simple game with 3 game states: pregame, game, game over
//click the mouse to advance the states

PImage KHLogo; 
PImage FFLogo;
PImage Talesof;
PImage Cloud;
PImage Sora;
PImage Yuri;
PImage KHGauge;
PImage Goofy;
PImage Noctis;
PImage Squall;
PImage Flynn;
PImage Status;

int gameState = 0;
int quizState = 1;
int rpgState = 2;



String state= "RPG Quiz"; //Creating state variable aclled scene

void setup() {
  size(1280, 930);
  textAlign(CENTER);
  textSize(36);
  KHLogo=loadImage("KHLogo.png");
  FFLogo=loadImage("FFLogo.png");
  Talesof=loadImage("Talesof.png");
  Sora=loadImage("Sora.png");
  Cloud=loadImage("Cloud.png");
  Yuri=loadImage("Yuri.png");
  
  
  
}


void draw() {
  if (state=="RPG Quiz") {
    background(0);
    text("What Kind of JRPG Gamer are you?", width/2, height/10);
    text("Press 1, 2, 3, for a specific JRPG.", width/2, height/7);
    text("1 for Action Oriented-S", width/6, height/1.7);
    text("2 for Tactical Style-F", width/1.9, height/1.7);
    text("3 for Both-T", width/1.2, height/1.7);
  } else if (state=="RPG") 
  {
    text("Pick a Game.", width/2, height/3);
  }
  if (key== '1') {
    image(KHLogo, 100, 530);
    gameState = 1;
  }
    else if (key== 's' && gameState == 1) {
      //println("Hello");
      game();
    }
  

  else if (key== '2') {
    image(FFLogo, 225, 600);
    quizState = 2;
  }
    else if (key== 'f' && quizState ==2) {
      //println("Hello again");
      quiz();
    } 

  else if (key== '3') {
    image(Talesof, 900, 600);
    rpgState = 3;
  }
  
  else if (key== 't' && rpgState ==3) {
      //println("Hello once again");
      rpg();
    }
  
  println ("gameState: " + gameState);
  println ("quizState: " + quizState);
  println ("rpgState: " + rpgState);
} 

void game() {
  background(0);
  image(Sora, 100, 400);
  text("THE KINGDOM HEARTS SERIES", width/2, height/10);
  text("Main Character", width/2, height/4);
  text("Sora", width/2, height/3);
  text("Age: 16-17", width/7, height/2.5);
  text("Gameplay: Quick and Brutal.", width/2.5, height/2);
  text("Weapon: Kingdom Key", width/2.5, height/1.8);
  text("Abilities: Anime or whatever...", width/2.3, height/1.6);
  text("Party Members:", width/2.9, height/1.5);
  text("Dolan and Gooby", width/1.7, height/1.5);
  text("Magic:", width/3, height/1.4);
  text("Fire, Blizzard, Thunder", width/1.8, height/1.4);
  text("You prefer a style in which", width/2.1, height/1.3);
  text("is fast and impactful, while your using combos,", width/1.7, height/1.2);
  text("while also preforming flashy moves,", width/1.7, height/0.8);
  text("and if you picked 1 you most likely", width/1.7, height/0.6);
  text("watch anime you filthy weeb.", width/1.7, height/0.4);
 
}

void quiz() {
  background(0);
  image(Cloud, 50, 100);
  text("THE FINAL FANTASY SERIES ", width/4, height/9);
  text("-Your more a patient player", width/2.1, height/6);
  text("you seek to have as many options as", width/1.8, height/5);
  text("possible and forming different plans", width/1.8, height/4);
  text("to combat a situation,", width/2.2, height/3.5);
  text("wether it be planning out item usage,", width/1.8, height/3.1);
  text("using Libra for enemy weaknesses,", width/1.9, height/2.8);
  text("curing staus ailments, etc.", width/2.1, height/2.5);
  text("(Unless your Andres who doesn't have time for that.)", width/1.8, height/2);
  
  
}

void rpg() {
  background(0);
  image(Yuri, 50, 100);
  text("THE TALE SERIES", width/1.7, height/10);
  text("Your into a more huge combination", width/1.7, height/6);
  text("of tactical and falshy combat.", width/1.7, height/4.8);
  text("using a manual and automatic system", width/1.7, height/4.2);
  text("while also performing flashy combos", width/1.7, height/3.7);
  text("with an emersive cast.", width/1.7, height/3.3);
}



/*void mousePressed(){ 
 if (state=="RPG Quiz"){
 state = "RPG Quiz"; 
 }
 }  
 
 void keyPressed(){
 if (state== "1")*/

//Edward Brakye
// Revision 
// Ins and Outs


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
PImage Logo;
PImage Heart;
PImage Combo;
PImage Combo2;
PImage KH2Sora;
PImage BRAVE;
PImage The_End;
PImage Velvet;
PImage Repede;
PImage ReynnLann;
PImage spells;
PImage NT;


int gameState = 0;
int quizState = 1;
int rpgState = 2;
int KhScreenState = 3;
int KhexplainState = 4;
int FFScreenState = 5;
int TalesScreenState = 6;
int EndState = 7;




String state= "RPG Quiz"; 

void setup() {
  size(1280, 930);
  textAlign(CENTER);
  textSize(36);
  Heart=loadImage("Heart.png");
  FFLogo=loadImage("FFLogo.png");
  Talesof=loadImage("Talesof.png");
  Sora=loadImage("Sora.png");
  Cloud=loadImage("Cloud.png");
  Yuri=loadImage("Yuri.png");
  KHGauge=loadImage("KHGauge.png");
  Status=loadImage("Status.png");
  Logo=loadImage("Logo.png");
  Combo=loadImage("Combo.png");
  Combo2=loadImage("Combo2.png");
  KH2Sora=loadImage("KH2Sora.png");
  Noctis=loadImage("Noctis.png");
  BRAVE=loadImage("BRAVE.png");
  The_End=loadImage("The_End.png");
  Velvet=loadImage("Velvet.png");
  Repede=loadImage("Repede.png");
  ReynnLann=loadImage("ReynnLann.png");
  spells=loadImage("spells.png");
  NT=loadImage("NT.png");
  
  
  
  
}


void draw() {
  if (state=="RPG Quiz") {
    background(0);
    text("What Kind of JRPG Gamer are you?", width/2, height/10);
    text("Press 1, 2, 3, for a specific JRPG.", width/2, height/7);
    text("1 for Action Oriented", width/6, height/1.7);
    text("Press S for 1", width/6, height/1.6);
    text("2 for Tactical Style", width/1.9, height/1.7);
    text("Press F for 2", width/1.9, height/1.6);
    text("3 for Both", width/1.2, height/1.7);
    text("Press T for 3", width/1.2, height/1.6);
    
   } 
 else if (state=="RPG") 
  {
    text("Pick a Game.", width/2, height/3);
  }
  if (key== '1') {
    image(Heart, 100, 580);
    gameState = 1;
  }
    else if (key== 's' && gameState == 1) {
      //println("Hello");
      game();
    }
     
     else if (key== 'd' && KhScreenState == 3) { 
        //println("Hello");
        KhScreen();
    }
    
    else if (key== 'c' && EndState ==7) {
      //println("Hello again");
      End();
    }

  else if (key== '2') {
    image(FFLogo, 225, 600);
    quizState = 2;
  }
    
   else if (key== 'f' && quizState ==2) {
      //println("Hello again");
      quiz();
    }
    
     else if (key== 'g' && FFScreenState ==5) {
      //println("Hello again");
      FFScreen();
    }
    
    else if (key== 'h' && EndState ==7) {
      //println("Hello again");
      End();
    } 

  else if (key== '3') {
    image(Talesof, 900, 600);
    rpgState = 3;
  }
  
  else if (key== 't' && rpgState ==3) {
      //println("Hello once again");
      rpg();
      
  }
      
      else if (key== 'r' && TalesScreenState ==6) {
      //println("Hello once again");
      TalesScreen();
    }
    
    else if (key== 'z' && EndState ==7) {
      //println("Hello again");
      End();
  
  println ("gameState: " + gameState);
  println ("quizState: " + quizState);
  println ("rpgState: " + rpgState);
  println ("KhScreenState" + KhScreenState);
  println ("FFScreenState" + FFScreenState);
    }
  println ("TalesScreenState" + TalesScreenState);
  println ("EndState" + EndState);
  
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
  text("Press 'd' to continue.", width/1.2, height/1);
  
 
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
  text("Press 'g' to continue.", width/1.2, height/1);
  image(Status, 300, 500);
  
  
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
  text("Press 'r' to continue.", width/1.2, height/1);
}

void KhScreen() {
  background(0);
  image(KHGauge, 50, 100);
  image(Combo, 50, 250);
  image(Combo2, 50, 400);
  image(KH2Sora, 400,470);
  text("Press 'z' to continue.", width/1.2, height/1);
}

void FFScreen() {
  background(0);
  image(NT, 1, 25);
  image(Noctis, 480, 100);
  image(ReynnLann, 500, 550);
  text("Press 'z' to continue.", width/1.2, height/1);


}

void TalesScreen() {
  background(0);
  image(BRAVE, 50, 100);
  image(Velvet, 500, 50);
  image(Logo, 200, 600);
  image(Repede, 600, 500);
  text("Press 'z' to continue.", width/1.2, height/1);


}


void End() {
  background(0);
  image(The_End, 500, 300);
  text("Press anything to play restart.", width/2, height/8);
  
  
}







/*void mousePressed(){ 
 if (state=="RPG Quiz"){
 state = "RPG Quiz"; 
 }
 }  
 
 void keyPressed(){
 if (state== "1")*/

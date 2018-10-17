//creating a simple game with 3 game states: pregame, game, game over
//click the mouse to advance the states

PImage KHLogo; 
PImage FFLogo;
PImage Talesof;
PImage Cloud;
PImage Sora;
PImage Yuri;

int gameState = 0;

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
    background(255, 0, 0);
    text("What Kind of RPG Gamer are you?", width/2, height/10);
  } else if (state=="RPG") 
  {
    text("Pick a Game.", width/2, height/3);
  }
  if (key== '1') {
    image(KHLogo, 100, 500);
    gameState = 1;

    if (key== 's' && gameState == 1) {
      //println("Hello");
      game();
    }
  }

  else if (key== '2') {
    image(FFLogo, 225, 600);
  }

  else if (key== '3') {
    image(Talesof, 900, 600);
  }
} 

void game() {
  background(0, 0, 255);
  image(Sora, 50, 100);
}
/*void mousePressed(){ 
 if (state=="RPG Quiz"){
 state = "RPG Quiz"; 
 }
 }  
 
 void keyPressed(){
 if (state== "1")
 */

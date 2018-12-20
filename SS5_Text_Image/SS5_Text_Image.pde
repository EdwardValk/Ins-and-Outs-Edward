//Edward Brakye
// SS5 Text +Image Revision
// 11/19/18
//

PImage Goku;
PImage GokuSsj2;
PImage GokuSsj3;
PImage Dbz;
PImage D1;


int GokuState = 0;
int DBZState = 1;
int Goku2State = 2;
int Dbz2State = 3;
int EndState = 4;

String state= "Saiyan"; 


void setup() {
  size (1125, 900);
  background(0);
  textAlign(CENTER);
  textSize(36);
  Goku= loadImage("Goku.png");
  Dbz= loadImage("Dbz.png");
  GokuSsj2= loadImage("GokuSsj2.png");
  GokuSsj3= loadImage("GokuSsj3.png");
}

void draw() {
  if (state=="Saiyan") {
    background(0);
    text("Hi, my name is Goku.", width/2, height/10);
    text("Press 1 for Super Saiyan", width/2, height/6);
    text("Press 2 for Super Saiyan 2", width/2, height/4);
    text("Press 3 for Super Saiyan 3", width/2, height/3);
  }
  
 else if (state=="RPG") 
  {
    text("Pick a Game.", width/2, height/3);
  }
  if (key== '1') {
    image(Goku, 300, 300);
    DBZState = 1;
  }
    if (key== '2') {
    image(GokuSsj2, 200, 300);
    Goku2State = 2;
     }
     if (key== '3') {
    image(GokuSsj3, 250, 200);
    Dbz2State = 2;
     }
     
}

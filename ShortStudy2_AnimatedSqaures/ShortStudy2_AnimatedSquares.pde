int number= 500;
//declare variable called number and assign value of 50

float grow= 0.5;
// declare variable called grow and assign value of 0.5
float move= 0.10;

void setup () {
  size (800, 800);
  
}

void draw(){
   background (255, 0, 0); 
   grow=grow+0.2;
   rect (move,100, 100, 100);
   move= move + 2.70; //mpove
   rect (move,250, 100, 100);
   rect (move,400, 100, 100);
   rect (move,550, 100, 100);
   
}
 
  
void keyPressed() {
  background (0, 0, 255);
  triangle(30, 75, 58, 20, 86, 75);
  grow =grow+400; 
}

int value = 500;

void mousePressed() {  
  if (value == 0) {
    value = 255;
  } else {
    value = 0;      
  }
  background (0, 255, 0);
  triangle(30, 75, 58, 20, 86, 75);
  grow =grow+100;
}  

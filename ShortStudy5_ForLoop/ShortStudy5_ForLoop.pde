
float r= 255;
float g= 255;
float b= 255;

int x= 50;
int y= 50;

void setup() {
  size(700, 700);
  background(255);
  rectMode(CENTER);
}

void keyPressed() {
  //statements
  r= random(28, 255);
  g= random(69, 100);
  b= random(10,244);
}

void draw() {
  //while loop drawing ellipses from left to right
  while (x<width) { //code in braces runs if boolean is true
    fill(255, 0, 0);
    ellipse (x, height/2, 75, 75);
    x= x+100;
  }  

  //while loop drawing rectangles from top to mid screen
  while (y<height/1) {
    fill(0, 255, 0);
    rect (width/2, y, 50, 50);
    y= y+75;
  }
}
 

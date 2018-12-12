// Dragon Ball Seizure
//Edward Brakye
// Short Study 4 Revision
// Key Press for Background Change

float r= 255;
float g= 255;
float b= 255;


void setup () {
  size (800, 800);

}

void draw() {
background (r, g, b);
fill(204, 102, 0);
ellipse(385, 350, 300, 300);
fill(0);
ellipse(385, 440, 30, 35);
ellipse(300, 350, 30, 35);
ellipse(390, 260, 30, 35);
ellipse(470, 350, 30, 35);
if (mouseX > 350){
fill (0);
ellipse(385, 350, 300, 300); }
fill(255, 0, 0);
ellipse(385, 440, 30, 35);
ellipse(300, 350, 30, 35);
ellipse(390, 260, 30, 35);
ellipse(470, 350, 30, 35);

}

void keyPressed() {
  //statements
  r= random(28, 255);
  g= random(69, 100);
  b= random(10,244);
}

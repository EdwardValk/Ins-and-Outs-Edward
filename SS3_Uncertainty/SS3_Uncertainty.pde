// Edward Brakye: Stretched Out Triangle

void setup () {
  size (800, 800);
  background (0, 200, 0);
}

int grow = 250;

void draw(){
}

void mousePressed() {
background (255, 0, 0);
triangle(100, 0, 0, 20+grow,20+grow,20+grow);
grow = grow+10;
}


void keyPressed() {
background (0, 0, 255);
triangle(100, 50, 10, 20+grow,20+grow,20+grow);
grow = grow+20;
}

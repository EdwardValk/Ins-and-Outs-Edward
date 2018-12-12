//Edward Brakye
// SS5 Text +Image Revision
// 11/19/18
//

PImage  SsjGoku;
PImage  DBZLogo;

float opacity=0;
float fade = 10;

void setup() {
  size (1080, 720);
  background(255);
  imageMode(CENTER);
  SsjGoku= loadImage("SsjGoku.png");
  DBZLogo= loadImage("DBZLogo.png");
}

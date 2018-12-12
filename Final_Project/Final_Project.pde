import processing.video.*;
import processing.serial.*; //imports Serial library from Processing
import processing.sound.*;

 SoundFile soundfile;
 
Movie theMov; 
int VideoPlaying;
 
boolean Vid1 = false;
boolean Vid2 = false;

 
//Videos
Movie Video1; 
Movie Video2; 
 
//Fim Videos
 
void setup() { 
  size(640, 360);
 
  //videos
  Video1 = new Movie(this, "Clip1.mp4");
  Video2 = new Movie(this, "Clip2.mp4");

  //Fim videos
  
   // Load a soundfile
 // soundfile = new SoundFile(this, "vibraphon.aiff");
}
 
void draw() { 
 
  button();
  if (Vid1) {
 
    println("video1");
    Video2.stop();
    background(0);
    Video1.play();
    background(0);
    image(Video1, 0, 0, width, height);
  }
 
  if (Vid2) {
    println("video2");
    Video1.stop();
    background(0);
    Video2.play();
    image(Video2, 0, 0, width, height);
  }
}

void movieEvent(Movie m) { 
  m.read();
} 

 
 //Serial read
void keyPressed() {
  //video
  if (key == '1') {
    VideoPlaying = 1 ;
    println(VideoPlaying);
  }
 
  if (key == '2') {
    VideoPlaying = 2 ;
    println(VideoPlaying);
  }
}
 
 
 
void button() {
 
  if (VideoPlaying == 1) {
    Vid1 = true;
    Vid2 = false;
  }
 
  if (VideoPlaying == 2) {
    Vid1 = false;
    Vid2 = true;
  }
  
  

}

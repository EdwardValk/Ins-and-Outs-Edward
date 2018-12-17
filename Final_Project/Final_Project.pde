import ddf.minim.*;


import processing.video.*;
import processing.serial.*; //imports Serial library from Processing
import processing.sound.*;

SoundFile file;
Minim  minim;
AudioPlayer song;

Serial myPort; // creates object from Serial class
int val=0;

Movie theMov; 
int VideoPlaying;


boolean Vid1 = false;
boolean Vid2 = false;
boolean Aud1 = false;

//Videos
Movie Video1; 
Movie Video2; 

//Fim Videos

void setup() { 
  size(640, 360);

  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);

  //videos
  Video1 = new Movie(this, "Clip1.mp4");
  Video2 = new Movie(this, "Clip2.mp4");
 // file = new SoundFile(this, "Hello.wav");
  minim = new Minim(this);
  song = minim.loadFile("Roy1.wav");
  

  //Fim videos

  // Load a soundfile
  // soundfile = new SoundFile(this, "vibraphon.aiff");
}

void draw() { 

  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val

    button();
    if (val== 1) {
      VideoPlaying = 1 ;
      song.pause();
      if (Vid1) {

        //println("video1");
        Video2.stop();
        background(0);
        Video1.play();
        background(0);
        image(Video1, 0, 0, width, height);
        song.pause();
      }
    } else if (val== 2) {
      VideoPlaying = 2 ;
      song.pause();

      if (Vid2) {
        //  println("video2");
        Video1.stop();
        background(0);
        Video2.play();
        image(Video2, 0, 0, width, height);
        song.pause();
      }
    } else if (val== 3) {
      Aud1=true;

      if (Aud1) {
        //file.play();
        Video1.stop();
        background(0);
        Video2.stop();
        song.play();
      }
    }
    println (val);
  }
}


void movieEvent(Movie m) { 
  m.read();
}





//Serial read
//   {
//video
//if (key == '1') {
//  VideoPlaying = 1 ;
//  println(VideoPlaying);
//}

//if (key == '2') {
//  VideoPlaying = 2 ;
//  println(VideoPlaying);
//}
//}



void button() {

  if (VideoPlaying == 1) {
    Vid1 = true;
    Vid2 = false;
    Aud1 = false;
  }

  if (VideoPlaying == 2) {
    Vid1 = false;
    Vid2 = true;
    Aud1 = false;
  }
//  else {
//   Vid1 = false;
//   Vid2 = false;
//   Aud1 = true;
//}
}

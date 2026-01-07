// Hearing Music and Sound Effects
//
//
//Library - Minim
// Reminder: Actiate the libary
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Global Variables
Minim minim; //
int numberOfSongs = 3; //
int numberOfSoundEffects = 1; //
AudioPlayer[] Quran = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //ZERO, Math Property
//
void setup() {
  size(700, 500); //width //height
  //fullScreen(); //displayWidth //displayHeight
  int appWidth = width; //
  int appHeight = height;
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End mouse pressed
//
void keypressed() {
} //End key pressed
//
//End MAIN Program

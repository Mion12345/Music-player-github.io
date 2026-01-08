/* Library Notes
 - File / Sketch / Import Library / Manage Libraries
 - We use Minim for Sound and Sound Effects
 - Able to Google-search libraries to make your project easier
 - Documentation: https://code.compartmental.net/minim/
 - Specific Class: https://code.compartmental.net/minim/audioplayer_class_audioplayer.html
 - Specific Class: https://code.compartmental.net/minim/audiometadata_class_audiometadata.html
 
 ** You are now able to research any Processing-Java Library ... or Any Java Library from the internet **
 - Processing-Java Libraries must be installed into the IDE
 - Java Libraries simply require the 'import' declaration
 */
//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
// Global Variables
Minim minim;
int numberOfSongs = 1;
int numberOfSoundEffects = 1;

AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffects];

int currentSong = numberOfSongs - numberOfSongs; // ZERO

void setup() {
  size(700, 500); // width // height

  int appWidth = width;
  int appHeight = height;

  // Music Loading
  minim = new Minim(this); // Mandatory

  String musicDirectory = "Music/";
  String soundEffectsDirectory = "Sound Effects/";

  String songName1 = "001";
  String soundEffect1 = "camera-shutter-clicks-3";
  String fileExtension_mp3 = ".mp3";

String musicDirectory = "Music/";
String soundEffectsDirectory = "Sound Effects/";


  String file = musicDirectory + songName1 + fileExtension_mp3;
  playList[currentSong] = minim.loadFile(file);

  file = soundEffectsDirectory + soundEffect1 + fileExtension_mp3;
  soundEffects[currentSong] = minim.loadFile(file);
}

void draw() {
}

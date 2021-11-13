//https://github.com/eecs17xx/eecs1710-2021f/tree/main/Week09/SoundExample01
import processing.sound.*;
import gifAnimation.*;
Gif world;

SoundFile soundfile;

void setup() {
  size(246, 193);
  
  world = new Gif(this, "world.gif"); //https://i.pinimg.com/originals/74/47/af/7447afc3eceda6425d7977bc4c45bdd2.gif
  world.loop();
  
  soundfile = new SoundFile(this, "Mario.mp3");//https://downloads.khinsider.com/game-soundtracks/album/super-mario-bros/01%2520-%2520Super%2520Mario%2520Bros.mp3

  println("SFSampleRate= " + soundfile.sampleRate() + " Hz");
  println("SFSamples= " + soundfile.frames() + " samples");
  println("SFDuration= " + soundfile.duration() + " seconds");

  // Play the file in a loop
  soundfile.loop();
}      

void draw() {
  background(0);
  image(world,0,0);
  
  float playbackSpeed = map(mouseX, 0, width, 0, 2.0);
  soundfile.rate(playbackSpeed);

  float amplitude = map(mouseY, 0, width, 0, 1.0);
  soundfile.amp(amplitude);

  float panning = map(mouseY, 0, height, -1.0, 1.0);
  soundfile.pan(panning);
}

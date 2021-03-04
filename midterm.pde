// Sasha Solovyeva
// Space Piano
// Midterm Project

// Library
import ddf.minim.*;

Minim minim;
AudioPlayer a;
AudioPlayer b;
AudioPlayer c;
AudioPlayer d;
AudioPlayer e;
AudioPlayer f;
AudioPlayer g;
AudioPlayer a2;

AudioPlayer background;
Boolean backgroundMusic = true;
int counter = 0;

// Variable declarators
// Piano keys
Piano[] piano = new Piano[8];

// Starfield
Star[] stars = new Star[800];
float speed;

// On-screen star images
PImage capella;
PImage sirius;
PImage betelgeuse;
PImage arcturus;
PImage rigel;
PImage vega;
PImage altair;

// Side screen images
PImage pianoMap;
int starInfoPos;

// Text
PFont text;
String starName = "Welcome to the\nSpace Piano!";
String starInfo = "Press middle-row computer\nkeys (starting with A)\nto activate the piano.\n\nPress K to clear the screen.\n\nPress SPACE to \nmute background music.";


//_____________________________________________________________________________________________________________

void setup(){
  size(1200,800);
  
  // sketch basic setup
  background(0,0,30);
  imageMode(CENTER);
  
  // On-screen images
  capella = loadImage("capella.png");
  sirius = loadImage("sirius.png");
  betelgeuse = loadImage("betelgeuse.png");
  arcturus = loadImage("arcturus.png");
  rigel = loadImage("rigel.png");
  vega = loadImage("vega.png");
  altair = loadImage("altair.png");
  
  // Sidescreen images
  pianoMap = loadImage("pianoMap.png");
  
  // font
  text = createFont("nasalization-rg.ttf", 45);
  
  // audio files
  minim = new Minim(this);
  a = minim.loadFile("A.wav");
  b = minim.loadFile("B.wav");
  c = minim.loadFile("C.wav");
  d = minim.loadFile("D.wav");
  e = minim.loadFile("E.wav");
  f = minim.loadFile("F.wav");
  g = minim.loadFile("G.wav");
  a2 = minim.loadFile("A2.wav");
  background = minim.loadFile("interstellar.mp3");
  
  // setting up the Starfield array
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  
  
  for(int i = 0; i < piano.length; i++){
    piano[i] = new Piano(i);
  }
  
  
}

//_____________________________________________________________________________________________________________

void draw(){
  background(0,0,30);
  textFont(text);
  
  if(counter%2 == 1){
      backgroundMusic = false;
    }
    if(counter%2 == 0){
      backgroundMusic = true;
    }
    
    if(backgroundMusic == true){
      background.play();
      if (background.position()>=background.length()) {
      background.rewind();
    }
    }
    if(backgroundMusic == false){
      background.pause();
    }
  
  for(int i = 0; i < piano.length; i++){
      piano[i].show_white();
      piano[i].keyPressed(i);
      //piano[i].keyReleased();
      //piano[i].press(i);
      piano[i].show_black();
  };
      
  
  translate(width/2, height/2);
  
  for(int i = 0; i < stars.length; i++){
      stars[i].speed();
      stars[i].show();
  }
  
  speed = map(mouseY, 0, height, 0, 20);
  
  // rectangle with the information
  starInfoPos = 60;
  
  fill(0, 200);
  noStroke();
  rect(200, -height/2, 400, height);
  fill(255);
  
  text(starName, 210, -height/2 + 50);
  
  textSize(19);
  text(starInfo, 210, starInfoPos);
  image(pianoMap, 400, -height/2 + 250);
  
  // information
}

//_____________________________________________________________________________________________________________

void keyPressed() {
    if(keyCode == 65){
      a.play();
      a.rewind();
    }
    if(keyCode == 83){
      b.play();
      b.rewind();
    }
    if(keyCode == 68){
      c.play();
      c.rewind();
    }
    if(keyCode == 70){
      d.play();
      d.rewind();
    }
    if(keyCode == 71){
      e.play();
      e.rewind();
    }
    if(keyCode == 72){
      f.play();
      f.rewind();
    }
    if(keyCode == 74){
      g.play();
      g.rewind();
    }
    if(keyCode == 75){
      a2.play();
      a2.rewind();
    }
    
    if(keyCode == 32){ 
      counter ++;
    }
}

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer SUCCESS;
AudioPlayer FAILURE;
AudioPlayer MUSIC;
//please make a timer, timer done
//make 50/50 i have no idea how to 50/50
//oh wait idea
// after push button say if opposite yes otherwise keep trying
//idk if i need an array for this, i hate array
//array evil


int mode; 
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

color red = #ff595e;
color orange = #f4a261;
color yellow = #ffca3a;
color green = #8ac926;
color blue = #1982c4;
color purple = #6a4c93;
color white = #ffffff;
color black = #000000;
color grey = #8E8787;

int randomWord = (int) random (0, 6);
int randomColor = (int) random (0, 6);
float randomNumber = random (0, 1);

float timer = 200;
int score = 0;

String[] words = {"RED", "ORANGE", "YELLOW", "GREEN","BLUE","PURPLE"};
color[] colors = {red, orange, yellow, green, blue, purple};

boolean match = false;
boolean leftkey, rightkey;
int title = 0;

//
void setup() {
  strokeWeight(5);
  size(800, 800);
  
  textSize(100);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  
  minim = new Minim(this);
  SUCCESS = minim.loadFile("SUCCESS.wav");
  FAILURE = minim.loadFile("FAILURE.wav");
  MUSIC = minim.loadFile("MUSIC.mp3");

}

void draw() {
  MUSIC.play();
  if (mode == INTRO) {
  intro();
  } else if (mode == GAME) {
   game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
      options();
  } else {
    println("Error: Mode = " + mode);
 }
 
  
  
}
boolean touchingRect(int x, int y, int w, int h){
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
    return true;
  } else {
    return false;
}
}

boolean touchingCircle(int x, int y, int r) {
  if (dist(x,y,mouseX,mouseY) < r) {
    return true;
  }else{
    return false;
  }
}

void tactileRect(int x, int y, int w, int h, color f){
  fill(f);
  if (touchingRect(x,y,w,h)){
    stroke(grey);
  }else{
    stroke(0);
  }
  rect(x,y,w,h);
}

void tactileCircle(int x, int y, int r, color f) {
  fill(f);
  if (touchingCircle(x,y,r)){
    stroke(grey);
  }else{
    stroke(0);
  }
  circle(x,y,r);
}

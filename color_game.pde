import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//Color Game--review project computer programming 12
//Howard Zhu
//Sept.23th,2022 Block 1-4


//mode variables
int mode,score,livemode,lives,maxscore, numberofFrame,numberofFrame1,numberofFrame2;
final int Intro=0;
final int Game=1;
final int Pause=2;
final int Gameover=3;
final int Option=4;
//random color and word
int randomWord=(int)random(0,11);
int randomColor=(int)random(0,11);
//pictures
PImage pauseicon,resumeicon,selected,returnicon,proceed;
PImage zombie,ghast,skeleton, alex,steve,tnt,creeper,minecraft;
PImage heart, diamond;
PImage gif[], gif1[],gif2[];
//backgrounds
PImage introbg, gamebg,pausebg,gameoverbg, optionbg;
PFont font;
boolean increase, decrease, clicked;
float x,y,d,iconsize,slider;
float speed, textsize, velocity;  //disappear velocity


//color pallette
color pink =#FFC0CB;
color black =#000000;
color cyan =#00FFFF;
color orange= #FFA500;
color yellow= #FFFF00;
color green= #00FF00;
color red= #FF0000;
color blue =#0000FF;
color white =#FFFFFF;
color grey= #7C7A7A;
color purple= #800080;
color pressed=#A6DDE8;
//sound variables
Minim minim;
AudioPlayer theme,success, failure,gameover;
//
String[] words={"Red", "Green", "Yellow","Blue","Purple", "Grey", "White", "Orange", "Black","Pink", "Cyan"};
color[] colors={red, green, yellow, blue, purple, grey, white, orange, black, pink, cyan};
void setup(){
  clicked=false;
  velocity=1;
  increase=true;
  speed=10;
  textsize=10;
  numberofFrame=0;
  maxscore=0;
  size(800,800);
  mode=Intro;
  textAlign(CENTER,CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  //image initialize
  pauseicon=loadImage("pause.png");
  resumeicon=loadImage("resume.png");
  returnicon=loadImage("return.png");
  heart=loadImage("heart.png");
  diamond=loadImage("diamond.png");
  gif= new PImage[115];
  for (int i=0; i<115; i++){
    gif[i]=loadImage("gif"+i+".gif");
  }
  gif1=new PImage [126];
  for (int i=0; i<126; i++){
    gif1[i]=loadImage("gameover"+i+".gif");
  }
  gif2=new PImage[48];
  for (int i=0; i<48;i++){
    gif2[i]=loadImage("gg"+i+".gif");
  }
  livemode=2;
  //background wallpaper
  /*introbg=loadImage("minecraftbackground.jpg");
  optionbg=loadImage("background5.jpg");
  pausebg=loadImage("background2.jpg");
  gamebg=loadImage("minecraftbackground.jpg");
  gameoverbg=loadImage("background6.jpg");
  */
 
  
  //minim initialization
  minim=new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
  success= minim.loadFile("SUCCESS.wav");
  failure=minim.loadFile("FAILURE.wav");
  gameover=minim.loadFile("gameover.wav");
  
  //initialize font
  font=createFont("font.ttf",200);
  textFont(font);
  
}

void draw(){
  if (mode==Intro){
    intro();
  }else if (mode==Game){
    game();
  }else if (mode==Pause){
    pause();
  }else if (mode==Gameover){
    gameover();
  }else if (mode==Option){
    option();
  }else{
    println("Error: mode ="+mode);
  }
}

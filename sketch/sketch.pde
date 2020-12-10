import apsync.*;
import processing.serial.*;
import processing.sound.*;

AP_Sync arduino;

Sound s;
SoundFile doS, reS, miS, faS, solS, laS, siS;

PFont font;

int escena = 3;// -1 = res, 0 = incial, 1 = instruccions, 2 = joc, 3 = puntuacions

int score = 0;
int blocs = 0;
int temps = 60;
int interval = 60;

int distSensor = 10000;

String[] colors = {"245,34,156", "124,203,178", "168,172,5", "245,34,156", "124,203,178", "168,172,5", "148,4,185"};

Cube[] cubes = new Cube[1];
Cube a = new Cube();

void setup(){
  size(1280, 720);
  //arduino = new AP_Sync(this,"COM3", 9600);
  frameRate(60);
  font = createFont("font.ttf", 32);
  textFont(font);
  
  doS = new SoundFile(this, "sounds/Do.mp3");
  reS = new SoundFile(this, "sounds/Re.mp3");
  miS = new SoundFile(this, "sounds/Mi.mp3");
  faS = new SoundFile(this, "sounds/Fa.mp3");
  solS = new SoundFile(this, "sounds/Sol.mp3");
  laS = new SoundFile(this, "sounds/La.mp3");
  siS = new SoundFile(this, "sounds/Si.mp3");

} 

void draw(){
  if(escena == -1){
    frameRate(10);
    escena();
    if (distSensor < 20){
      escena = 0;
    }    
  } else if(escena == 0){
    frameRate(10);
    escena_inicial();
  } else if(escena == 1){
    frameRate(60);
    escena_instruccions();
  } else if(escena == 2){
    if(temps <= 0){
      escena = 3;
      //Guardar puntuacio
      //Llegir puntuacions
    }
    frameRate(60);
    escena_joc();
  } else {
    frameRate(10);
    escena_puntuacions();
  }
}

void keyPressed(){
  if(escena == -1){
    if(key == 'q') escena = 0; 
  } else if(escena == 0){ //Escena incial
    if(key == 'q'){
      escena = 2; //Jugar
      doS.play();
    }
    else if(key == 'w') {
      escena = 1; //Instruccions
      siS.play();
    }
  } else if(escena == 1){ //Escena instruccions
     if(key == 'q')escena = 2; //Jugar
  } else if(escena == 2){ //Escena instruccions
     if(key == 'q')escena = 3; //Jugar
     
     if(key == 'a') doS.play();
     if(key == 's') reS.play();
     if(key == 'd') miS.play();
     if(key == 'f') faS.play();
     if(key == 'g') solS.play();
     if(key == 'h') laS.play();
     if(key == 'j') siS.play();
     
  } else if(escena == 3){
     if(key == 'q'){
       score = 0;
       blocs = 0;
       temps = 60;
       interval = 60;
       escena = 2; //Tornar a jugar
     }
  }
}

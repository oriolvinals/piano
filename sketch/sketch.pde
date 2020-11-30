import apsync.*;
import processing.serial.*;
AP_Sync arduino;

PFont font;

int escena = -1;// -1 = res, 0 = incial, 1 = instruccions, 2 = joc, 3 = puntuacions
int score = 0;
int temps = 60;
int distSensor = 10000;

void setup(){
  size(1280, 720);
  //arduino = new AP_Sync(this,"COM3", 9600);
  frameRate(60);
  font = createFont("font.ttf", 32);
  textFont(font);
} 

void draw(){
  if(escena == -1){
    escena();
    if (distSensor < 20){
      escena = 0;
    }    
  } else if(escena == 0){
    escena_inicial();
  } else if(escena == 1){
    escena_instruccions();
  } else if(escena == 2){
    escena_joc();
  } else {
    escena_puntuacions();
  }
}

void keyPressed(){
  if(escena == -1){
    if(key == 'q') escena = 0; 
  } else if(escena == 0){ //Escena incial
    if(key == 'q') escena = 2; //Jugar
    else if(key == 'w') escena = 1; //Instruccions
  } else if(escena == 1){ //Escena instruccions
     if(key == 'q')escena = 2; //Jugar
  } else if(escena == 3){
     if(key == 'q'){
       score = 0;
       temps = 60;
       escena = 2; //Tornar a jugar
     }
  }
}

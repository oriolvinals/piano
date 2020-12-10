void escena_puntuacions(){
  background(12, 10, 20);
  fill(255, 255, 255, 200);
  rect(0, 200, 1280, 520);
  
  //Titol
  fill(0, 102, 153);
  textSize(50);
  textAlign(CENTER);
  text("puntuacions", 640, 80); 
  
  //Puntuacio
  fill(0, 102, 153);
  textSize(23);
  text("tens una puntuacio de " + score + " punts amb un total de " + blocs + " blocs destruits", 640, 150);
  
  //Puntuacions
  rectMode(CENTER);
  for(int i = 1; i <= 3; i++){
    int w = 1280;
    int x = w / 3 * i - (w/3/2);
    rect(x, 400, 100, 100);
  }
  rectMode(CORNER);  
}
  

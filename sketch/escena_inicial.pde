void escena_inicial(){
  background(255, 204, 0);
  
  textSize(100);
  textAlign(CENTER, CENTER);
  text("titol del joc", 640, 150);
  
  textSize(50);
  rectMode(CENTER);
  fill(0, 0, 0);
  rect(360, 500, 500, 150, 20, 0, 0, 20);
  fill(255, 255, 255);
  text("jugar", 360, 500);
  rect(920, 500, 500, 150, 0, 20, 20, 0); 
  fill(0, 0, 0);
  text("instruccions", 920, 500); 
}
  

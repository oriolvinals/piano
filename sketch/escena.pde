void escena(){
  background(167, 94, 9);
  noStroke();
  for (int i = 0; i < 1000; i++) {
    fill(random(255), random(255), random(255), random(255));
    rect(random(1280), random(720), 55, 55, 7);
  }
  
  fill(0, 0, 0, 220);
  rect(0, 270, 1280, 200);
  
  fill(255, 255, 255);
  textAlign(CENTER, CENTER);
  textSize(120);
  text("titol del joc", 640, 360);
}
  

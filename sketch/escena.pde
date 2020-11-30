void escena(){
  PFont mono = createFont("font.ttf", 32);
  background(0);
  noStroke();
  for (int i = 0; i < 600; i++) {
    fill(random(255), random(255), random(255), random(255));
    float r = random(200);
    ellipse(random(1280), random(720), r, r); 
  }
  
  fill(255, 255, 255);
  textFont(mono);
  textAlign(CENTER, CENTER);
  textSize(120);
  text("titol del joc", 640, 360);
}
  

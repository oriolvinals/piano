void escena() {
  background(0, 0, 0);
  noStroke();
  for (int i = 0; i < 1000; i++) {
    fill(random(255), random(255), random(255), random(255));
    rect(random(-100, 1380), random(-100, 820), 65, 65, 7);
  }

  fill(0, 0, 0, 220);
  rect(0, 270, 1280, 200);

  fill(255, 255, 255);
  textAlign(CENTER, CENTER);
  textSize(120);
  text("titol del joc", 640, 360);
}

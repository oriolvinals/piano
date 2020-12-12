void escena_instruccions() {
  background(31,59,77);
  textFont(font);
  fill(255, 255, 255);
  textSize(60);
  textAlign(CENTER, CENTER);
  text("instruccions", 640, 60);

  fill(0, 0, 0);
  rectMode(CENTER);
  rect(640, 640, 350, 100, 20, 20, 20, 20);
  fill(255, 255, 255);
  textSize(50);
  text("jugar", 640, 640);
  
  //Rect
  rectMode(CORNER);
  noStroke();
  fill(253,193,197);
  rect(100, 125, 640, 425);
  
  fill(100, 100, 50);
  rect(100, 450, 640, 75);
  
  stroke(0, 0, 0);
  strokeWeight(2);
  fill(0, 0, 0);
  for (int i = 1; i <= 7; i++) {
    int w = 540;
    int x = w / 7 * i - (w/7/2) + 150;
    line(x, 125, x, 550);
  }
  
  noStroke();
  fill(100, 100, 50);
  rect(100, 450, 640, 75);
  
  rectMode(CENTER);
  for(int i = 0; i < 10; i++){
    int type = int(random(1, 8));
    int[] col = int(split(colors[type-1], ',') );
    
    int w = 540;
    int x = w / 7 * type - (w/7/2) + 150;
    
    fill(col[0], col[1], col[2]);
    rect(x, random(150, 500), 20, 20);
  }
  
  //Text
  textAlign(LEFT, CENTER);
  fill(255, 255, 255);
  textFont(font2);
  textSize(20);
  String instruccions = "Just quan el cuadrat estigui entre la \nfranja de color inferior haurem de tocar \nla tecla amb el color del cuadrat \ncorresponent, si deixem passar el cuadrat \nperdrem punts, per el contrari \nels guanyaras!";
  text(instruccions, 760, 310);
  textFont(font);
}

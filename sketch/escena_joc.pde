class Cube {
  float x, y, velocity;
  int type;
  color[] col;

  Cube() {
    this.type = int(random(1, 8));
    this.x = 1280 / 7 * this.type - (1280/7/2);
    this.y = 0;
    this.velocity = random(2, 5);
    this.col = int(split(colors[this.type-1], ',') );
  }

  void update() {
    if (this.y <= 720) {
      rectMode(CENTER);
      noStroke();
      fill(this.col[0], this.col[1], this.col[2]);
      rect(this.x, this.y, 40, 40);
      this.y += this.velocity;
    }
  }
}

void escena_joc() {
  background(12, 200, 30);
  textFont(font);
  //No tocar
  //temps = interval - int(millis()/ 1000);

  //TEXTS
  textSize(32);
  textAlign(LEFT, CENTER);
  fill(0, 0, 0);
  text(temps, 10, 20); 
  textAlign(RIGHT, CENTER);
  text(score, 1270, 20);

  //LINIES
  stroke(1);
  strokeWeight(3);
  for (int i = 1; i <= 7; i++) {
    int w = 1280;
    int x = w / 7 * i - (w/7/2);
    line(x, 0, x, 720);
  }

  rectMode(CORNER);
  fill(0, 0, 0);
  rect(0, 550, 1280, 100);
  line(0, 550, 1280, 550);
  line(0, 650, 1280, 650);
  
  int r = (int) random(100);
  
  if (r == 0){
    cubes.add(new Cube());
  }

  //Cub
  for(int i = 0; i < cubes.size(); i++) {
    if(cubes.get(i).y > 680){
      cubes.remove(i);
      wrong.play();
    }else if (cubes.get(i).y > 580 && cubes.get(i).y >= 680){
        // augmentar Score quan es clica (falta afagir codi)
    }else{
      cubes.get(i).update();
    }    
  }
    
}

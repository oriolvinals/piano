class Cube {
  float x, y, velocity;
  int type;
  color[] col;
  
  Cube(){
    this.type = int(random(1, 7));
    this.x = 1280 / 7 * this.type - (1280/7/2);
    this.y = 0;
    this.velocity = random(2, 8);
    this.col = int(split(colors[this.type-1], ',') );
  }
  
  void update(){
    fill(this.col[0], this.col[1], this.col[2]);
    rect(this.x - 20, this.y, 40, 40);
    this.y += this.velocity;
  }
}

void escena_joc(){
  background(12, 200, 30);
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
  for(int i = 1; i <= 7; i++){
    int w = 1280;
    int x = w / 7 * i - (w/7/2);
    line(x, 0, x, 720);
  }
  
  fill(0, 0, 0);
  rect(0, 550, 1280, 100);
  line(0, 550, 1280, 550);
  line(0, 650, 1280, 650);
  
  
  noStroke();
  a.update();
}
  

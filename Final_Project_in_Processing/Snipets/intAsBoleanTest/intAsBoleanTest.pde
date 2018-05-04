int special = -1;

void setup() {
  size(900,900);
}

void draw() {
  fill(0);
  if(special > 0) {
    fill(50,0,0);
  }
  rect(10,10, 20,20);
}

void keyReleased() {
  if(key == 'a') {
    special = 5;
  }
}

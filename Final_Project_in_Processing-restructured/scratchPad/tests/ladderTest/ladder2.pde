class Ladder2 {
  void setup() {
    tables[2].objectName = "ladder2";
    tables[2].x = 0;
    tables[2].y = 100;
    tables[2].sX = 25;
    tables[2].sY = -75;
  }
  void draw(){
    fill(100,20,20);
    if (timer[1].count() < 1000) {
      stroke(pal[1]);
    } else {
      stroke(pal[0]);
    }
    rect(tables[2].x,tables[2].y,tables[2].sX,tables[2].sY);
  }
}

class Ladder {
  void setup() {
    tables[1].objectName = "ladder";
    tables[1].x = 125;
    tables[1].y = 100;
    tables[1].sX = 25;
    tables[1].sY = -75;
  }
  void draw(){
    fill(100,20,20);
    if (timer[0].count() < 1000) {
      stroke(pal[1]);
    } else {
      stroke(pal[0]);
    }
    rect(tables[1].x,tables[1].y,tables[1].sX,tables[1].sY);
  }
}

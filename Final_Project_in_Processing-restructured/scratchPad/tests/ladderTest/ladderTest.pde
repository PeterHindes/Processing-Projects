
DataTable[] tables = new DataTable[3];

Timer[] timer = new Timer[2];

//class Pos { int x = 60; int y = 100; }
//Pos pos = new Pos();
//class Siz { int x = 15; int y = -25; }
//Siz siz = new Siz();
Ladder ladder = new Ladder();
Ladder2 ladder2 = new Ladder2();
Player player = new Player();

color[] pal = {color(255,0,0),color(0,255,0)};
boolean active = false;

void setup() {
  size(150,150);

  for(int i = 0; i < tables.length ; i++) {
    tables[i] = new DataTable();
  }
  for(int i = 0; i < timer.length ; i++) {
    timer[i] = new Timer();
  }

  player.setup();
  ladder.setup();
  ladder2.setup();
}

void draw() {
  background(75);

  ladder.draw();
  ladder2.draw();

  player.draw();
}

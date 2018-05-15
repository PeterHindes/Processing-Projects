
class Pos { int x = 60; int y = 100; }
Pos pos = new Pos();
class Siz { int x = 15; int y = -25; }
Siz siz = new Siz();
Ladder ladder = new Ladder();
Player player = new Player();

void setup() {
  size(150,100);
  //print(player.arr[0].x);
}

void draw() {
  background(75);
  player.draw();
  ladder.draw();
}

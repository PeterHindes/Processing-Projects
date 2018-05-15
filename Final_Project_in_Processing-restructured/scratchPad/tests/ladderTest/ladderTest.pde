
class Pos { int x = 60; int y = 100; }
Pos pos = new Pos();
Ladder ladder = new Ladder();
Player player = new Player();

void setup() {
  size(150,100);
}

void draw() {
  background(75);
  player.draw();
  ladder.draw();
}

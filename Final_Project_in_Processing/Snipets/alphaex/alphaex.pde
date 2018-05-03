Scenes scenes = new Scenes();
Scenes.One o = scenes.new One();
Scenes.Two t = scenes.new Two();

void setup(){
  size(500,300);
}

void draw(){
  o.rect1();
  t.rect1();
}

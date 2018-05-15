class Player {
  void act( ){

  }
  void move( ){
    if(keyPressed){
      if(key == 'a'){
        pos.x -= 2;
      } else if(key == 'd'){
        pos.x += 2;
      }
    }
  }
  void draw() {
    player.move();
    fill(150);
    rect(pos.x,pos.y,15,-25);
  }
}

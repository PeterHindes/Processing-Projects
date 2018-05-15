class Player {
  void act( ){
    int xDetec = 15;
    int yDetec = 7;
    if (pos.x + (xDetec/2) > ladder.x) {
      print ("Erect\n");
    }
  }
  void move( ){
    if(keyPressed){
      if(key == 'a'){
        pos.x -= 2;
      } else if(key == 'd'){
        pos.x += 2;
      } else if(key == ' '){
        act();
      }
    }
  }
  void draw() {
    player.move();
    fill(150);
    rect(pos.x,pos.y,15,-25);
  }
}

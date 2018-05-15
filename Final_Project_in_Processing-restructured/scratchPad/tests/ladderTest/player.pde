class Player {
  void act( ){
    //Consts
    int xDetec = 30;
    int yDetec = 7;

    //Objects To Check For
    Object[] arr = new Object[6];
    arr[0] = ladder;
    print(arr[0].x);  //Manage the shit for multiple objects and streamline it

    if (pos.x + siz.x + (xDetec/2) > ladder.x) {
      print ("Active\n");
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

class Movement {
  void walk( ) {

  }
  void run( ) {

  }
  void jump( ) {

  }

  //Special/Environment Actions
  void ladder( ) {

  }


  void update( ) {
    if(keyPressed){
      //Horizontal Actions
      if(vars.playerPos.x != 0) {
        if(!vars.keys[4]) {
          walk();
        } else {
          run();
        }
      }
      if(vars.keys[5] != 0) {
        jump();
      }
    }
  }
}

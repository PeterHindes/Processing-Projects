class Player {
  int playerTall = 8;//% //How tall the player is in percent
  int playerWide = 3;//% //How wide the player is in percent


  //Player
  void draw( ) {
    playerPos+=playerSpeed;
    fill(225);
    rect (playerPos,height-floorHeight-playerHeight,scale.PcToPx(playerWide),-scale.PcToPx(playerTall));
  }

  //Check for and handle jumping [V variant]
  //If we are jumping then do the calculations for our next height
  void jTest( ) {
    if(jumping){ //Send us up for the jump
      if (playerHeight < playerJumpHeight){ //Were not at the peak yet
        playerHeight += jumpSpeed;
      } else { //We are done jumping
        jumping = false;
      }
    } else if (playerHeight > 0) { //Send us back down after jumping
      playerHeight -= jumpSpeed;
    }
  }
  //Check for and handle jumping [with gravity variant] [Definantly needs work]
  void jgTest( ) {
    if(jumping){ //Send us up for the jump
      if (jumpSpeed > 0.5){ //Were not at the peak yet
        jumpSpeed-=jumpSpeed/3; //Take away a third of the current value
      } else { //We are done jumping
        jumpSpeed = defaultJumpSpeed;
        jumping = false;
        falling = true;
      }
      print(jumpSpeed + "\n");
      playerHeight += jumpSpeed;
    } else if (falling) {
      if (jumpSpeed > 0.5){
        jumpSpeed-=jumpSpeed/3;
      } //else { //We are done jumping
      //  //jumpSpeed = defaultJumpSpeed;
      //  //jumping = false;
      //}
      if (playerHeight<0){
        jumpSpeed = defaultJumpSpeed;
        falling = false;
      }
      print(jumpSpeed + "  " + playerHeight + "\n");
      playerHeight -= jumpSpeed;
    } else if (playerHeight != 0) { //Send us back down after jumping
      playerHeight = 0;
    }
  }

}


import java.util.Arrays;

Feild feild = new Feild();

int floorHeight = 150; //How hight the floor is from the bottom of the screen in pixels

int obstCount = 16; //how many obstacles per screen (per haf of feild)

int buffer = 25; //How far in pixels the player is from the left of the screen

//Movement
int playerPos; //Players position along the feild (x)
int playerHeight = 0; //Players height (progress in jump)(y)
int playerJumpHeight = 60*2; // How hight the player will jump
int playerSpeed = 6; //How much the player advances each frame (more is faster)
float jumpSpeed = 10f; //How fast the player moves up each frame while jumping [variable]
float defaultJumpSpeed = 10f; //How fast the player starts moving up (momentem?)
boolean jumping = false; //True if the player is in the process of jumping
boolean falling = false; //True if the player is in the process of returning from a jump

void setup( ) {
  //Put the program into full screen
  fullScreen(1);
  //Setup The Feild
  feild.setup();
}

void draw( ) {

  background(#b2a780);  //Give A Background Collor

  //Draw A Black Floor
  fill(0);
  rect(0,height,width,-floorHeight);

  //Update the Feild
  feild.update();

  pushMatrix(); //Were Using matrix!! [Push and pop each frame (may not be preformant)]
  translate(-(playerPos-buffer),0); //Move the map left (Creats the effect of the player moving right)


  //Draw the Feild
  feild.draw();

  //Update Player
  jgTest();
  //Draw Player
  player();

  popMatrix();

}

//Player
void player( ) {
  playerPos+=playerSpeed;
  fill(225);
  rect (playerPos,height-floorHeight-playerHeight,15,-25);
}

//Player Jump [Definantly needs work]
//If we are jumping then do the calculations for our next height
void jTest() {
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
void jgTest() {
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

//Keyboard
void keyPressed(){
  if(key == ' ' && !jumping && playerHeight == 0){

    jumping = true;

  }
}

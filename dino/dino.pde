
import java.util.Arrays;

int floorHeight = 150; //How hight the floor is from the bottom of the screen in pixels

int obstCount = 16; //how many obstacles per screen (per haf of feild)

int buffer = 25; //How far in pixels the player is from the left of the screen

//Movement
int playerPos; //Players position along the feild (x)
int playerHeight = 0; //Players height (progress in jump)(y)
int playerJumpHeight = 60*2; // How hight the player will jump
int playerSpeed = 6; //How much the player advances each frame (more is faster)
int jumpSpeed = 10; //How fast the player moves up each frame while jumping
boolean jumping = false; //True if the player is in the process of jumping


//The arrays for obstacle positions on the feild
int[] ours;
int[] yours;

//Draw first half at the end of the feild(true) or the begining(false)
//used for making the transition seamless
//when this is set back to false the player is also brought back to the begining
boolean startSet = false;

void setup( ) {

  //Put the program into full screen
  fullScreen(1);

  //Setup the feild for first run
  set1();
  set2();
}

void set1() {
  //Debug that we are setting half one of the feild
  //print("Set1\n");

  //Make an array of positions for the first half of the feild
  ours = obst(obstCount, false);
  //Sort the array
  //Arrays.sort(ours);
}
void set2() {
  //print("Set2\n");
  playerPos = 15;

  //Make an array of positions for the second half of the feild
  yours = obst(obstCount, true);
  //Arrays.sort(yours);
}

void draw( ) {

  background(#b2a780);
  fill(0);
  rect(0,height,width,-floorHeight);

  hlfW();

  pushMatrix();
  translate(-(playerPos-buffer),0);

  fill(150);
  for (int curd : ours){
    if (!startSet){
      rect(curd,height-floorHeight,15,-40);
    } else {
      rect(curd+width*2,height-floorHeight,15,-40);
    }
  }
  for (int curd : yours){
    rect(curd,height-floorHeight,15,-40);
  }

  jTest();
  player();

  popMatrix();

}

//Player
void player( ) {
  playerPos+=playerSpeed;
  fill(225);
  rect (playerPos,height-floorHeight-playerHeight,15,-25);
}

//Keyboard
void keyPressed(){
  if(key == ' ' && !jumping && playerHeight == 0){

    jumping = true;

  }
}

//Player Jump
void jTest() {
  if(jumping){
    if (playerHeight < playerJumpHeight){
      playerHeight += jumpSpeed;
    } else {
      jumping = false;
    }
  } else if (playerHeight > 0) {
    playerHeight -= jumpSpeed;
  }
}

//Halfway Test
void hlfW (){
  if ((playerPos-buffer) > width && !startSet){
    set1();
    startSet = true;
  }
  if ((playerPos-buffer) >= width*2){
    set2();
    startSet = false;
  }
}

//Setup
int[] obst(int times,boolean secondSet) {
  int[] result = new int[times];
  for(int i = 0; i < times; i++){
    result[i] = int(random(width));
  }
  if (secondSet){
    for(int i = 0; i < times; i++){
      result[i]+=width;
    }
  }
  return result;
}


//Math
import java.util.Arrays; //Import The arrays utility form java
PrcScale scale = new PrcScale(); //Import/instanciate the calculation library for percent based scaling

//Elements
Player player = new Player(); //Import/instanciate the player
Feild feild = new Feild(); //Import/instanciate the feild things as feild

//Draw
int buffer = 25; //How far in pixels the player is from the left of the screen
int floorHeight = 150; //How hight the floor is from the bottom of the screen in pixels

//Movement
//Position Vars
int playerPos; //Players position along the feild (x)
int playerHeight = 0; //Players height (progress in jump)(y)
//Jump Vars
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
  player.jTest();
  //Draw Player From the player class
  player.draw();

  popMatrix();

  //Did we die
  chBoth();
  print("Checked.\n");

}

//Colision Checking
//Loop Both First and Second Halfs
void chBoth( ) {
  for (int curd : feild.fOne){ //Loup over the first feild and for each instance put the value in curd
    cloChck(curd);
  }
  for (int curd : feild.fTwo){ //Loup over the second feild and for each instance put the value in curd
    cloChck(curd);
  }
}
//Check on the player
void cloChck( int chese ) {
  if (playerPos+buffer == chese) { //Detect Position Match [needs work]
    if (playerHeight < scale.PcToPx(feild.obstHight))  { //Did we dodge(false) or hit(true)
      print("Die!!\n");
    }
  }
}

//Keyboard
void keyPressed(){
  if(key == ' ' && !jumping && playerHeight == 0){

    jumping = true;

  }
}

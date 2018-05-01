import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Final_Project_in_Processing extends PApplet {

//Variables
int[] playerPos = {30,0};
int floorLevel = 20;

//Resources
  //Colors
    int[] msgBx = {0x3a3a4c38, 0xff222e30};
  //External
    //Images
      //PImage martha1;
    //Fonts
      PFont titleFont;
      PFont mesageFont;
    //Sound


//Consistency variables
int dialoguePading = 10;
int dialogueBoxPading = 15;
int dialogueBoxCornerRadius = 25;
int dialogueBoxTitlePading = 10;

//Dynamic Consistency variables
int[] siz;

//Functions
public void setup () {
  
  siz = new int[]{1000, 700};

  //Setup Resources
  titleFont = createFont("data/Font/Signika-Bold.ttf", 25, true);
  mesageFont = createFont("data/Font/EBGaramond-Regular.ttf", 20, true);
  //martha1 = loadImage("martha-1.png");
}

public void draw () {
  background(175);

  player();

  dialogueBox(
    2,
    "GOVERNMENT ANNOUNCEMENT",
    "Those infected by the outbreak CANNOT feel, think or remember any past experiences. "+
    "They are dangerous and MUST be killed ON SIGHT!"
  );
}

//Custom Functions

public void dialogueBox (int lineCount, String title, String message) {

  //Activate Matrix
  pushMatrix();
  //Allign to bottom with padding
  //translate(0 + dialoguePading ,  siz[1] - (dialoguePading));
  //Allign to bottom without padding
  translate(0 ,  siz[1]);


  //Calculate
  //Height of title and body in seprate vars with their respective fonts
  textFont(mesageFont);
  int bodyHeight  = PApplet.parseInt(textAscent())*(lineCount+1);
  textFont(titleFont);
  int titleHeight = PApplet.parseInt(textAscent());
  //body position with all padding verticaly
  int bodyNspacingHeight = bodyHeight          + dialoguePading;
  int titleNspacingHeight = titleHeight        + dialoguePading;

  int rectRightPaded = siz[0] - dialogueBoxPading*2;
  int wholeMessagePadded = bodyHeight+titleHeight*2+dialogueBoxTitlePading; //The title is double because it is fliped to the top, and the body is bottom


  //Rectangle
  translate(dialogueBoxPading,-dialogueBoxPading);
  fill(msgBx[0]);
  rect(0,0,
    rectRightPaded ,
    -wholeMessagePadded ,
    7
  );

  //Message
  translate(dialoguePading,-dialoguePading);
  translate(0,-bodyHeight);
  fill(0);
  textAlign(LEFT, TOP);
  textFont(mesageFont);
  text(message, 0,0, siz[0] - dialoguePading*2, siz[1]      - bodyHeight);

  //Title
  textAlign(LEFT, BOTTOM);
  textFont(titleFont);
  text(title, 0,-dialogueBoxTitlePading);

  popMatrix();
}

public void player() {

  pushMatrix();

  translate(playerPos[0],siz[1]-floorLevel-playerPos[1]);

  rect(0,0,  15,15);
  popMatrix();

}

//Key Calls
public void keyReleased () {

}
  public void settings() {  size           (1000, 700); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Final_Project_in_Processing" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

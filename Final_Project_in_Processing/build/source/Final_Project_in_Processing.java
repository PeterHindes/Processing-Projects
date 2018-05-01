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
  int time = 0;

  //keys            UP     Down   RIGHT  LEFT   SHIFT
  boolean keys[] = {false, false, false, false, false};


//Resources
  //Colors
    int[] msgBx = {0x3a3a4c38, 0xff222e30};
  //External
    //Classes
      dialogueBox db = new dialogueBox();
    //Images
      //PImage martha1;
    //Fonts
      PFont titleFont;
      PFont mesageFont;
    //Sound


//Consistency variables
  //Time
    int timeRequiredWalk = 15000;
    int timeRequiredRun = 15000/2;
  //dialogueBox
    int dialoguePading = 10;
    int dialogueBoxPading = 15;
    int dialogueBoxCornerRadius = 25;
    int dialogueBoxTitlePading = 10;

//Dynamic Consistency variables
  int[] siz;
  int timeRequiredCurrent = timeRequiredWalk;

//System Functions
  public void setup () {
    
    siz = new int[]{1000, 700};

    externalClass.external();

    //Import External Resources
      //Images
        //martha1 = loadImage("martha-1.png");
      //Fonts
        titleFont = createFont("data/Font/Signika-Bold.ttf", 25, true);
        mesageFont = createFont("data/Font/EBGaramond-Regular.ttf", 20, true);
      //Sound

  }

  public void draw () {

    //Run the key handler every few mSeconds
    time += millis();
    if (time > timeRequiredCurrent){
      keyHandler();
      time = 0;
    }

    background(175);

    player();

    db.primary(
      2,
      "GOVERNMENT ANNOUNCEMENT",
      "Those infected by the outbreak CANNOT feel, think or remember any past experiences. "+
      "They are dangerous and MUST be killed ON SIGHT!"
    );
  }


//Custom Functions
/*
  void dialogueBox (int lineCount, String title, String message) {

    //Activate Matrix
    pushMatrix();
    //Allign to bottom with padding
    //translate(0 + dialoguePading ,  siz[1] - (dialoguePading));
    //Allign to bottom without padding
    translate(0 ,  siz[1]);


    //Calculate
    //Height of title and body in seprate vars with their respective fonts
    textFont(mesageFont);
    int bodyHeight  = int(textAscent())*(lineCount+1);
    textFont(titleFont);
    int titleHeight = int(textAscent());
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
  }*/

  public void player() {

    pushMatrix();

    translate(playerPos[0],  siz[1]-floorLevel-playerPos[1]);

    rect(0,0,  15,15);
    popMatrix();

  }


//Keyboard Managment
  //Set Keys
  public void keyPressed() {
    if (key == CODED) {
      switch(keyCode) {
      case UP:
        keys[0] = true;
        break;
      case DOWN:
        keys[1] = true;
        break;
      case RIGHT:
        keys[2] = true;
        break;
      case LEFT:
        keys[3] = true;
        break;
      case SHIFT:
        keys[4] = true;
      }
    }
  }

  //Handle Keys To Actions
  //  Keys            UP     Down   RIGHT  LEFT   SHIFT
  //boolean keys[] = {false, false, false, false, false};
  public void keyHandler() {

    //Shift
    if (keys[4])        {

    } else              {

    }

    //Arrow Keys
    if        (keys[0]) {

    } else if (keys[1]) {

    } else if (keys[2]) {
      playerPos[0]+=5;
    } else if (keys[3]) {
      playerPos[0]-=5;
    }

  }

  //Unset Keys
  public void keyReleased() {
    if (key == CODED)   {
      switch(keyCode)   {
      case UP:
        keys[0] = false;
        break;
      case DOWN:
        keys[1] = false;
        break;
      case RIGHT:
        keys[2] = false;
        break;
      case LEFT:
        keys[3] = false;
        break;
      case SHIFT:
        keys[4] = false;
      }
    }
  }
class dialogueBox {
  public void primary (int lineCount, String title, String message) {

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
}
static class externalClass {

  public static void external() {
    print("Called");
  }

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

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
  int time = 0;
  int[] playerPos = {30,0};
  int floorLevel = 120;
  int dialoguePrimary = 0;
  int dialogueMinor = 0;

  //keys            UP     Down   RIGHT  LEFT   SHIFT  SPACE
  boolean keys[] = {false, false, false, false, false, false};


//Resources
  //External
    //Classes
      dialogue dia = new dialogue();
      dialogueBox db = new dialogueBox();
      keyHandlers kh = new keyHandlers();
    //Images
      //PImage martha1;
    //Fonts
      PFont titleFont;
      PFont mesageFont;
    //Sound
  //Palletes
    //Colors
      int[] msgBx = {0x3a3a4c38, 0xff222e30};
    //Dialogue
      String[][] dialogue = dia.setupDialogue();  //Dialogue setup in external file dialogue.pde
      String[][] titles = dia.setupTitles();


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
    //Open For Discusion Should we move this to the key managment file *****
    time += millis();
    if (time > timeRequiredCurrent && keyPressed){
      kh.repeat();
      time = 0;
    }

    //Render
    background(175);

    player();

    db.primary(2,  titles[dialoguePrimary][dialogueMinor], dialogue[dialoguePrimary][dialogueMinor]);

  }


//Custom Functions
  public void player() {
    pushMatrix();

    translate(playerPos[0],  siz[1]-playerPos[1]);
    rect(0,-floorLevel,  15,15);

    popMatrix();
  }


//Keyboard Managment
  //Set Keys
  public void keyPressed()  { kh.press();   }

  //Handle Key Release
  public void keyReleased() { kh.release(); }
class dialogue {
  public String[][] setupDialogue(){

    return new String[][]
    {
      {
        "Infected individuals CANNOT remember their past or think for themselves. "+
        "They are dangerous and should be killed on sight!"
        ,
        "Am I infected? Oh god, whats that black figure coming twards me?!"
      }
    };

  }
  public String[][] setupTitles(){
    return new String[][]
    {
      {
        "OFFICIAL ANNOUNCEMENT",
        "Martha"
      }
    };
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
    text(message, 0,0, rectRightPaded - dialoguePading*2, siz[1]      - bodyHeight);

    //Title
    textAlign(LEFT, BOTTOM);
    textFont(titleFont);
    text(title, 0,-dialogueBoxTitlePading);

    popMatrix();
  }
}
public class keyHandlers {

  //keys            UP     Down   RIGHT  LEFT   SHIFT  SPACE
  private boolean keys[] = {false, false, false, false, false, false};


  //Handle Keys To Actions
  //  Keys            UP     Down   RIGHT  LEFT   SHIFT
  //boolean keys[] = {false, false, false, false, false};
  public void repeat() {

    //Movement
      //Arrow Keys  UP     Down   RIGHT  LEFT   SHIFT
        if        (keys[0]) {

        } else if (keys[1]) {

        } else if (keys[2]) {
          playerPos[0]+=5;
        } else if (keys[3]) {
          playerPos[0]-=5;
        }
      //Shift
        if (keys[4])        {

        } else              {

        }

  }

  //  Keys            UP     Down   RIGHT  LEFT   SHIFT
  //boolean keys[] = {false, false, false, false, false};
  private void single() {

    //dialogue
      //Space
        if(keys[5]){
          if (dialogueMinor < dialogue[dialoguePrimary].length-1){    //Subtract one to match count to developerCount (start with 0)
            dialogueMinor++;
            print("Minor Up");
          } else if (dialoguePrimary < dialogue.length-1){    //Subtract one to match count to developerCount (start with 0)
            dialoguePrimary++;
            print("Primary Up");
          } else {
            print("All Out\n");
          }
        }

  }


  public void press() {

    //Set Keys
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
          break;
      }
    } else {
      switch(key) {
        case ' ':
          keys[5] = true;
          break;
      }
    }

  }

  public void release() {

    //Run single event actions
      single();

    //Unset Keys
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
            break;
        }
      } else {
        switch(key)      {
          case ' ':
            keys[5] = false;
            break;
        }
      }

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

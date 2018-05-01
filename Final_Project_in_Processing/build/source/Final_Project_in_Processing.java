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


//Resources
  //Colors
    int[] msgBx = {0x3a3a4c38, 0xff222e30};
  //External
    //Images
      //PImage martha1;
      PFont arial;
      PFont arialBold;
    //Sound


//Consistency variables
int dialoguePading = 10;
int dialogueBoxPading = 15;
int dialogueBoxCornerRadius = 25;

//Dynamic Consistency variables
int[] siz;

//Functions
public void setup () {
  
  siz = new int[]{1000, 700};

  //Setup Resources
  arialBold = createFont("Arial-Bold", 22);
  arial = createFont("Arial", 17);
  //martha1 = loadImage("martha-1.png");
}

public void draw () {
  background(175);

  dialogueBox(
    3,
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
  textFont(arial);
  int bodyHeight  = PApplet.parseInt(textAscent())*lineCount;
  textFont(arialBold);
  int titleHeight = PApplet.parseInt(textAscent());
  //body position with all padding verticaly
  int bodyNspacingHeight = bodyHeight          + dialoguePading;
  int titleNspacingHeight = titleHeight        + dialoguePading;

  int rectRightPaded = siz[0] - dialogueBoxPading*2;
  int wholeMessagePadded = bodyHeight+titleHeight*2;


  //Rectangle
  translate(dialogueBoxPading,-dialogueBoxPading);
  fill(msgBx[0]);
  rect(0,0,
    rectRightPaded ,
    -wholeMessagePadded
  );

  //Text
  translate(dialoguePading,-dialoguePading);
  translate(0,-bodyHeight);
  fill(0);
  textAlign(LEFT, TOP);
  text(message, 0,0);

  //Title
  textAlign(LEFT, BOTTOM);
  text(title, 0,0);

  popMatrix();
}

/*void dialogueBox (int lineCount, String title, String message) {

  //Calculate
  //Height of title and body in seprate vars with their respective fonts
  textFont(arial);
  int bodyHeight  = int(textAscent())*lineCount;
  textFont(arialBold);
  int titleHeight = int(textAscent());
  //body position with all padding verticaly
  int bodyNspacingHeight = bodyHeight        + dialoguePading;

  //Draw
  fill(msgBx[0]);
  rect(
    //First point
      //X Axis\/
      dialogueBoxPading  ,
      //Y Axis\/  bottom | padding up from the bottom
                  siz[1] - dialogueBoxPading  ,
    //Second relative point
      //X Axis\/  right side absolute | padding for the right | acomodation for the pading on the left from the first point
                  siz[0]              - dialogueBoxPading     - dialogueBoxPading  ,
      //Y Axis\/
                  -bodyNspacingHeight - titleHeight,
    //Corner radius
      dialogueBoxCornerRadius
  );

  //Title
  //fill(msgBx[1]);
  fill(0);
  textFont(arialBold);
  text(
    title,
    //Position text
      //X Axis\/  left side   |
                  0           + dialoguePading  ,
      //Y Axis\/  bottom side | height of lines   | Padding From The Body | Space Above Body
                  /*siz[1]      - bodyHeight        - dialoguePading siz[1] - bodyNspacingHeight       - 15

  );

  //Message
  textFont(arial);
  text(
    message  ,
    //Position text
      //X Axis\/  left side
                  0           + dialoguePading  ,
      //Y Axis\/  bottom side | height of lines   |    **Subtract means up on the y axis**
        siz[1] - bodyNspacingHeight  ,//          siz[1]      - bodyHeight        - dialoguePading  ,
    //Limit text to screen
      //X Axis\/  right side  | Pading for the right side
                  siz[0]      - dialoguePading*2  ,
      //Y Axis\/  bottom side | height of lines
                  siz[1]      - bodyHeight
  );
}*/

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

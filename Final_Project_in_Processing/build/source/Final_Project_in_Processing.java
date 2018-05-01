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
int dialoguePading = 25;

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
    2,
    "GOVERNMENT ANNOUNCEMENT",
    "Those infected by the outbreak CANNOT feel, think or remember any past experiences. "+
    "They are dangerous and MUST be killed ON SIGHT!"
  );
}

//Custom Functions
public void dialogueBox (int lineCount, String title, String message) {

  //Calculate
  textFont(arial);
  int bodyHeight  = PApplet.parseInt(textAscent())*lineCount;
  textFont(arialBold);
  int titleHeight = PApplet.parseInt(textAscent());

  //Draw
  fill(msgBx[0]);
  rect(15,siz[1]-15,siz[0]-30,-125,25);

  //Title
  //fill(msgBx[1]);
  fill(0);
  textFont(arialBold);
  text(
    title,
    //Position text
      //X Axis\/  left side   |
                  0           + dialoguePading  ,
      //Y Axis\/  bottom side | height of lines  |
                  siz[1]      - bodyHeight       + 5

  );

  //Message
  textFont(arial);
  text(
    message  ,
    //Position text
      //X Axis\/  left side
                  0           + dialoguePading  ,
      //Y Axis\/  bottom side | height of lines   |    **Subtract means up on the y axis**
                  siz[1]      - bodyHeight        - dialoguePading  ,
    //Limit text to screen
      //X Axis\/  right side  | Pading for the right side
                  siz[0]      - dialoguePading*2  ,
      //Y Axis\/  bottom side | height of lines
                  siz[1]      - bodyHeight
  );
}

//Key Calls
public void keyReleased () {

//  if (key == 'd'
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

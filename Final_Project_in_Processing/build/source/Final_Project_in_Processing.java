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


//Resource Variables
//PImage martha1;
PFont arial;
PFont arialBold;


//Consistency variables
int dialoguePading = 25;

//Functions
int[] siz = {1000, 700};
public void setup () {
  

  //background (0);
  background(255);

  //Setup Resources
  arialBold = createFont("Arial-Bold", 22);
  arial = createFont("Arial", 17);
  //martha1 = loadImage("martha-1.png");
}

public void draw () {
  fill(0);

  textFont(arialBold);
  text("GOVERNMENT ANNOUNCEMENT",  /*Position text*/ 0+ dialoguePading, siz[1] -100);

  textFont(arial);
  text("Those infected by the outbreak CANNOT feel, think or remember any past experiences. They are dangerous and MUST be killed ON SIGHT"
    /*Position text*/ ,0+ dialoguePading, siz[1] -75,  /*Limit text to screen*/ siz[0] - dialoguePading*2, siz[1] -75);
}

//Custom Functions
public void dialogueBox () {
  textFont(arialBold);
  text("GOVERNMENT ANNOUNCEMENT",  /*Position text*/ 0+ dialoguePading, siz[1] -100);

  textFont(arial);
  text("Those infected by the outbreak CANNOT feel, think or remember any past experiences. They are dangerous and MUST be killed ON SIGHT"
    /*Position text*/ ,0+ dialoguePading, siz[1] -75,  /*Limit text to screen*/ siz[0] - dialoguePading*2, siz[1] -75);
}

//Key Calls
public void keyReleased () {

//  if (key == 'd'
}

  public void settings() {  size(1000,700); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Final_Project_in_Processing" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

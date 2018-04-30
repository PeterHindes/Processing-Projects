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

public class alphaex extends PApplet {
  public void setup() {

background(0);
noStroke();

// No fourth argument means 100% opacity.
fill(0,0,255);
rect(0,0,100,200);

// 255 means 100% opacity.
fill(255,0,0,255);
rect(0,0,200,40);

// 75% opacity.
fill(255,0,0,191);
rect(0,50,200,40);

// 55% opacity.
fill(255,0,0,127);
rect(0,100,200,40);

// 25% opacity.
fill(255,0,0,63);
rect(0,150,200,40);
    noLoop();
  }

  public void settings() { size(200,200); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "alphaex" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

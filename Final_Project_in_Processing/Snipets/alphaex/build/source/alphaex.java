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
fill(255);
rect(0, 0, 50, 50);  // White rectangle

pushMatrix();
fill(0);
rect(0, 0, 50, 50);  // Black rectangle
translate(30, 20);
popMatrix();

fill(100);
rect(15, 10, 50, 50);  // Gray rectangle
    noLoop();
  }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "alphaex" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

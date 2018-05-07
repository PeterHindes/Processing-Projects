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

public class intAsBoleanTest extends PApplet {

int special = -1;

public void setup() {
  
}

public void draw() {
  fill(0);
  if(special > 0) {
    fill(50,0,0);
  }
  rect(10,10, 20,20);
}

public void keyReleased() {
  if(key == 'a') {
    special = 5;
  }
}
  public void settings() {  size(900,900); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "intAsBoleanTest" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

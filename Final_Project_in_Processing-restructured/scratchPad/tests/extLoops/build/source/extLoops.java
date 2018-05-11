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

public class extLoops extends PApplet {

Ext ext = new Ext();

public void setup() {
  print("Thats A Set\n");
  ext.works();
}

public void draw() {
  ext.draw();
}
class Ext {
  public void draw() {
    rect(5,5, 25,25);
  }
  public void works() {
    print("Works\n");
  }
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "extLoops" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

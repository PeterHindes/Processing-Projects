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
//Refren refrend = new Refren();

public void setup() {
  print("Thats A Set\n");
  ext.works();
  //ext.refrenf.fren();
}
class Ext {
  Refren refren = new Refren();
  public void works() {
    print("Works\n");
    refren.fren;
  }
}
class Refren {
  public void fren() {
    print("Fren\n");
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

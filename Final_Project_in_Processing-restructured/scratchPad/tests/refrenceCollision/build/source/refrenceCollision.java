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

public class refrenceCollision extends PApplet {

Dual dual = new Dual();
Branch branch = new Branch();

public void setup() {
  print("Main File Bois!\n");
  dual.fren();
  branch.fren();
}
class Branch {
  public void fren (){
    print("Your In The Branch\n");
  }
}
class Dual {
  public void fren (){
    print("Your In The Dual\n");
  }
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "refrenceCollision" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

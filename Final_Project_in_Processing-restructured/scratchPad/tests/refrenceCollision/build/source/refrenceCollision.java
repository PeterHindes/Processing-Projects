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


Branch branch = new Branch();
Dual dual = new Dual();
Vars vars = new Vars();

String phat = "Suck it novices\n";
String changeMe = "UberGuber\n";

public void setup() {
  print("Main File Bois!\n");
  print(vars.HP);
  branch.fren();
  dual.fren();
}
class Branch {
  public void fren (){
    print("Your In The Branch\n");
    dual.fren();
  }
}
class Dual {
  public void fren (){
    print("Your In The Dual\n");
    print(phat);
    print(changeMe);
    changeMe = "Sly Dog\n";
    print(vars.HP);
  }
}
class Vars {
  public String HP = "Hackin\n";
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

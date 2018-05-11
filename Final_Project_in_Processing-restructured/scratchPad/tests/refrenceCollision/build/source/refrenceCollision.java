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
  dual.main();
  branch.main();
}
class Branch {
  public void main (){
    print("Your In The Branch\n");
  }
}
class Dual {
  public void main (){
    print("Your In The Dual\n");
  }
}
}

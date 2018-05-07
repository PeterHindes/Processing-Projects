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

public class multiMatrix extends PApplet {

public void setup() {
  

}

public void draw() {
  pushMatrix();
  translate(50,70);
  rect(0,0, 10,10);

  pushMatrix();
  rotate(60);
  rect(0,0, 20,20);
  popMatrix();

  ellipse(50,50, 25,25);
  popMatrix();
}
  public void settings() {  size (700,500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "multiMatrix" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

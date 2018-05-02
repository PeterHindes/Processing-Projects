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

int xey = 10;


public void setup(){
  
}

public void update(){
  xey++;
  print("Ran");
}

public void draw(){
  background(100);
  rect(xey,10, 20,20);
}
  public void settings() {  size(500,300); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "alphaex" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

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

public class button extends PApplet {


int[] rectPos = {25,25};
int[] rectSize = {75,45};

public void setup( ) {
  
  fill(0,255,0);
}

public void draw( ){
  background(45);
  rect(rectPos[0],rectPos[1],  rectSize[0],rectSize[1]);
}

public void mouseReleased() {
  if ( mouseX > rectPos[0] && mouseX < rectPos[0]+rectSize[0]  &&  mouseY>rectPos[1] && mouseY<rectPos[1]+rectSize[1] ) {
    print("Xing");
    fill(255,0,0);
  }
}

public void mousePressed() {
  fill(0,255,0);
}
  public void settings() {  size(1100,900); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "button" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

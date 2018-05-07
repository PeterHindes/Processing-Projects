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

Scenes scenes = new Scenes();
Scenes.One o = scenes.new One();
Scenes.Two t = scenes.new Two();

public void setup(){
  
}

public void draw(){
  o.rect1();
  t.rect1();
}
public class Scenes {

  /*
  void test() {
    print("Yes");
  }

  public void S1() {

  }
  */

  private class One {
    public void rect1() {
      fill(50,255,100);
      rect(50,50,  60,70);
    }
  }

  private class Two {
    public void rect1() {
      fill(255,70,0);
      rect(50,150,  60,70);
    }
  }

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
